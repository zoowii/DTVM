# Change: Break scalar integer-to-float false dependencies

- **Status**: Implemented
- **Date**: 2026-11-04
- **Tier**: Light

## Objective and authorization

The user requested deeper DTVM/Wasmtime assembly comparisons, time-boundary
bisection and empirically verified optimization. This change isolates a scalar
SSE conversion bottleneck from the opt-in private-function promotion strategy.
Base: `1117403` (budgeted promotion); promotion remains **off by default**.

## Implemented change

At final x86 MC emission, clear the allocated XMM destination with `XORPS`
immediately before the four scalar register GPR-to-float conversion opcodes.
Legacy `CVTSI2SD`/`CVTSI2SS` preserve upper destination lanes, creating a false
dependency on the previous destination. In these scalar definitions those lanes
are dead. In the archived matrix-initialization loop, the destination previously
held the last iteration's division result:

```asm
; Old DTVM: conversion depends on the previous xmm0 value on this CPU.
cvtsi2sd xmm0, esi
divsd    xmm0, xmm1
; Candidate: independent iterations can overlap.
xorps    xmm0, xmm0
cvtsi2sd xmm0, esi
divsd    xmm0, xmm1
; Wasmtime 45 uses a different encoding but also breaks the dependency.
vxorpd   xmm0, xmm0, xmm0
vcvtsi2sd xmm2, xmm0, edi
vdivsd   xmm0, xmm2, [constant]
```

No AVX requirement, reciprocal substitution, reassociation or FMA is added.
`XORPS` preserves EFLAGS and cannot alias the integer source. Vector-preserving
`_Int`, memory and AVX forms are excluded. Normal MC layout/relocation handles
the inserted bytes. This applies to FastRA and GreedyRA; Singlepass is unchanged.
See [generated-code excerpts](assembly.md) and the
[compiler contract](../../modules/compiler/spec.md).

## Method and evidence

AMD EPYC 9V74, three visible CPUs, two-core cgroup quota, 8 GiB RAM. Release,
GCC, LLVM 15, checked arithmetic enabled. Each sample is a fresh process pinned
to CPU 0; page cache warm; Wasmtime **45.0.0**, module cache disabled. Variants
are randomized within rounds. No concurrent build during formal timing.

- [measurements.json](measurements.json): manifests, binary/input hashes, commands,
  raw process observations and per-call diagnostic phase times.
- [summary.json](summary.json): medians and paired ratio-of-medians intervals.
- [scripts](scripts/): exact input-generation and diagnostic runners.
- 1836 successful processes: 1700 measured, 136 warmups. Guest output hashes
  agree within each input/count. Phase stdout contains timestamps and is
  intentionally excluded from output equality; guest stderr is checked.
- The relative-binary-path pilot had failed short controls and is discarded;
  the reported R15 confirmation uses absolute executable paths and has no failures.

Intervals use 10,000 paired process-round resamples, seed 20261104. Multiple
calls inside one process are not independent samples. Adaptive count selection
and single-host measurements limit generalization. Hardware PMU access returned
`ENOENT`; assembly and controlled timing support the dependency explanation,
not a measured cache-miss or execution-port breakdown.

## 1. Isolated counterfactual

R15, 10 million iterations, eager Greedy/ST, fresh-process wall milliseconds:

| Diagnostic | Old | Zero idiom | Wasmtime 45 |
|---|---:|---:|---:|
| Integer conversion followed by division | 56.829 | 22.017 | 21.200 |
| Division without integer conversion | 22.322 | 21.408 | 21.392 |

The division control barely changes. The tested code retains its loop and
stores, and separate semantic tests check returned numerical values. This is
not a claim that every integer-to-float conversion benefits equally.

## 2. Original archived benchmarks

R15 independent confirmation, promotion **off**, wall milliseconds:

| Case | Old lazy-G-MT | New lazy-G-MT | Change, 95% interval | Old eager-G-ST | New eager-G-ST | Wasmtime 45 |
|---|---:|---:|---:|---:|---:|---:|
| atax | 88.015 | 73.327 | -16.7% [-18.6%, -14.5%] | 130.097 | 117.778 | 61.274 |
| bicg | 78.333 | 64.517 | -17.6% [-19.1%, -15.3%] | 134.004 | 119.918 | 67.356 |
| gesummv | 64.134 | 50.762 | -20.9% [-24.0%, -19.2%] | 117.191 | 107.731 | 54.827 |
| mvt | 100.554 | 84.955 | -15.5% [-17.2%, -12.7%] | 130.482 | 114.884 | 65.398 |
| gemver | 94.329 | 94.627 | +0.3% [-2.0%, +3.1%] | 134.612 | 123.166 | 68.442 |
| echo | 25.038 | 24.350 | -2.7% [-9.0%, +0.8%] | 82.475 | 78.975 | 34.714 |
| md5 | 31.647 | 29.326 | -7.3% [-22.1%, +5.2%] | 101.021 | 110.672 | 44.241 |
| pi | 28.943 | 28.475 | -1.6% [-15.4%, +6.9%] | 103.813 | 103.834 | 40.187 |

Keep the negative/uncertain controls. In particular md5 eager median regresses
9.6%, with interval [-1.0%, +16.7%]; this is inconclusive, not proof of no
regressions. A targeted independent R31 follow-up does not reproduce that
regression: md5 eager old/new 90.201/89.595 ms, -0.7% [-2.6%, +2.9%]; lazy
25.774/25.254 ms, -2.0% [-5.2%, +0.6%]. Echo eager is 80.897/79.613 ms,
-1.6% [-4.6%, -0.5%], and lazy 23.988/23.546 ms, -1.8% [-3.8%, +0.9%].
Retain both runs. Do not pool timing phases or present a general DTVM win rate.

## 3. Bisect the time spent inside main

Derived diagnostic modules add WASI monotonic-clock markers at main entry,
after allocations, before/after matrix initialization, after the numeric kernel
and after printing/free. Markers use unused low-memory scratch [16,76); original
data begins at 1024 and the benchmark stack remains far above the scratch.
These transformed inputs are diagnostic, not substituted for canonical results.

R9 eager-G-ST, median phase milliseconds on the first call:

| Case/runtime | Allocation | Vector init | Matrix init | Numeric kernel | Output/free |
|---|---:|---:|---:|---:|---:|
| atax old | 0.015 | 0.007 | 31.758 | 6.600 | 1.423 |
| atax new | 0.015 | 0.006 | 18.424 | 6.470 | 1.286 |
| atax Wasmtime | 0.012 | 0.005 | 11.969 | 7.782 | 2.386 |
| bicg old | 0.016 | 0.013 | 33.130 | 14.630 | 1.944 |
| bicg new | 0.016 | 0.007 | 18.075 | 14.856 | 2.035 |
| bicg Wasmtime | 0.011 | 0.004 | 11.876 | 13.925 | 3.837 |

This narrows the new improvement to matrix initialization, not allocation or
the arithmetic kernel. First-call initialization remains slower than later
calls; memory first-touch and initialization need a separate counterfactual
before attributing that residual gap to page faults or memory bandwidth.

In a separate R5 lazy 30-call diagnostic, median of each process's mean over
its **last ten calls** (milliseconds per call):

| Case/strategy | Init | Kernel | Output/free | Main |
|---|---:|---:|---:|---:|
| atax old/off | 18.954 | 21.116 | 1.753 | 42.734 |
| atax old/budgeted | 18.560 | 6.847 | 1.949 | 28.588 |
| atax new/off | 5.975 | 21.417 | 1.657 | 29.097 |
| atax new/budgeted | 5.556 | 6.786 | 1.935 | 14.430 |
| atax Wasmtime | 5.459 | 7.972 | 3.736 | 16.907 |
| bicg old/off | 18.906 | 15.531 | 2.567 | 36.816 |
| bicg old/budgeted | 19.488 | 14.828 | 3.360 | 37.413 |
| bicg new/off | 5.837 | 14.599 | 3.441 | 23.844 |
| bicg new/budgeted | 5.382 | 14.680 | 3.553 | 24.130 |
| bicg Wasmtime | 5.345 | 13.678 | 6.559 | 26.433 |

Column medians need not sum to the median total. These internal spans exclude
process startup, compilation before main, inter-call work and teardown. Do not
compare their totals directly to fresh-process wall medians.

## 4. Bisect promotion amortization

One parametric `repeat(n)` export calls the original `_start` n times inside
**one instance**. The same wrapper bytes and export-seeding workload are used
for every n. This differs from both the CLI's new-instance repeats and the
previous three-export wrapper, so timings are separately reported.

Explicit promotion profile: threshold 8, max 32 functions, max 65536 body bytes,
max 1024 bytes per function, 100 ms soft private compile budget.

R9 wall milliseconds, uninstrumented inputs:

| atax calls | Old/off | Old/budgeted | New/off | New/budgeted | Wasmtime 45 |
|---|---:|---:|---:|---:|---:|
| 1 | 93.222 | 102.814 | 78.146 | 86.015 | 61.339 |
| 4 | 207.920 | 221.001 | 161.099 | 170.966 | 111.653 |
| 8 | 365.822 | 366.938 | 264.947 | 269.894 | 158.814 |
| 12 | 535.430 | 486.618 | 385.352 | 341.371 | 230.109 |
| 16 | 697.760 | 598.109 | 494.926 | 381.696 | 281.779 |
| 30 | 1300.647 | 974.350 | 958.491 | 592.589 | 527.652 |

Additional R15 at 9 and 10 calls narrows the crossover: new/budgeted vs new/off
is -5.3% [-8.7%, +0.3%] at nine calls, and -9.1% [-13.8%, -4.9%] at ten.
Ten is the first clearly beneficial **sampled** count, not a universal threshold.

The bicg holdout remains insensitive to promotion at 30 calls: old/off
1203.296, old/budgeted 1204.740, new/off 781.468, new/budgeted 770.814,
Wasmtime 809.695 ms. The new budgeted/off interval includes zero. Most of
bicg's new gain comes from conversion dependency breaking, not upgrading.

A separate R9 longer atax comparison, new/budgeted vs Wasmtime 45:

| Calls | DTVM | Wasmtime | DTVM change, 95% interval |
|---|---:|---:|---:|
| 64 | 1032.744 | 1006.834 | +2.6% [+0.9%, +6.9%] |
| 128 | 1929.159 | 2007.983 | -3.9% [-6.2%, -0.4%] |

The observed cumulative crossover is bracketed by 64 and 128 calls on this
fixture/version. It includes the benchmark's printing and cleanup. This does
not establish a compute-only, cross-version or cross-machine Wasmtime advantage.

## 5. Remaining optimization priorities

1. **Loop-weighted spill benefit for upgrade decisions.** Atax FastRA reloads
   and spills its FP reduction accumulator every iteration (`[rbp-0x30]`);
   Greedy keeps it in XMM. The kernel's 21.1→6.8 ms matches this structural
   difference. Bicg keeps both real Wasm-memory update chains even under Greedy;
   removing frame spills barely changes its kernel time. Prioritize estimated
   loop spill/dependency savings rather than tiny-helper entry frequency.
   This is an evidence-based next experiment, not an implemented cost model.
2. **A cheaper FastRA loop treatment.** Retaining a loop-carried FP accumulator
   could capture some atax benefit without a background Greedy compile. Test
   register pressure, backedges and publication independently; do not assume
   that generic spill removal produces the same benefit in bicg.
3. **First-call memory initialization and compilation.** New steady matrix
   initialization approaches Wasmtime, while the first call still trails.
   Isolate memory first-touch from the generated loop and measure foreground
   compilation before changing memory allocation or doing speculative compiles.
4. **Load folding/address formation is secondary.** Wasmtime folds some scalar
   memory operands into multiply instructions. DTVM emits explicit loads and
   more i32 address instructions. This is visible in the bicg excerpts, but no
   benefit is claimed without a separate change and controlled benchmark.
   Preserve i32 wrapping and trap ordering. The previous generic LEA candidate
   failed validation; fewer instructions alone are not a reason to adopt it.

## Validation

- Seven CTest suites pass, including all 97 available Wasm spec groups under
  lazy promotion at threshold 2, publication/budget tests and MIR tests.
- All 97 groups separately pass under eager Greedy/ST and eager FastRA/ST.
- New `scalar_conversion_dependencies.wast` checks all eight signed/unsigned,
  32/64-bit integer and f32/f64 combinations, extremes/rounding, live FP values
  and a conversion/division accumulation loop.
- Canonical `tests/wast/spec.patch` applied for CI-equivalent preparation and
  reversed afterward; no submodule changes are included.
- Existing 26 Python harness tests pass; C++ formatting and whitespace pass.
  The nine regenerated diagnostic Wasm inputs match the measured bytes exactly.
- ASan and cross-machine validation were not run. Promotion stays default off.

## Reproduction

Build `1117403` and this branch in separate checkouts with the same compiler
and configuration (replace the LLVM path for your installation):

```bash
cmake -S . -B build-cvt -G Ninja -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_DIR=/path/to/llvm15/lib/cmake/llvm \
  -DZEN_ENABLE_SINGLEPASS_JIT=ON -DZEN_ENABLE_MULTIPASS_JIT=ON \
  -DZEN_ENABLE_CHECKED_ARITHMETIC=ON -DZEN_ENABLE_SPEC_TEST=OFF \
  -DZEN_ENABLE_BUILTIN_WASI=ON -DZEN_ENABLE_BUILTIN_LIBC=ON
cmake --build build-cvt --target dtvm -j2
```

Freeze the binaries as `work/dtvm-budgeted-promotion` and
`work/bottleneck/dtvm-zero-convert`. Install Binaryen and hydrate Git LFS inputs.
Run all commands from the repository root; the diagnostic scripts intentionally
use the exact archived atax/bicg shapes, not arbitrary Wasm modules.

```bash
scripts=docs/changes/2026-11-04-scalar-conversion-dependencies/scripts
python3 "$scripts/make_phases.py"
python3 "$scripts/make_micro.py"
python3 "$scripts/make_fine_phases.py"
python3 "$scripts/research_bench.py" --micro --repeats 15 --out /tmp/cvt-micro
python3 "$scripts/research_bench.py" --phase --counts 1,30 --repeats 5 --out /tmp/cvt-phases
python3 "$scripts/research_bench.py" --cases atax --counts 1,4,8,12,16,30 --repeats 9 --out /tmp/cvt-scan
python3 "$scripts/research_bench.py" --cases atax --counts 9,10 --repeats 15 --out /tmp/cvt-bisect
python3 "$scripts/research_bench.py" --cases bicg --counts 1,30 --repeats 9 --out /tmp/cvt-holdout
python3 "$scripts/research_bench.py" --cases atax --counts 64,128 --variants zero-budgeted,wasmtime --repeats 9 --out /tmp/cvt-long
python3 "$scripts/fine_bench.py"
python3 "$scripts/summarize.py" # recompute summary.json from archived measurements.json
```

The original-input R15 run uses the existing harness with absolute binary
paths; its full commands and all samples are archived in `measurements.json`.
For assembly, build `scripts/capture_jit.c` as a shared object with `-shared
-fPIC -ldl`; set `LD_PRELOAD` and `JIT_CAPTURE_DIR` for a separate eager ST
run, optionally adding `--disable-multipass-greedyra`. Disassemble captures
using `objdump -D -b binary -m i386:x86-64 -Mintel`. For Wasmtime, use `compile`
and `objdump -d -Mintel` on the generated cwasm. Never preload the capture
helper during timed measurements.
