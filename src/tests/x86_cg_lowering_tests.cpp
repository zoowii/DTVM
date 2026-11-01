// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/cgir/cg_basic_block.h"
#include "compiler/cgir/cg_function.h"
#include "compiler/context.h"
#include "compiler/mir/basic_block.h"
#include "compiler/mir/constants.h"
#include "compiler/mir/function.h"
#include "compiler/mir/instructions.h"
#include "compiler/target/x86/x86lowering.h"

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

// Opcode names only. Full CgFunction::print walks operand arrays that
// share the LLVM bump slab with MIR and trip ASan red zones in
// Release+ASan litmus tests (mirPeepholeTests on DTVMStack #631).
std::string dumpCg(const CgFunction &MF) {
  std::string S;
  const auto &TII = MF.getTargetInstrInfo();
  for (const CgBasicBlock *BB : MF) {
    for (const CgInstruction &I : *BB) {
      S += TII.getName(I.getOpcode()).str();
      S += '\n';
    }
  }
  return S;
}

struct LoweringFixture {
  CompileContext Ctx;
  MType *I32;
  MType *I64;
  MFunction F;
  MBasicBlock *Entry;

  LoweringFixture()
      : I32(&CompileContext::I32Type), I64(&CompileContext::I64Type), F(Ctx, 0),
        Entry(F.createBasicBlock()) {
    Ctx.initialize();
    F.setFunctionType(MFunctionType::create(Ctx, *I32, {I32, I64}));
    F.appendBlock(Entry);
  }

  ~LoweringFixture() { finishLitmus(F); }

  MInstruction *paramI32() {
    return F.createInstruction<DreadInstruction>(false, *Entry, I32, 0);
  }
  MInstruction *paramI64() {
    return F.createInstruction<DreadInstruction>(false, *Entry, I64, 1);
  }
  MInstruction *iconst32(uint64_t V) {
    return F.createInstruction<ConstantInstruction>(
        false, *Entry, I32, *MConstantInt::get(Ctx, *I32, V));
  }
  MInstruction *iconst64(uint64_t V) {
    return F.createInstruction<ConstantInstruction>(
        false, *Entry, I64, *MConstantInt::get(Ctx, *I64, V));
  }

  std::string lowerRet(MInstruction *V) {
    F.createInstruction<ReturnInstruction>(true, *Entry, V->getType(), V);
    std::string Dump;
    {
      CgFunction MF(Ctx, F);
      X86CgLowering Lowering(MF);
      Dump = dumpCg(MF);
    }
    return Dump;
  }
};

} // namespace

TEST(X86CgLowering, AddImmI32EmitsLEA64_32r) {
  LoweringFixture B;
  auto *Add = B.F.createInstruction<BinaryInstruction>(
      false, *B.Entry, OP_add, B.I32, B.paramI32(), B.iconst32(10408));
  const std::string Dump = B.lowerRet(Add);
  EXPECT_NE(Dump.find("LEA64_32r"), std::string::npos) << Dump;
  EXPECT_EQ(Dump.find("ADD32ri"), std::string::npos) << Dump;
}

TEST(X86CgLowering, AddImmI64StaysAddNotLEA) {
  // LEA does not write CF; i64 add-imm must stay ADD for EVM ADC chains.
  LoweringFixture B;
  auto *Add = B.F.createInstruction<BinaryInstruction>(
      false, *B.Entry, OP_add, B.I64, B.paramI64(), B.iconst64(10408));
  const std::string Dump = B.lowerRet(Add);
  EXPECT_EQ(Dump.find("LEA64r"), std::string::npos) << Dump;
}

TEST(X86CgLowering, SubImmI32EmitsLEA64_32r) {
  LoweringFixture B;
  auto *Sub = B.F.createInstruction<BinaryInstruction>(
      false, *B.Entry, OP_sub, B.I32, B.paramI32(), B.iconst32(8));
  const std::string Dump = B.lowerRet(Sub);
  EXPECT_NE(Dump.find("LEA64_32r"), std::string::npos) << Dump;
}

TEST(X86CgLowering, WrapAddImmStillLEANotDispFold) {
  // 0xfffffff0 + 0x10 wraps to 0 as i32. LEA64_32r preserves wrap;
  // folding into a 64-bit load disp would not.
  LoweringFixture B;
  auto *Add = B.F.createInstruction<BinaryInstruction>(
      false, *B.Entry, OP_add, B.I32, B.paramI32(), B.iconst32(0x10));
  const std::string Dump = B.lowerRet(Add);
  EXPECT_NE(Dump.find("LEA64_32r"), std::string::npos) << Dump;
}

TEST(X86CgLowering, I64AddImmTooWideStaysAdd) {
  LoweringFixture B;
  auto *Add = B.F.createInstruction<BinaryInstruction>(
      false, *B.Entry, OP_add, B.I64, B.paramI64(), B.iconst64(0x100000000ull));
  const std::string Dump = B.lowerRet(Add);
  EXPECT_EQ(Dump.find("LEA64r"), std::string::npos) << Dump;
}
