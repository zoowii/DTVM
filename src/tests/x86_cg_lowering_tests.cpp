// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/cgir/cg_function.h"
#include "compiler/context.h"
#include "compiler/mir/basic_block.h"
#include "compiler/mir/constants.h"
#include "compiler/mir/function.h"
#include "compiler/mir/instructions.h"
#include "compiler/mir/variable.h"
#include "compiler/target/x86/x86_cg_peephole.h"
#include "compiler/target/x86/x86lowering.h"

#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/TargetOpcodes.h"
#include "llvm/Support/raw_ostream.h"

#include <gtest/gtest.h>
#include <string>
#include <utility>
#include <vector>

using namespace COMPILER;
using namespace llvm;

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

struct Jcc {
  unsigned CC;
  unsigned Target;
};

std::vector<Jcc> collectJcc(const CgFunction &MF) {
  std::vector<Jcc> Out;
  for (CgBasicBlock *BB : MF) {
    for (auto &MI : *BB) {
      if (MI.getOpcode() == X86::JCC_1) {
        Out.push_back({static_cast<unsigned>(MI.getOperand(1).getImm()),
                       MI.getOperand(0).getMBB()->getNumber()});
      }
    }
  }
  return Out;
}

unsigned countOpcode(const CgFunction &MF, unsigned Opc) {
  unsigned N = 0;
  for (CgBasicBlock *BB : MF) {
    for (auto &MI : *BB) {
      if (MI.getOpcode() == Opc) {
        ++N;
      }
    }
  }
  return N;
}

MInstruction *makeInt(MFunction &F, MBasicBlock &BB, MType *Ty, uint64_t V) {
  return F.createInstruction<COMPILER::ConstantInstruction>(
      false, BB, Ty, *MConstantInt::get(F.getContext(), *Ty, V));
}

MInstruction *makeFP(MFunction &F, MBasicBlock &BB, MType *Ty,
                     const APFloat &V) {
  return F.createInstruction<COMPILER::ConstantInstruction>(
      false, BB, Ty, *MConstantFloat::get(F.getContext(), *Ty, V));
}

void retImm(MFunction &F, MBasicBlock &BB, MType *Ty, uint64_t V) {
  F.createInstruction<COMPILER::ReturnInstruction>(true, BB, Ty,
                                                   makeInt(F, BB, Ty, V));
}

// br_if cmp, Taken  (no false block). After lowering the JCC target is the
// Taken CgBB, typically numbered 2 because startNewBlockAfterBranch inserts
// a fallthrough block as 1.
void lowerDirectBrIf(MFunction &F, MType *RetTy, CmpInstruction::Predicate Pred,
                     MInstruction *LHS, MInstruction *RHS, MBasicBlock *Entry,
                     MBasicBlock *Taken) {
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(false, *Entry, Pred,
                                                            RetTy, LHS, RHS);
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, F.getContext(),
                                                 Cmp, Taken);
  Entry->addSuccessor(Taken);
  retImm(F, *Entry, RetTy, 1);
  retImm(F, *Taken, RetTy, 0);
}

void expectOneJcc(const CgFunction &MF, unsigned CC, unsigned Target,
                  const std::string &Dump) {
  const auto Jccs = collectJcc(MF);
  ASSERT_EQ(Jccs.size(), 1u) << Dump;
  EXPECT_EQ(Jccs[0].CC, CC) << Dump;
  EXPECT_EQ(Jccs[0].Target, Target) << Dump;
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
  lowerDirectBrIf(F, I32, CmpInstruction::ICMP_SLT, Param,
                  makeInt(F, *Entry, I32, 10), Entry, Taken);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);

  // Snapshot before peephole: the old path emitted SETCC+TEST+JCC, which the
  // peep can also collapse. Direct cmp+jcc must already be present here.
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::TEST32rr), 0u) << Dump;
  expectOneJcc(MF, X86::COND_L, /*Taken after fallthrough*/ 2, Dump);
  finishLitmus(F);
}

TEST(X86CgLowering, DirectJccSignedUnsignedI32I64Boundaries) {
  struct Case {
    bool I64;
    CmpInstruction::Predicate Pred;
    uint64_t RHS;
    unsigned CC;
  };
  const Case Cases[] = {
      {false, CmpInstruction::ICMP_SLT, 0, X86::COND_L},
      {false, CmpInstruction::ICMP_SLT, 0x80000000ull, X86::COND_L},
      {false, CmpInstruction::ICMP_ULT, 0x80000000ull, X86::COND_B},
      {false, CmpInstruction::ICMP_SGT, static_cast<uint64_t>(-1), X86::COND_G},
      {false, CmpInstruction::ICMP_UGT, static_cast<uint64_t>(-1), X86::COND_A},
      {true, CmpInstruction::ICMP_SLT, 0, X86::COND_L},
      {true, CmpInstruction::ICMP_SLT, 0x8000000000000000ull, X86::COND_L},
      {true, CmpInstruction::ICMP_ULT, 0x8000000000000000ull, X86::COND_B},
      {true, CmpInstruction::ICMP_SGE, static_cast<uint64_t>(-1), X86::COND_GE},
      {true, CmpInstruction::ICMP_UGE, static_cast<uint64_t>(-1), X86::COND_AE},
  };
  for (const Case &C : Cases) {
    CompileContext Ctx;
    Ctx.initialize();
    MType *RetTy = &CompileContext::I32Type;
    MType *CmpTy = C.I64 ? &CompileContext::I64Type : &CompileContext::I32Type;
    MFunction F(Ctx, 0);
    F.setFunctionType(MFunctionType::create(Ctx, *RetTy, {CmpTy}));
    MBasicBlock *Entry = F.createBasicBlock();
    MBasicBlock *Taken = F.createBasicBlock();
    F.appendBlock(Entry);
    F.appendBlock(Taken);

    auto *Param = F.createInstruction<COMPILER::DreadInstruction>(false, *Entry,
                                                                  CmpTy, 0);
    lowerDirectBrIf(F, RetTy, C.Pred, Param, makeInt(F, *Entry, CmpTy, C.RHS),
                    Entry, Taken);

    CgFunction MF(Ctx, F);
    X86CgLowering Lowering(MF);
    const std::string Dump = dumpCg(MF);
    EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
    expectOneJcc(MF, C.CC, 2, Dump);
    finishLitmus(F);
  }
}

TEST(X86CgLowering, BrIfOfCachedCmpUsesSetcc) {
  // dassign of the same CmpInstruction runs first and fills _expr_reg_map;
  // the later br_if must take the boolean TEST+JCC path.
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
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::ICMP_SLT, I32, Param,
      makeInt(F, *Entry, I32, 10));
  F.createInstruction<COMPILER::DassignInstruction>(true, *Entry, &Ctx.VoidType,
                                                    Cmp, Var->getVarIdx());
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cmp, Taken);
  Entry->addSuccessor(Taken);
  retImm(F, *Entry, I32, 1);
  retImm(F, *Taken, I32, 0);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);

  const std::string Dump = dumpCg(MF);
  EXPECT_GE(countOpcode(MF, X86::SETCCr), 1u) << Dump;
  EXPECT_GE(countOpcode(MF, X86::TEST32rr) + countOpcode(MF, X86::TEST8rr), 1u)
      << Dump;
  expectOneJcc(MF, X86::COND_NE, 2, Dump);
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
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::ICMP_SLT, I32, Param,
      makeInt(F, *Entry, I32, 10));
  F.createInstruction<COMPILER::DassignInstruction>(true, *Entry, &Ctx.VoidType,
                                                    Cmp, Var->getVarIdx());
  auto *Cond = F.createInstruction<COMPILER::DreadInstruction>(
      false, *Entry, I32, Var->getVarIdx());
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cond,
                                                 Taken);
  Entry->addSuccessor(Taken);
  retImm(F, *Entry, I32, 1);
  retImm(F, *Taken, I32, 0);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);

  const std::string Dump = dumpCg(MF);
  EXPECT_GE(countOpcode(MF, X86::SETCCr), 1u) << Dump;
  finishLitmus(F);
}

TEST(X86CgLowering, ShortDiamondInvertsCCToFalseEdge) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  MBasicBlock *TrueBB = F.createBasicBlock();
  MBasicBlock *FalseBB = F.createBasicBlock();
  F.appendBlock(Entry);
  F.appendBlock(TrueBB);
  F.appendBlock(FalseBB);

  auto *Param =
      F.createInstruction<COMPILER::DreadInstruction>(false, *Entry, I32, 0);
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::ICMP_SLT, I32, Param,
      makeInt(F, *Entry, I32, 0));
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cmp, TrueBB,
                                                 FalseBB);
  Entry->addSuccessor(TrueBB);
  Entry->addSuccessor(FalseBB);
  F.createInstruction<COMPILER::BrInstruction>(true, *TrueBB, Ctx, FalseBB);
  TrueBB->addSuccessor(FalseBB);
  retImm(F, *FalseBB, I32, 0);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
  expectOneJcc(MF, X86::COND_GE, /*FalseBB*/ 2, Dump);
  finishLitmus(F);
}

TEST(X86CgLowering, FpDirectJccNanInfSignedZero) {
  struct Case {
    CmpInstruction::Predicate Pred;
    APFloat RHS;
    unsigned CC;
  };
  const fltSemantics &Dbl = APFloat::IEEEdouble();
  const fltSemantics &Flt = APFloat::IEEEsingle();
  const Case Cases[] = {
      {CmpInstruction::FCMP_OGT, APFloat::getNaN(Dbl), X86::COND_A},
      {CmpInstruction::FCMP_OLT, APFloat::getNaN(Dbl), X86::COND_A},
      {CmpInstruction::FCMP_OGT, APFloat::getInf(Dbl), X86::COND_A},
      {CmpInstruction::FCMP_OGT, APFloat::getInf(Dbl, true), X86::COND_A},
      {CmpInstruction::FCMP_OGT, APFloat::getZero(Dbl, true), X86::COND_A},
      {CmpInstruction::FCMP_UNO, APFloat::getNaN(Dbl), X86::COND_P},
      {CmpInstruction::FCMP_ORD, APFloat::getZero(Dbl), X86::COND_NP},
  };
  for (int Width = 0; Width < 2; ++Width) {
    MType *FPTy = Width ? &CompileContext::F32Type : &CompileContext::F64Type;
    const fltSemantics &Sem = Width ? Flt : Dbl;
    for (const Case &C : Cases) {
      CompileContext Ctx;
      Ctx.initialize();
      MType *I32 = &CompileContext::I32Type;
      MFunction F(Ctx, 0);
      F.setFunctionType(MFunctionType::create(Ctx, *I32, {FPTy}));
      MBasicBlock *Entry = F.createBasicBlock();
      MBasicBlock *Taken = F.createBasicBlock();
      F.appendBlock(Entry);
      F.appendBlock(Taken);

      APFloat RHS = C.RHS;
      if (&C.RHS.getSemantics() != &Sem) {
        bool Unused = false;
        RHS.convert(Sem, APFloat::rmNearestTiesToEven, &Unused);
      }
      auto *Param = F.createInstruction<COMPILER::DreadInstruction>(
          false, *Entry, FPTy, 0);
      lowerDirectBrIf(F, I32, C.Pred, Param, makeFP(F, *Entry, FPTy, RHS),
                      Entry, Taken);

      CgFunction MF(Ctx, F);
      X86CgLowering Lowering(MF);
      const std::string Dump = dumpCg(MF);
      EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
      expectOneJcc(MF, C.CC, 2, Dump);
      finishLitmus(F);
    }
  }
}

TEST(X86CgLowering, FpShortDiamondInvertsFalseEdge) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MType *F64 = &CompileContext::F64Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {F64}));
  MBasicBlock *Entry = F.createBasicBlock();
  MBasicBlock *TrueBB = F.createBasicBlock();
  MBasicBlock *FalseBB = F.createBasicBlock();
  F.appendBlock(Entry);
  F.appendBlock(TrueBB);
  F.appendBlock(FalseBB);

  auto *Param =
      F.createInstruction<COMPILER::DreadInstruction>(false, *Entry, F64, 0);
  auto *Nan = makeFP(F, *Entry, F64, APFloat::getNaN(APFloat::IEEEdouble()));
  auto *Cmp = F.createInstruction<COMPILER::CmpInstruction>(
      false, *Entry, CmpInstruction::FCMP_OGT, I32, Param, Nan);
  F.createInstruction<COMPILER::BrIfInstruction>(true, *Entry, Ctx, Cmp, TrueBB,
                                                 FalseBB);
  Entry->addSuccessor(TrueBB);
  Entry->addSuccessor(FalseBB);
  F.createInstruction<COMPILER::BrInstruction>(true, *TrueBB, Ctx, FalseBB);
  TrueBB->addSuccessor(FalseBB);
  retImm(F, *FalseBB, I32, 0);

  CgFunction MF(Ctx, F);
  X86CgLowering Lowering(MF);
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
  expectOneJcc(MF, X86::COND_BE, 2, Dump);
  finishLitmus(F);
}

TEST(X86CgLowering, FcmpOeqUneStayOnTwoTestFallback) {
  for (auto Pred : {CmpInstruction::FCMP_OEQ, CmpInstruction::FCMP_UNE}) {
    CompileContext Ctx;
    Ctx.initialize();
    MType *I32 = &CompileContext::I32Type;
    MType *F64 = &CompileContext::F64Type;
    MFunction F(Ctx, 0);
    F.setFunctionType(MFunctionType::create(Ctx, *I32, {F64}));
    MBasicBlock *Entry = F.createBasicBlock();
    MBasicBlock *Taken = F.createBasicBlock();
    F.appendBlock(Entry);
    F.appendBlock(Taken);

    auto *Param =
        F.createInstruction<COMPILER::DreadInstruction>(false, *Entry, F64, 0);
    lowerDirectBrIf(
        F, I32, Pred, Param,
        makeFP(F, *Entry, F64, APFloat::getNaN(APFloat::IEEEdouble())), Entry,
        Taken);

    CgFunction MF(Ctx, F);
    X86CgLowering Lowering(MF);
    const std::string Dump = dumpCg(MF);
    EXPECT_GE(countOpcode(MF, X86::SETCCr), 2u) << Dump;
    EXPECT_GE(countOpcode(MF, X86::TEST32rr) + countOpcode(MF, X86::TEST8rr) +
                  countOpcode(MF, X86::AND8rr) + countOpcode(MF, X86::OR8rr),
              1u)
        << Dump;
    expectOneJcc(MF, X86::COND_NE, 2, Dump);
    finishLitmus(F);
  }
}

namespace {

void buildSetccTestJe(CgFunction &MF, CgBasicBlock &BB, CgBasicBlock &Dest,
                      bool WithMovzx, bool ExtraSetccUse) {
  auto &MRI = MF.getRegInfo();
  const auto &TII = MF.getTargetInstrInfo();
  CgRegister LHS = MRI.createVirtualRegister(&X86::GR32RegClass);
  CgRegister RHS = MRI.createVirtualRegister(&X86::GR32RegClass);
  CgRegister Setcc = MRI.createVirtualRegister(&X86::GR8RegClass);
  CgRegister Wide = MRI.createVirtualRegister(&X86::GR32RegClass);
  CgRegister Extra = MRI.createVirtualRegister(&X86::GR8RegClass);

  SmallVector<CgOperand, 2> CmpOps{
      CgOperand::createRegOperand(LHS, false),
      CgOperand::createRegOperand(RHS, false),
  };
  MF.createCgInstruction(BB, TII.get(X86::CMP32rr), CmpOps);

  SmallVector<CgOperand, 2> SetOps{
      CgOperand::createRegOperand(Setcc, true),
      CgOperand::createImmOperand(X86::COND_L),
  };
  MF.createCgInstruction(BB, TII.get(X86::SETCCr), SetOps);

  CgRegister TestReg = Setcc;
  unsigned TestOpc = X86::TEST8rr;
  if (WithMovzx) {
    MF.createCgInstruction(BB, TII.get(X86::MOVZX32rr8), Setcc, Wide);
    TestReg = Wide;
    TestOpc = X86::TEST32rr;
  }
  if (ExtraSetccUse) {
    MF.createCgInstruction(BB, TII.get(TargetOpcode::COPY), Setcc, Extra);
  }

  SmallVector<CgOperand, 2> TestOps{
      CgOperand::createRegOperand(TestReg, false),
      CgOperand::createRegOperand(TestReg, false),
  };
  MF.createCgInstruction(BB, TII.get(TestOpc), TestOps);

  SmallVector<CgOperand, 2> JccOps{
      CgOperand::createMBB(&Dest),
      CgOperand::createImmOperand(X86::COND_E),
  };
  MF.createCgInstruction(BB, TII.get(X86::JCC_1), JccOps);
}

} // namespace

TEST(X86CgPeephole, OptimizeCmpSetccMovzxTestJe) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  F.appendBlock(Entry);
  retImm(F, *Entry, I32, 0);

  CgFunction MF(Ctx, F);
  CgBasicBlock *BB0 = MF.createCgBasicBlock();
  CgBasicBlock *BB1 = MF.createCgBasicBlock();
  MF.appendCgBasicBlock(BB0);
  MF.appendCgBasicBlock(BB1);
  buildSetccTestJe(MF, *BB0, *BB1, /*WithMovzx=*/true, /*ExtraSetccUse=*/false);

  X86CgPeephole Peep(MF);
  (void)Peep;
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::MOVZX32rr8), 0u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::TEST32rr), 0u) << Dump;
  expectOneJcc(MF, X86::COND_GE, 1, Dump);
  finishLitmus(F);
}

TEST(X86CgPeephole, OptimizeCmpSetccTestJe) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  F.appendBlock(Entry);
  retImm(F, *Entry, I32, 0);

  CgFunction MF(Ctx, F);
  CgBasicBlock *BB0 = MF.createCgBasicBlock();
  CgBasicBlock *BB1 = MF.createCgBasicBlock();
  MF.appendCgBasicBlock(BB0);
  MF.appendCgBasicBlock(BB1);
  buildSetccTestJe(MF, *BB0, *BB1, /*WithMovzx=*/false,
                   /*ExtraSetccUse=*/false);

  X86CgPeephole Peep(MF);
  (void)Peep;
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 0u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::TEST8rr), 0u) << Dump;
  expectOneJcc(MF, X86::COND_GE, 1, Dump);
  finishLitmus(F);
}

TEST(X86CgPeephole, OptimizeCmpKeepsLiveBooleanConsumer) {
  CompileContext Ctx;
  Ctx.initialize();
  MType *I32 = &CompileContext::I32Type;
  MFunction F(Ctx, 0);
  F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32}));
  MBasicBlock *Entry = F.createBasicBlock();
  F.appendBlock(Entry);
  retImm(F, *Entry, I32, 0);

  CgFunction MF(Ctx, F);
  CgBasicBlock *BB0 = MF.createCgBasicBlock();
  CgBasicBlock *BB1 = MF.createCgBasicBlock();
  MF.appendCgBasicBlock(BB0);
  MF.appendCgBasicBlock(BB1);
  buildSetccTestJe(MF, *BB0, *BB1, /*WithMovzx=*/true, /*ExtraSetccUse=*/true);

  X86CgPeephole Peep(MF);
  (void)Peep;
  const std::string Dump = dumpCg(MF);
  EXPECT_EQ(countOpcode(MF, X86::SETCCr), 1u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::MOVZX32rr8), 1u) << Dump;
  EXPECT_EQ(countOpcode(MF, X86::TEST32rr), 1u) << Dump;
  expectOneJcc(MF, X86::COND_E, 1, Dump);
  finishLitmus(F);
}
