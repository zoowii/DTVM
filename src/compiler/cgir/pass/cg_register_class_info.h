/*
 * Copyright (C) 2021-2023 the DTVM authors.
 */
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#ifndef COMPILER_CGIR_PASS_REGISTER_CLASS_H
#define COMPILER_CGIR_PASS_REGISTER_CLASS_H

#include "compiler/cgir/cg_function.h"
#include "compiler/common/llvm_workaround.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include "llvm/MC/MCRegister.h"
#include <cstdint>
#include <memory>

namespace COMPILER {

using namespace llvm;

class CgRegisterClassInfo : public NonCopyable {
public:
  void runOnCgFunction(CgFunction &cg_func);

  struct RCInfo {
    unsigned Tag = 0;
    unsigned NumRegs = 0;
    bool ProperSubClass = false;
    uint8_t MinCost = 0;
    uint16_t LastCostChange = 0;
    std::unique_ptr<MCPhysReg[]> Order;

    RCInfo() = default;

    operator ArrayRef<MCPhysReg>() const {
      return makeArrayRef(Order.get(), NumRegs);
    }
  };

  // Brief cached information for each register class.
  std::unique_ptr<RCInfo[]> RegClass;

  // Tag changes whenever cached information needs to be recomputed. An RCInfo
  // entry is valid when its tag matches.
  unsigned Tag = 0;

  const TargetRegisterInfo *TRI = nullptr;

  // Callee saved registers of last MF. Assumed to be valid until the next
  // runOnFunction() call.
  // Used only to determine if an update was made to CalleeSavedAliases.
  const MCPhysReg *CalleeSavedRegs = nullptr;

  // Map register alias to the callee saved Register.
  SmallVector<MCPhysReg, 4> CalleeSavedAliases;

  // Indicate if a specified callee saved register be in the allocation order
  // exactly as written in the tablegen descriptions or listed later.
  BitVector IgnoreCSRForAllocOrder;

  // Reserved registers in the current MF.
  BitVector Reserved;

  std::unique_ptr<unsigned[]> PSetLimits;

  // The register cost values.
  ArrayRef<uint8_t> RegCosts;

  // Compute all information about RC.
  void compute(const TargetRegisterClass *RC) const;

  // Return an up-to-date RCInfo for RC.
  const RCInfo &get(const TargetRegisterClass *RC) const {
    const RCInfo &RCI = RegClass[RC->getID()];
    if (Tag != RCI.Tag)
      compute(RC);
    return RCI;
  }

public:
  CgRegisterClassInfo();

  /// getNumAllocatableRegs - Returns the number of actually allocatable
  /// registers in RC in the current function.
  unsigned getNumAllocatableRegs(const TargetRegisterClass *RC) const {
    return get(RC).NumRegs;
  }

  /// getOrder - Returns the preferred allocation order for RC. The order
  /// contains no reserved registers, and registers that alias callee saved
  /// registers come last.
  ArrayRef<MCPhysReg> getOrder(const TargetRegisterClass *RC) const {
    return get(RC);
  }

  /// isProperSubClass - Returns true if RC has a legal super-class with more
  /// allocatable registers.
  ///
  /// Register classes like GR32_NOSP are not proper sub-classes because %esp
  /// is not allocatable.  Similarly, tGPR is not a proper sub-class in Thumb
  /// mode because the GPR super-class is not legal.
  bool isProperSubClass(const TargetRegisterClass *RC) const {
    return get(RC).ProperSubClass;
  }

  /// getLastCalleeSavedAlias - Returns the last callee saved register that
  /// overlaps PhysReg, or NoRegister if Reg doesn't overlap a
  /// CalleeSavedAliases.
  MCRegister getLastCalleeSavedAlias(MCRegister PhysReg) const {
    if (PhysReg.id() < CalleeSavedAliases.size())
      return CalleeSavedAliases[PhysReg];
    return MCRegister::NoRegister;
  }

  /// Get the minimum register cost in RC's allocation order.
  /// This is the smallest value in RegCosts[Reg] for all
  /// the registers in getOrder(RC).
  uint8_t getMinCost(const TargetRegisterClass *RC) const {
    return get(RC).MinCost;
  }

  /// Get the position of the last cost change in getOrder(RC).
  ///
  /// All registers in getOrder(RC).slice(getLastCostChange(RC)) will have the
  /// same cost according to RegCosts[Reg].
  unsigned getLastCostChange(const TargetRegisterClass *RC) const {
    return get(RC).LastCostChange;
  }

  /// Get the register unit limit for the given pressure set index.
  ///
  /// CgRegisterClassInfo adjusts this limit for reserved registers.
  unsigned getRegPressureSetLimit(const MachineFunction &MF,
                                  unsigned Idx) const {
    if (!PSetLimits[Idx])
      PSetLimits[Idx] = computePSetLimit(Idx);
    return PSetLimits[Idx];
  }

private:
  CgFunction *MF = nullptr;
  LLVMWorkaround *Workaround = nullptr;

protected:
  unsigned computePSetLimit(unsigned Idx) const;
};

} // namespace COMPILER

#endif // COMPILER_CGIR_PASS_REGISTER_CLASS_H
