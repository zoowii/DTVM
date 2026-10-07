# Change: MIR/codegen peephole pack (ctz/clz, select-icmp, algebra, const-br)

- **Status**: Accepted
- **Date**: 2026-10-07
- **Tier**: Full

## Overview

Add a deterministic MIR mid-end peephole pass, inspired by Wasmtime
[#13332](https://github.com/bytecodealliance/wasmtime/pull/13332)/[#13343](https://github.com/bytecodealliance/wasmtime/pull/13343)
(A), [#12135](https://github.com/bytecodealliance/wasmtime/pull/12135) (B),
the [#11637](https://github.com/bytecodealliance/wasmtime/pull/11637) family (C),
and [#13267](https://github.com/bytecodealliance/wasmtime/pull/13267)/[#13391](https://github.com/bytecodealliance/wasmtime/pull/13391) (D).

The pass runs after `MVerifier` and before `DeadMBasicBlockElim` in
`compileMIRToCgIR`. It rewrites local expression trees and constant
terminators; dead-block elim then clears unreachable blocks.

Out of scope: E (a64 BFM), J (bulk memory), L (csdb).

## Motivation

DTVM multipass has only a narrow x86 Cg peep (`setcc→jcc`) and no MIR
algebraic/terminator folds. Patterns that Wasmtime already reduces to a
bit test or an unconditional jump still emit BSR/BSF, `select+cmp`, or
a live untaken `br_if` arm. A small, proven rewrite pack is a better
fit than an egraph: the IR is a tree, the VM is deterministic, and
trap/gas semantics must stay exact.

## Impact

### Affected Modules

- [compiler](../../modules/compiler/spec.md): new `MIRPeephole` pass;
  `DeadMBasicBlockElim` also strips dead predecessors / phi incomings
- tests: litmus, WAST, concurrent compile/execute stress, microbench

### Affected Contracts

No public API change. Compile pipeline gains one MIR pass. Semantics of
wasm traps, gas, and integer wraparound are unchanged.

### Compatibility

Backward compatible. Output code may differ (fewer instructions / fewer
blocks) but must match interpreter/singlepass results.

## Implementation Plan

### Phase 1: Mid-end pass + CFG cleanup

- [x] `MIRPeephole` walk of statement / expression trees
- [x] A — `ctz(x)==0` → `(x & 1) != 0`; `clz(x)==0` → signed `< 0`
- [x] B — `icmp eq/ne (select c, k1, k2), k` → condition on `c` (or const)
- [x] C — local identities: `+0`, `-0`, `x-x`, `*0/*1`, `&/|/^` with
      `0/-1/x`, `not(not x)`, shift-by-0, absorption, const-const int fold
- [x] D — constant `br_if` → `br` (or delete); then dead-block elim
- [x] Wire into `compileMIRToCgIR`; re-verify after transforms

### Phase 2: Tests and measurement

- [x] Positive / negative litmus (including `ctz==4` must not fold)
- [x] Concurrent compile + execute stress
- [x] Before/after microbenchmarks on this agent VM

## Compatibility Notes

None. No migration.

## Risks

- **Over-folding shifts**: wasm/x86 mask the shift count; do not combine
  consecutive shifts when `n+m >= width`. Only fold shift-by-0 and
  const-const with the masked count.
- **Trap / gas**: never fold `div`/`rem` (zero divisor). Constant
  `br_if` to a trap block is rewritten only when the condition is a
  real integer constant.
- **Phi / CFG**: folding a terminator updates successors; dead-block
  elim keeps phi incoming lists matched to live predecessors so
  `MVerifier` still holds.
- **Parallel compile**: the pass is function-local and uses the
  per-function `CompileMemPool`; no shared mutable state.
