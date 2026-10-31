// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/stub/stub_jmp_target.h"
#include "runtime/isolation.h"
#include "runtime/module.h"
#include "runtime/runtime.h"
#include "zetaengine.h"

#include <gtest/gtest.h>

#include <cstdint>
#include <cstring>
#include <fstream>
#include <string>
#include <vector>

using zen::common::RunMode;
using zen::common::TypedValue;
using zen::runtime::CodeEntry;
using zen::runtime::Instance;
using zen::runtime::Isolation;
using zen::runtime::Module;
using zen::runtime::Runtime;
using zen::runtime::RuntimeConfig;

namespace {

std::vector<uint8_t> loadWasmFile(const char *Path) {
  std::ifstream In(Path, std::ios::binary);
  EXPECT_TRUE(In) << "failed to open " << Path;
  return std::vector<uint8_t>((std::istreambuf_iterator<char>(In)),
                              std::istreambuf_iterator<char>());
}

std::vector<uint8_t> loadFibWasm() {
  return loadWasmFile(FIB_ITER_ONEFN_WASM_PATH);
}

std::unique_ptr<Runtime> makeRuntime(bool Lazy, bool DisableGreedyRA,
                                     bool DisableMT) {
  RuntimeConfig Cfg;
  Cfg.Mode = RunMode::MultipassMode;
#ifdef ZEN_ENABLE_BUILTIN_WASI
  Cfg.DisableWASI = true;
#endif
#ifdef ZEN_ENABLE_MULTIPASS_JIT
  Cfg.EnableMultipassLazy = Lazy;
  Cfg.DisableMultipassGreedyRA = DisableGreedyRA;
  Cfg.DisableMultipassMultithread = DisableMT;
  Cfg.NumMultipassThreads = 4;
#endif
  return Runtime::newRuntime(Cfg);
}

int32_t callFib(Runtime &RT, Instance &Inst, int32_t N) {
  std::vector<TypedValue> Results;
  EXPECT_TRUE(RT.callWasmFunction(Inst, "fib", {std::to_string(N)}, Results))
      << (Inst.hasError() ? Inst.getError().getFormattedMessage() : "fib");
  EXPECT_EQ(Results.size(), 1u);
  return Results[0].Value.I32;
}

/// If Ptr is a lazy stub `jmp rel32`, return the compiled body (or nullptr
/// while still on the trampoline). Otherwise treat Ptr as the body.
const uint8_t *resolvedJitBody(const uint8_t *Ptr) {
  if (!Ptr || Ptr[0] != 0xe9) {
    return Ptr;
  }
  if (COMPILER::stub_jmp::loadRel32(Ptr) ==
      COMPILER::stub_jmp::kTrampolineRel32) {
    return nullptr;
  }
  return Ptr + 5 + COMPILER::stub_jmp::loadRel32(Ptr);
}

struct CodeShape {
  uint32_t StackSub = 0;
  uint32_t RbpStores = 0;
};

/// Best-effort scan of a small x86-64 body: `sub $imm, %rsp` and
/// `mov %rN, disp(%rbp)` stores. Used only for relative FastRA vs Greedy
/// comparison on this one-function kernel, not as a full disassembler.
CodeShape scanCodeShape(const uint8_t *P, size_t N) {
  CodeShape S;
  if (!P || N < 4) {
    return S;
  }
  size_t I = 0;
  if (N >= 4 && P[0] == 0xf3 && P[1] == 0x0f && P[2] == 0x1e && P[3] == 0xfa) {
    I = 4;
  }
  while (I + 2 < N) {
    size_t J = I;
    uint8_t B = P[J];
    bool RexW = false;
    if ((B & 0xf0) == 0x40) {
      RexW = (B & 0x08) != 0;
      ++J;
      if (J >= N) {
        break;
      }
      B = P[J];
    }
    if (RexW && B == 0x83 && J + 2 < N && P[J + 1] == 0xec) {
      S.StackSub = P[J + 2];
      I = J + 3;
      continue;
    }
    if (RexW && B == 0x81 && J + 5 < N && P[J + 1] == 0xec) {
      uint32_t Imm = 0;
      std::memcpy(&Imm, P + J + 2, 4);
      S.StackSub = Imm;
      I = J + 6;
      continue;
    }
    if (B == 0x89 && J + 1 < N) {
      uint8_t ModRM = P[J + 1];
      if ((ModRM & 0xc7) == 0x45 && J + 2 < N) {
        ++S.RbpStores;
        I = J + 3;
        continue;
      }
      if ((ModRM & 0xc7) == 0x85 && J + 5 < N) {
        ++S.RbpStores;
        I = J + 6;
        continue;
      }
    }
    if (B == 0xc3) {
      break;
    }
    ++I;
  }
  return S;
}

struct CompiledFib {
  std::unique_ptr<Runtime> RT;
  Module *Mod = nullptr;
  Instance *Inst = nullptr;
  const uint8_t *Body = nullptr;
  CodeShape Shape;
  int32_t Fib10 = 0;
};

CompiledFib compileAndRun(bool Lazy, bool DisableGreedyRA, bool DisableMT) {
  CompiledFib Out;
  auto Bytes = loadFibWasm();
  EXPECT_FALSE(Bytes.empty());
  Out.RT = makeRuntime(Lazy, DisableGreedyRA, DisableMT);
  EXPECT_NE(Out.RT, nullptr);
  auto ModRet = Out.RT->loadModule("fib", Bytes.data(), Bytes.size());
  EXPECT_TRUE(ModRet) << ModRet.getError().getFormattedMessage();
  Out.Mod = *ModRet;
  Isolation *Iso = Out.RT->createManagedIsolation();
  EXPECT_NE(Iso, nullptr);
  auto InstRet = Iso->createInstance(*Out.Mod);
  EXPECT_TRUE(InstRet) << InstRet.getError().getFormattedMessage();
  Out.Inst = *InstRet;
  Out.Fib10 = callFib(*Out.RT, *Out.Inst, 10);
  CodeEntry *CE = Out.Mod->getCodeEntry(0);
  EXPECT_NE(CE, nullptr);
  EXPECT_NE(CE->JITCodePtr, nullptr);
  Out.Body = resolvedJitBody(CE->JITCodePtr);
  EXPECT_NE(Out.Body, nullptr) << "lazy stub still on trampoline";
  Out.Shape = scanCodeShape(Out.Body, 512);
  return Out;
}

} // namespace

TEST(LazyJitGreedyOndemand, FastRASpillsMoreThanGreedyOnFibLoop) {
  CompiledFib Fast = compileAndRun(/*Lazy=*/false, /*DisableGreedyRA=*/true,
                                   /*DisableMT=*/true);
  CompiledFib Greedy = compileAndRun(/*Lazy=*/false, /*DisableGreedyRA=*/false,
                                     /*DisableMT=*/true);
  EXPECT_EQ(Fast.Fib10, 55);
  EXPECT_EQ(Greedy.Fib10, 55);
  EXPECT_GT(Fast.Shape.RbpStores, Greedy.Shape.RbpStores)
      << "FastRA rbp-stores=" << Fast.Shape.RbpStores
      << " Greedy rbp-stores=" << Greedy.Shape.RbpStores
      << " FastRA sub=" << Fast.Shape.StackSub
      << " Greedy sub=" << Greedy.Shape.StackSub;
  EXPECT_GE(Fast.Shape.StackSub, Greedy.Shape.StackSub);
}

TEST(LazyJitGreedyOndemand, LazyMtOneFnMatchesGreedyNotFastRA) {
  CompiledFib Fast = compileAndRun(/*Lazy=*/false, /*DisableGreedyRA=*/true,
                                   /*DisableMT=*/true);
  CompiledFib Greedy = compileAndRun(/*Lazy=*/false, /*DisableGreedyRA=*/false,
                                     /*DisableMT=*/true);
  CompiledFib LazyMT = compileAndRun(/*Lazy=*/true, /*DisableGreedyRA=*/false,
                                     /*DisableMT=*/false);
  EXPECT_EQ(LazyMT.Fib10, 55);
  EXPECT_EQ(LazyMT.Shape.RbpStores, Greedy.Shape.RbpStores)
      << "lazy-MT 1-fn should compile with Greedy, not FastRA; rbp-stores lazy="
      << LazyMT.Shape.RbpStores << " greedy=" << Greedy.Shape.RbpStores
      << " fastra=" << Fast.Shape.RbpStores;
  EXPECT_EQ(LazyMT.Shape.StackSub, Greedy.Shape.StackSub)
      << "lazy-MT 1-fn stack sub lazy=" << LazyMT.Shape.StackSub
      << " greedy=" << Greedy.Shape.StackSub
      << " fastra=" << Fast.Shape.StackSub;
  EXPECT_NE(LazyMT.Shape.RbpStores, Fast.Shape.RbpStores)
      << "litmus is weak if FastRA and Greedy spill counts match";
}

TEST(LazyJitGreedyOndemand, LazyStOneFnStillGreedy) {
  CompiledFib LazyST = compileAndRun(/*Lazy=*/true, /*DisableGreedyRA=*/false,
                                     /*DisableMT=*/true);
  CompiledFib Greedy = compileAndRun(/*Lazy=*/false, /*DisableGreedyRA=*/false,
                                     /*DisableMT=*/true);
  EXPECT_EQ(LazyST.Fib10, 55);
  EXPECT_EQ(LazyST.Shape.RbpStores, Greedy.Shape.RbpStores);
  EXPECT_EQ(LazyST.Shape.StackSub, Greedy.Shape.StackSub);
}
