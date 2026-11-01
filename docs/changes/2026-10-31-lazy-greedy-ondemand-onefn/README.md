# Change: Greedy on-demand for single-function lazy modules

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Single-internal-function WASM modules skip the lazy FastRA-foreground /
Greedy-background split. On-request compile uses the configured
allocator (Greedy unless `DisableMultipassGreedyRA`) and publishes
trampoline → compiled body with no FastRA CAS and no
`CompileStatus::Done` protocol.

## Motivation

Prior notes reported lazy-FastRA `sub $0x50` / ~34 rbp stores vs
lazy-Greedy 0 spills on fib. In this tree, on `fib_iter_onefn.wat` and
`example/fib.wast`, FastRA still spills and Greedy does not. Prefix
heuristic (`scanCodeShapePrefix`, 512-byte window; not a complete
function spill count):

| Kernel | FastRA | Greedy |
| --- | --- | --- |
| `fib_iter_onefn` (1 fn) | rbp stores + `sub $imm, %rsp` | 0 rbp spill stores, no stack subtraction/spill slots |
| `example/fib` recursive | rbp stores + `sub $imm, %rsp` | 0 rbp spill stores (CSRs / `push %rbp; mov %rsp,%rbp` remain) |
| `example/fib` iterative | rbp stores + `sub $imm, %rsp` | 0 rbp spill stores, no stack subtraction/spill slots |

Greedy still emits a frame pointer (`push %rbp; mov %rsp,%rbp`). "No
stack subtraction/spill slots" is not "no frame."

The exact 34 / `$0x50` shape did not reproduce on these small kernels
(likely a larger dump or a different fib), but the RA gap is real.
Lazy-Greedy single-thread already matches eager Greedy.

This is a **measured policy tradeoff** for fib-like one-function
workloads, not a universal claim that one-function modules cannot
benefit from tiering. A large function called once briefly can still
want a quicker FastRA first response; repeated calls can still want a
background Greedy upgrade. Function count does not bound compile cost.
The old tier also cannot replace an already-running FastRA activation,
which is why skipping FastRA on the first long-running one-fn call
matters for this kernel.

## Impact

- `compiler`: `LazyJITCompiler` creates `ThreadPool` only when
  multithread lazy is enabled **and** `NumInternalFunctions > 1`.
- `compileFunctionOnRequest` is unchanged except counters/comments: no
  pool still means the configured allocator plus unconditional stub
  publish. `DisableMultipassGreedyRA` still forces FastRA synchronously
  with no background tier. Multi-function modules still use FastRA FG
  with CAS-from-trampoline and Done-forbids-FastRA-patch.
- Tests: `lazyJitGreedyOndemandTests` asserts no background pool / zero
  BG compile attempts and zero BG publishes for one-internal-fn lazy-MT
  (not only stub shape after `fib` returns), locks
  `DisableMultipassGreedyRA=true`, and checks a two-internal-function
  control still creates the pool, completes Greedy publication, and
  leaves both stubs on the canonical `GreedyRACodePtrs` body. FG/BG
  compile getters are attempt/start counts; `getBackgroundPublishCount`
  is the completion seam.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass (`lazyJitGreedyOndemandTests`, `lazyJitStubTests`)
