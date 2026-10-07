// Copyright (C) 2021-2023 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
#ifndef COMPILER_IR_BASIC_BLOCK_H
#define COMPILER_IR_BASIC_BLOCK_H

#include "compiler/context.h"
#include "compiler/mir/instruction.h"
#include "llvm/ADT/SmallVector.h"

namespace COMPILER {
class MFunction;

class MBasicBlock : public ContextObject {
public:
  MBasicBlock(MFunction &Parent);

  MBasicBlock(uint32_t BBIdx, MFunction &Parent);

  ~MBasicBlock() override = default;

  void print(llvm::raw_ostream &OS) const;

  void dump() const;

  auto begin() { return Statements.begin(); }
  auto end() { return Statements.end(); }
  auto begin() const { return Statements.begin(); }
  auto end() const { return Statements.end(); }
  bool empty() const { return Statements.empty(); }

  void addStatement(MInstruction *Inst) {
    Statements.push_back(Inst);
    Inst->setParentBB(this);
  }

  void addStatementBeforeFirstNonPhi(MInstruction *Inst) {
    size_t InsertIdx = 0;
    for (MInstruction *Stmt : Statements) {
      if (Stmt->getOpcode() != OP_phi) {
        break;
      }
      ++InsertIdx;
    }
    addStatement(InsertIdx, Inst);
  }

  void addStatement(size_t Idx, MInstruction *Inst) {
    auto It = Statements.begin();
    std::advance(It, Idx);
    Statements.insert(It, Inst);
    Inst->setParentBB(this);
  }

  size_t getNumStatements() const { return Statements.size(); }

  void clear() { Statements.clear(); }

  void replaceStatement(MInstruction *Old, MInstruction *New) {
    ZEN_ASSERT(Old && New);
    for (auto It = Statements.begin(); It != Statements.end(); ++It) {
      if (*It == Old) {
        *It = New;
        New->setParentBB(this);
        return;
      }
    }
    ZEN_ASSERT(false &&
               "replaceStatement: old instruction is not in this block");
  }

  void eraseStatement(MInstruction *Inst) {
    ZEN_ASSERT(Inst);
    for (auto It = Statements.begin(); It != Statements.end(); ++It) {
      if (*It == Inst) {
        Statements.erase(It);
        return;
      }
    }
    ZEN_ASSERT(false && "eraseStatement: instruction is not in this block");
  }

  uint32_t getIdx() const { return BBIdx; }

  void setIdx(uint32_t Idx) { BBIdx = Idx; }

  MFunction &getParent() const { return Parent; }

  using BlockList = llvm::SmallVector<MBasicBlock *, 4>;
  using PredIterator = BlockList::iterator;
  using ConstPredIterator = BlockList::const_iterator;
  using SuccIterator = BlockList::iterator;
  using ConstSuccIterator = BlockList::const_iterator;

  llvm::iterator_range<SuccIterator> predecessors() {
    return llvm::make_range(Predecessors.begin(), Predecessors.end());
  }
  llvm::iterator_range<ConstSuccIterator> predecessors() const {
    return llvm::make_range(Predecessors.begin(), Predecessors.end());
  }
  llvm::iterator_range<SuccIterator> successors() {
    return llvm::make_range(Successors.begin(), Successors.end());
  }
  llvm::iterator_range<ConstSuccIterator> successors() const {
    return llvm::make_range(Successors.begin(), Successors.end());
  }

  void addSuccessor(MBasicBlock *Succ);
  void removeSuccessor(MBasicBlock *Succ);
  void removeSuccessor(SuccIterator It);
  void addPredecessor(MBasicBlock *Pred);
  void removePredecessor(MBasicBlock *Pred);
  void replaceSuccessor(MBasicBlock *Old, MBasicBlock *New);
#ifdef ZEN_ENABLE_EVM
  void setJumpDestBB(const bool &IsJumpDest) { JumpDestBBFlag = IsJumpDest; }
  bool isJumpDestBB() const { return JumpDestBBFlag; }

#ifdef ZEN_ENABLE_LINUX_PERF
  void setSourceOffset(uint64_t Offset) { SourceOffset = Offset; }
  uint64_t getSourceOffset() const { return SourceOffset; }

  void setSourceName(const std::string &Name) { SourceName = Name; }
  std::string getSourceName() const { return SourceName; }
#endif // ZEN_ENABLE_LINUX_PERF
#endif // ZEN_ENABLE_EVM

private:
  // Host SmallVector, not CompileVector: bump-slab std::vector + LLVM
  // ASan red zones / container annotations poison neighboring IR
  // (Release+ASan CI). Pred/succ order is not a contract.
  static void eraseUnordered(BlockList &Vec, BlockList::iterator It) {
    if (It == Vec.end()) {
      return;
    }
    if (It + 1 != Vec.end()) {
      *It = Vec.back();
    }
    Vec.pop_back();
  }

  uint32_t BBIdx = 0;
  MFunction &Parent;
  CompileList<MInstruction *> Statements;
  BlockList Predecessors;
  BlockList Successors;
#ifdef ZEN_ENABLE_EVM
  bool JumpDestBBFlag = false;
#ifdef ZEN_ENABLE_LINUX_PERF
  uint64_t SourceOffset = 0;
  std::string SourceName;
#endif // ZEN_ENABLE_LINUX_PERF
#endif // ZEN_ENABLE_EVM
};

} // namespace COMPILER

#endif // COMPILER_IR_BASIC_BLOCK_H
