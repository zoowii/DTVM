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
(and Bg). Counts accumulate over the Runtime reporting lifetime (same
scope as timer records), including `--num-extra-compilations`. Compare
`N` vs `M` on figlet to see unused-function compile cost.

## Motivation

Hottest remaining lead is TTFI / compile trim on multi-function
modules. Counting is the first measurement, not a compile-time cut.

## Impact

- `src/utils/statistics.{h,cpp}` — note + report lines; notes add to
  the Runtime-lifetime totals (they do not overwrite)
- `src/compiler/compiler.cpp` — `EagerJITCompiler::compile`,
  `LazyJITCompiler::precompile`
- `src/tests/statistics_tests.cpp` — two-compilation regression
- Spec: `docs/modules/compiler/spec.md` (JIT Statistics),
  `docs/modules/utils/spec.md` (counter lifetime)

Does not change stub publish, RA, or wasm traps. FastRA spill reduction
is **not** in this PR (needs a fib dump; not high-confidence).

## How to read (figlet)

```
# eager (compiles all internals)
dtvm -m multipass --enable-statistics --log-level info figlet.wasm ...
# grep "JIT functions compiled (eager)" and "JIT Compilation:"

# lazy: stubs all; bodies on request. Disable BG so Fg is the used-body count.
dtvm -m multipass --enable-multipass-lazy --disable-multipass-multithread \
  --enable-statistics --log-level info figlet.wasm ...
# grep "JIT lazy stubs precompiled" and "JIT Lazy Compilation(Fg)"
```

`benchmarks/paper/benchmarks/wapm/figlet.wasm` is a Git LFS pointer
(107944 bytes); run against a fetched blob.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated — `statisticsTests`: two-compilation accumulate,
  unused-body lazy Fg=1, disabled-stats stay zero, repeat `report()` does
  not double-count.
- [x] Module specs in `docs/modules/` updated (compiler + utils)
- [x] Build and tests pass — `statisticsTests`; `specUnitTests peephole
      -c multipass -m multipass` (smoke)
