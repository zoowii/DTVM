// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/cgir/cg_function.h"
#include "compiler/context.h"
#include "compiler/mir/basic_block.h"
#include "compiler/mir/constants.h"
#include "compiler/mir/function.h"
#include "compiler/mir/instructions.h"
#include "compiler/mir/variable.h"
#include "compiler/target/x86/x86lowering.h"

#include "llvm/Support/raw_ostream.h"

#include <gtest/gtest.h>
#include <string>

using namespace COMPILER;

namespace {

void finishLitmus(MFunction &F) {
#ifdef NDEBUG
  F.detachFromPool();
#else
  (void)F;
#endif
}

std::string dumpCg(const CgFunction &MF) {
  std::string S;
  llvm::raw_string_ostream OS(S);
  MF.print(OS);
  return OS.str();
}

} // namespace

TEST(X86CgLowering, BrIfCmpEmitsDirectJccWithoutSetcc) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  MBasicBlock *Taken = F.createBasicBlock();
  F.appendBlock(Entry);
  F.appendBlock(Taken);

  auto *Param =
      F.createInstruction<COMPILER::DreadInstruction>(false, *Entry, I32, 0);
  auto *Ten = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Entry, I32, *MConstantInt::get(Ctx, *I32, 10));
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::ICMP_SLT, I32, Param, Ten);
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cmp, Taken);
  Entry->addSuccessor(Taken);
  auto *One = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Entry, I32, *MConstantInt::get(Ctx, *I32, 1));
  F.createInstruction<COMPILER::ReturnInstruction>(true, *Entry, I32, One);
  auto *Zero = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Taken, I32, *MConstantInt::get(Ctx, *I32, 0));
  F.createInstruction<COMPILER::ReturnInstruction>(true, *Taken, I32, Zero);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);

  // Snapshot before peephole: the old path emitted SETCC+TEST+JCC, which the
  // peep can also collapse. Direct cmp+jcc must already be present here.
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(Dump.find("SETCCr"), std::string::npos) << Dump;
  EXPECT_EQ(Dump.find("TEST32rr"), std::string::npos) << Dump;
  EXPECT_NE(Dump.find("JCC_1"), std::string::npos) << Dump;
  finishLitmus(F);
}

TEST(X86CgLowering, BrIfOfCmpValueStillUsesSetcc) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  MBasicBlock *Taken = F.createBasicBlock();
  F.appendBlock(Entry);
  F.appendBlock(Taken);

  COMPILER::Variable *Var = F.createVariable(I32);
  auto *Param =
      F.createInstruction<COMPILER::DreadInstruction>(false, *Entry, I32, 0);
  auto *Ten = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Entry, I32, *MConstantInt::get(Ctx, *I32, 10));
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::ICMP_SLT, I32, Param, Ten);
  F.createInstruction<COMPILER::DassignInstruction>(true, *Entry, &Ctx.VoidType,
                                                    Cmp, Var->getVarIdx());
  auto *Cond = F.createInstruction<COMPILER::DreadInstruction>(
      false, *Entry, I32, Var->getVarIdx());
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cond,
                                                 Taken);
  Entry->addSuccessor(Taken);
  auto *One = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Entry, I32, *MConstantInt::get(Ctx, *I32, 1));
  F.createInstruction<COMPILER::ReturnInstruction>(true, *Entry, I32, One);
  auto *Zero = F.createInstruction<COMPILER::ConstantInstruction>(
      false, *Taken, I32, *MConstantInt::get(Ctx, *I32, 0));
  F.createInstruction<COMPILER::ReturnInstruction>(true, *Taken, I32, Zero);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);

  const std::string Dump = dumpCg(MF);
  EXPECT_NE(Dump.find("SETCCr"), std::string::npos) << Dump;
  finishLitmus(F);
}
