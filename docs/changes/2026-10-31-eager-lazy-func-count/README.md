# Change: Count eager vs lazy functions compiled

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Box Phase 1.5: figlet eager wall is almost all compile (quoted JIT
~186ms, exec ~0.45ms). Eager `JIT Compilation` is **one** timer over
every internal function, so `--enable-statistics` did not print how
many bodies were compiled. This adds two count lines (no extra timers,
no paper-total change):

- `JIT functions compiled (eager): N`
- `JIT lazy stubs precompiled: N`

Lazy bodies actually compiled remain `JIT Lazy Compilation(Fg): M times`
(and Bg). Compare `N` vs `M` on figlet to see unused-function compile
cost.

## Motivation

Hottest remaining lead is TTFI / compile trim on multi-function
modules. Counting is the first measurement, not a compile-time cut.

## Impact

- `src/utils/statistics.{h,cpp}` — note + report lines
- `src/compiler/compiler.cpp` — `EagerJITCompiler::compile`,
  `LazyJITCompiler::precompile`
- Spec: `docs/modules/compiler/spec.md` (JIT Statistics)

Does not change stub publish, RA, or wasm traps. FastRA spill reduction
is **not** in this PR (needs a fib dump; not high-confidence).

## How to read (figlet)

```
# eager (compiles all internals)
dtvm -m multipass --enable-statistics --log-level info figlet.wasm ...
# grep "JIT functions compiled (eager)" and "JIT Compilation:"

# lazy (stubs all; bodies on request)
dtvm -m multipass --enable-multipass-lazy --enable-statistics --log-level info figlet.wasm ...
# grep "JIT lazy stubs precompiled" and "JIT Lazy Compilation(Fg)"
```

`benchmarks/paper/benchmarks/wapm/figlet.wasm` is a Git LFS pointer
(107944 bytes); run against a fetched blob.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated — stats report lines; no new litmus (counts are
      logging-only). Wrap WAST lives on the addressing-stop PR.
- [x] Module specs in `docs/modules/` updated
- [x] Build and tests pass — `specUnitTests peephole -c multipass -m
      multipass`; `dtvm --enable-statistics` on `peephole.0.wasm` prints
      `JIT functions compiled (eager): 25` vs lazy stubs 25 and Fg 1
      (single export `add0`)
