# Change: Greedy on-demand for single-function lazy modules

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Single-internal-function WASM modules skip the lazy FastRA-foreground /
Greedy-background split. On-request compile uses Greedy (same as
single-thread lazy) and publishes trampoline → Greedy with no FastRA
CAS and no `CompileStatus::Done` protocol.

## Motivation

Prior notes reported lazy-FastRA `sub $0x50` / ~34 rbp stores vs
lazy-Greedy 0 spills on fib. In this tree, on `fib_iter_onefn.wat` and
`example/fib.wast`, FastRA still spills and Greedy does not:

| Kernel | FastRA | Greedy |
| --- | --- | --- |
| `fib_iter_onefn` (1 fn) | 5 rbp stores, `sub $0x18` | 0 stores, no frame |
| `example/fib` recursive | 6 rbp stores, `sub $0x20` | 0 stores, CSRs only |
| `example/fib` iterative | 8 rbp stores, `sub $0x14` | 0 stores, no frame |

The exact 34 / `$0x50` shape did not reproduce on these small kernels
(likely a larger dump or a different fib), but the RA gap is real.
Lazy-Greedy single-thread already matches eager Greedy. The
FastRA-then-Greedy tier only helps when a background worker can overlap
with execution on another CPU; a one-function module has nothing else
to compile, so the first call pays FastRA spill tax and a duplicate
Greedy compile.

FastRA's extra spills are inherent to local allocation (live-out and
call-clobber reloads), not a one-line RA bug, so this change takes the
cheaper path: use Greedy on-demand when the module cannot benefit from
tiering.

## Impact

- `compiler`: `LazyJITCompiler` creates `ThreadPool` only when
  multithread lazy is enabled **and** `NumInternalFunctions > 1`.
- `compileFunctionOnRequest` is unchanged: no pool still means Greedy
  plus unconditional stub publish. Multi-function modules still use
  FastRA FG with CAS-from-trampoline and Done-forbids-FastRA-patch.
- Tests: `lazyJitGreedyOndemandTests` compares FastRA vs Greedy spill
  shape on `fib_iter_onefn.wat` and checks lazy+multithread 1-fn matches
  Greedy.

Modules with two or more internal functions still use FastRA on the
foreground lazy path. Fixing FastRA itself (keep loop-carried values in
CSRs, or pin live-ins across blocks) is not a small high-confidence
patch.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass (`lazyJitGreedyOndemandTests`, `lazyJitStubTests`)
