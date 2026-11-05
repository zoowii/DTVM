// Copyright (C) 2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/cgir/cg_function.h"
#include "compiler/context.h"
#include "compiler/mir/function.h"
#include "compiler/target/x86/x86_mc_lowering.h"
#include "llvm/Object/ObjectFile.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/MemoryBufferRef.h"
#include <gtest/gtest.h>
#include <string>
#include <vector>

using namespace COMPILER;
using namespace llvm;

namespace {
void emitReturn(CompileContext &Ctx, uint32_t Index, uint32_t Value,
                unsigned Padding = 0) {
  MFunction F(Ctx, Index);
  F.setFunctionType(MFunctionType::create(Ctx, Ctx.I32Type, {}));
  {
    CgFunction CG(Ctx, F);
    auto *BB = CG.createCgBasicBlock();
    CG.appendCgBasicBlock(BB);
    SmallVector<CgOperand, 2> Move{CgOperand::createRegOperand(X86::EAX, true),
                                   CgOperand::createImmOperand(Value)};
    for (unsigned I = 0; I <= Padding; ++I) {
      CG.createCgInstruction(*BB, CG.getTargetInstrInfo().get(X86::MOV32ri),
                             Move);
    }
    SmallVector<CgOperand, 1> Empty;
    CG.createCgInstruction(*BB, CG.getTargetInstrInfo().get(X86::RET64), Empty);
    Ctx.getMCLowering().runOnCgFunction(CG);
  }
#ifdef NDEBUG
  F.detachFromPool();
#endif
}

struct ObjectSnapshot {
  std::string Text;
  std::vector<std::string> Functions;
};

ObjectSnapshot snapshot(CompileContext &Ctx) {
  auto &Buffer = Ctx.getObjBuffer();
  auto Obj = object::ObjectFile::createObjectFile(
      MemoryBufferRef(StringRef(Buffer.data(), Buffer.size()), "mc-reuse"));
  if (!Obj) {
    ADD_FAILURE() << toString(Obj.takeError());
    return {};
  }
  ObjectSnapshot Out;
  for (const auto &Section : (*Obj)->sections()) {
    if (!Section.isText()) {
      continue;
    }
    auto Contents = Section.getContents();
    if (!Contents) {
      ADD_FAILURE() << toString(Contents.takeError());
      return {};
    }
    Out.Text = Contents->str();
  }
  for (const auto &Symbol : (*Obj)->symbols()) {
    auto Type = Symbol.getType();
    if (!Type) {
      ADD_FAILURE() << toString(Type.takeError());
      return {};
    }
    if (*Type != object::SymbolRef::ST_Function) {
      continue;
    }
    auto Name = Symbol.getName();
    if (!Name) {
      ADD_FAILURE() << toString(Name.takeError());
      return {};
    }
    Out.Functions.push_back(Name->str());
  }
  return Out;
}
} // namespace

TEST(MCContextReuse, RepeatedObjectsHaveFreshSymbolsAndText) {
  CompileContext Ctx;
  Ctx.Lazy = true;
  Ctx.initialize();
  auto *InitialContext = &Ctx.getMCContext();
  auto *InitialLowering = &Ctx.getMCLowering();
  for (uint32_t I = 0; I < 100; ++I) {
    SCOPED_TRACE(I);
    if (I != 0) {
      Ctx.reinitialize();
    }
    EXPECT_EQ(&Ctx.getMCContext(), InitialContext);
    EXPECT_EQ(&Ctx.getMCLowering(), InitialLowering);
    const uint32_t Value = I * 19 + 7;
    emitReturn(Ctx, I, Value);
    Ctx.finalize();
    auto Result = snapshot(Ctx);
    EXPECT_EQ(Result.Functions,
              std::vector<std::string>{"function_" + std::to_string(I)});
    const char Expected[] = {char(0xb8),        char(Value),
                             char(Value >> 8),  char(Value >> 16),
                             char(Value >> 24), char(0xc3)};
    EXPECT_EQ(Result.Text, std::string(Expected, sizeof(Expected)));
    Ctx.CodeSize = Result.Text.size();
    Ctx.getObjBuffer().clear();
  }
}

TEST(MCContextReuse, DiscardsAnUnfinishedObjectBeforeResettingContext) {
  CompileContext Ctx;
  Ctx.Lazy = true;
  Ctx.initialize();
  emitReturn(Ctx, 999, 42);
  Ctx.getOrCreateMCSymbol("abandoned_symbol");
  ASSERT_TRUE(Ctx.getObjBuffer().empty());
  // Simulate a compile failure after MC emission but before object
  // finalization.
  Ctx.reinitialize();
  EXPECT_EQ(Ctx.getMCContext().lookupSymbol("abandoned_symbol"), nullptr);
  EXPECT_EQ(Ctx.getMCContext().lookupSymbol("function_999"), nullptr);
  emitReturn(Ctx, 1, 17);
  Ctx.finalize();
  auto Result = snapshot(Ctx);
  EXPECT_EQ(Result.Functions, std::vector<std::string>{"function_1"});
  EXPECT_EQ(Result.Text, std::string("\xb8\x11\x00\x00\x00\xc3", 6));
}

TEST(MCContextReuse, RebuildsAfterALargeObjectAndReturnsToSmallObjectReuse) {
  CompileContext Ctx;
  Ctx.Lazy = true;
  Ctx.initialize();
  auto *LargeContext = &Ctx.getMCContext();
  emitReturn(Ctx, 0, 9, 17000);
  Ctx.finalize();
  auto Large = snapshot(Ctx);
  ASSERT_GT(Large.Text.size(), 64u * 1024);
  Ctx.CodeSize = Large.Text.size();
  Ctx.getObjBuffer().clear();
  Ctx.reinitialize();
  EXPECT_NE(&Ctx.getMCContext(), LargeContext);
  auto *SmallContext = &Ctx.getMCContext();
  emitReturn(Ctx, 1, 17);
  Ctx.finalize();
  auto Small = snapshot(Ctx);
  EXPECT_EQ(Small.Functions, std::vector<std::string>{"function_1"});
  EXPECT_EQ(Small.Text, std::string("\xb8\x11\x00\x00\x00\xc3", 6));
  Ctx.CodeSize = Small.Text.size();
  Ctx.getObjBuffer().clear();
  Ctx.reinitialize();
  EXPECT_EQ(&Ctx.getMCContext(), SmallContext);
  EXPECT_EQ(Ctx.getMCContext().lookupSymbol("function_0"), nullptr);
}
