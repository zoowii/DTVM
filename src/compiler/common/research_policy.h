// Copyright (C) 2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
#ifndef COMPILER_COMMON_RESEARCH_POLICY_H
#define COMPILER_COMMON_RESEARCH_POLICY_H
#include <cstdlib>
namespace COMPILER {
// Experimental per-process ablation control. Default: unchanged compiler.
inline unsigned compilerResearchMask() {
  static const unsigned Mask = [] {
    const char *Value = std::getenv("DTVM_RESEARCH_COMPILER_MASK");
    return Value && Value[0] >= '0' && Value[0] <= '7' && !Value[1]
               ? unsigned(Value[0] - '0')
               : 0u;
  }();
  return Mask;
}
} // namespace COMPILER
#endif
