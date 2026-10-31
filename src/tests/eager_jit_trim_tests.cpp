// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "runtime/isolation.h"
#include "runtime/module.h"
#include "runtime/runtime.h"
#include "zetaengine.h"

#include <gtest/gtest.h>

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

// Matches tests/wast/multipass/eager_trim.wat (no imports).
constexpr uint32_t kHelperIdx = 0;
constexpr uint32_t kUsedIdx = 1;
constexpr uint32_t kDeadIdx = 2;
constexpr uint32_t kTableTargetIdx = 3;
constexpr uint32_t kIndirectIdx = 4;
constexpr uint32_t kBootIdx = 5;
constexpr uint32_t kNumInternalFuncs = 6;

std::vector<uint8_t> loadTrimWasm() {
  const char *Path = EAGER_TRIM_WASM_PATH;
  std::ifstream In(Path, std::ios::binary);
  EXPECT_TRUE(In) << "failed to open " << Path;
  return std::vector<uint8_t>((std::istreambuf_iterator<char>(In)),
                              std::istreambuf_iterator<char>());
}

std::unique_ptr<Runtime> makeRuntime(bool Trim, bool DisableMT) {
  RuntimeConfig Cfg;
  Cfg.Mode = RunMode::MultipassMode;
#ifdef ZEN_ENABLE_BUILTIN_WASI
  Cfg.DisableWASI = true;
#endif
  Cfg.DisableMultipassMultithread = DisableMT;
  Cfg.NumMultipassThreads = 4;
  Cfg.EnableMultipassEagerTrim = Trim;
  return Runtime::newRuntime(Cfg);
}

const uint8_t *jitPtr(Module &Mod, uint32_t FuncIdx) {
  CodeEntry *CE = Mod.getCodeEntry(FuncIdx);
  EXPECT_NE(CE, nullptr);
  return CE ? CE->JITCodePtr : nullptr;
}

int32_t callI32(Runtime &RT, Instance &Inst, const char *Name, int32_t Arg) {
  std::vector<TypedValue> Results;
  EXPECT_TRUE(RT.callWasmFunction(Inst, Name, {std::to_string(Arg)}, Results))
      << (Inst.hasError() ? Inst.getError().getFormattedMessage() : Name);
  EXPECT_EQ(Results.size(), 1u);
  return Results[0].Value.I32;
}

struct Loaded {
  std::unique_ptr<Runtime> RT;
  Module *Mod = nullptr;
  Instance *Inst = nullptr;
};

Loaded loadAndInstantiate(bool Trim, bool DisableMT) {
  Loaded L;
  auto Bytes = loadTrimWasm();
  EXPECT_FALSE(Bytes.empty());
  L.RT = makeRuntime(Trim, DisableMT);
  EXPECT_NE(L.RT, nullptr);
  auto ModRet = L.RT->loadModule("eager_trim", Bytes.data(), Bytes.size());
  EXPECT_TRUE(ModRet) << ModRet.getError().getFormattedMessage();
  L.Mod = *ModRet;
  Isolation *Iso = L.RT->createManagedIsolation();
  EXPECT_NE(Iso, nullptr);
  auto InstRet = Iso->createInstance(*L.Mod);
  EXPECT_TRUE(InstRet) << InstRet.getError().getFormattedMessage();
  L.Inst = *InstRet;
  return L;
}

} // namespace

TEST(EagerJitTrim, UnusedFunctionNotCompiled) {
  auto L = loadAndInstantiate(/*Trim=*/true, /*DisableMT=*/true);
  ASSERT_NE(L.Mod, nullptr);
  EXPECT_EQ(L.Mod->getNumInternalFunctions(), kNumInternalFuncs);

  EXPECT_NE(jitPtr(*L.Mod, kHelperIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kUsedIdx), nullptr);
  EXPECT_EQ(jitPtr(*L.Mod, kDeadIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kTableTargetIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kIndirectIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kBootIdx), nullptr);
}

TEST(EagerJitTrim, ExportedAndIndirectStillWork) {
  auto L = loadAndInstantiate(/*Trim=*/true, /*DisableMT=*/true);
  ASSERT_NE(L.Inst, nullptr);
  EXPECT_EQ(callI32(*L.RT, *L.Inst, "used", 10), 11);
  EXPECT_EQ(callI32(*L.RT, *L.Inst, "indirect", 10), 17);
}

TEST(EagerJitTrim, DefaultEagerCompilesUnused) {
  auto L = loadAndInstantiate(/*Trim=*/false, /*DisableMT=*/true);
  ASSERT_NE(L.Mod, nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kDeadIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kUsedIdx), nullptr);
  EXPECT_EQ(callI32(*L.RT, *L.Inst, "used", 3), 4);
}

TEST(EagerJitTrim, TrimMultithreadMatchesSinglethread) {
  auto L = loadAndInstantiate(/*Trim=*/true, /*DisableMT=*/false);
  ASSERT_NE(L.Mod, nullptr);
  EXPECT_EQ(jitPtr(*L.Mod, kDeadIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kHelperIdx), nullptr);
  EXPECT_NE(jitPtr(*L.Mod, kTableTargetIdx), nullptr);
  EXPECT_EQ(callI32(*L.RT, *L.Inst, "used", 20), 21);
  EXPECT_EQ(callI32(*L.RT, *L.Inst, "indirect", 1), 8);
}
