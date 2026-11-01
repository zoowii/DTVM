// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
#pragma once

#include "compiler/mir/function.h"
#include "compiler/mir/instructions.h"
#include "llvm/ADT/APInt.h"

namespace COMPILER {

/// Local algebraic / terminator peepholes on dMIR trees (Wasmtime-inspired).
/// Function-local, deterministic, no shared mutable state.
class MIRPeephole {
public:
  void runOnMFunction(MFunction &F);

private:
  MFunction *F = nullptr;
  MBasicBlock *CurBB = nullptr;
  MInstruction *CurStmt = nullptr;

  void rewriteBlock(MBasicBlock &BB);
  MInstruction *rewriteExpr(MInstruction *Inst);
  MInstruction *foldExpr(MInstruction *Inst);

  MInstruction *foldBitCountEqZero(MInstruction *Inst);
  MInstruction *foldSelectICmp(MInstruction *Inst);
  MInstruction *foldAlgebra(MInstruction *Inst);
  MInstruction *foldConstCmp(MInstruction *Inst);
  MInstruction *foldSelectConstCond(MInstruction *Inst);
  bool foldConstBrIf(MBasicBlock &BB, BrIfInstruction &BrIf);

  MInstruction *makeIntConst(MType *Ty, uint64_t Val);
  MInstruction *makeICmp(CmpInstruction::Predicate Pred, MType *Ty,
                         MInstruction *LHS, MInstruction *RHS);
  MInstruction *makeAnd(MType *Ty, MInstruction *LHS, MInstruction *RHS);
  MInstruction *makeUShr(MType *Ty, MInstruction *LHS, MInstruction *RHS);

  bool matchIntConst(const MInstruction *Inst, llvm::APInt &Val) const;
  // Same-block dassign of a ConstantInstruction through dread. Used only
  // for udiv/urem strength reduction so wasm handleIDiv temps peep.
  // Not wired into isIntZero/foldConstBrIf: those must not rewrite
  // signed-overflow or stack-check CFG from a recovered temp.
  bool matchAssignedIntConst(const MInstruction *Inst, llvm::APInt &Val) const;
  bool isIntZero(const MInstruction *Inst) const;
  bool isIntOne(const MInstruction *Inst) const;
  bool isIntAllOnes(const MInstruction *Inst) const;
  static bool evalICmp(CmpInstruction::Predicate Pred, const llvm::APInt &LHS,
                       const llvm::APInt &RHS);
  // Loads / calls / wasm-checks are expressions; discarding them can
  // drop gas, bounds, or instance accesses. Only discard proven-pure trees.
  static bool isPureExpr(const MInstruction *Inst);
  // isPureExpr does not reject integer div/rem (they trap on 0 / overflow).
  static bool exprMayTrap(const MInstruction *Inst);
  static bool isNontrappingPureExpr(const MInstruction *Inst);
  static void removeEdgeAndPhiIncomings(MBasicBlock &From, MBasicBlock *To);
};

} // namespace COMPILER
