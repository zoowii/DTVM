// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
#pragma once

#include "compiler/mir/basic_block.h"
#include "compiler/mir/function.h"
#include "compiler/mir/instruction.h"
#include "compiler/mir/instructions.h"
#include "compiler/mir/module.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/Support/Casting.h"
#include <algorithm>
#include <queue>
#include <vector>

namespace COMPILER {

class DeadMBasicBlockElim {
public:
  void runOnMFunction(MFunction &F) {
    uint32_t NumBBs = F.getNumBasicBlocks();
    llvm::BitVector LiveBBs(NumBBs, false);

    MBasicBlock *EntryBB = F.getEntryBasicBlock();
    LiveBBs.set(EntryBB->getIdx());

    CompileQueue<MBasicBlock *> WorkList(
        CompileAllocator<MBasicBlock *>(F.getContext().MemPool));
    WorkList.push(EntryBB);
    while (!WorkList.empty()) {
      MBasicBlock *BB = WorkList.front();
      WorkList.pop();
      for (MBasicBlock *Succ : BB->successors()) {
        uint32_t BBIdx = Succ->getIdx();
        if (!LiveBBs[BBIdx]) {
          LiveBBs.set(BBIdx);
          WorkList.push(Succ);
        }
      }
    }

    for (uint32_t I = 0; I < NumBBs; ++I) {
      MBasicBlock *BB = F.getBasicBlock(I);
      if (!LiveBBs[I]) {
        BB->clear();
        continue;
      }

      std::vector<MBasicBlock *> DeadPreds;
      for (MBasicBlock *Pred : BB->predecessors()) {
        if (!LiveBBs[Pred->getIdx()]) {
          DeadPreds.push_back(Pred);
        }
      }
      std::sort(DeadPreds.begin(), DeadPreds.end());
      DeadPreds.erase(std::unique(DeadPreds.begin(), DeadPreds.end()),
                      DeadPreds.end());
      for (MBasicBlock *Pred : DeadPreds) {
        BB->removePredecessor(Pred);
      }

      for (MInstruction *Inst : *BB) {
        auto *Phi = llvm::dyn_cast<PhiInstruction>(Inst);
        if (!Phi) {
          continue;
        }
        for (int J = static_cast<int>(Phi->getNumIncoming()) - 1; J >= 0; --J) {
          MBasicBlock *Incoming = Phi->getIncomingBlock(static_cast<size_t>(J));
          if (Incoming == nullptr || !LiveBBs[Incoming->getIdx()]) {
            Phi->removeIncoming(static_cast<size_t>(J));
          }
        }
      }
    }

#ifdef ZEN_ENABLE_MULTIPASS_JIT_LOGGING
    llvm::dbgs() << "\n########## MIR Dump After MIR Dead Code Elimination "
                    "##########\n\n";
    F.dump();
#endif
  }
};

} // namespace COMPILER
