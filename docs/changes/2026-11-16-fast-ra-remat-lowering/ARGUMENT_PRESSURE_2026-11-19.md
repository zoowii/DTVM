# Constant arguments and FastRA register pressure

Experiment date: 2026-11-19 (Asia/Shanghai). Main is `3d6c27b`, the upstream
revision checked before measurement. Two isolated hypotheses were tested.
Mask 1 enables the existing FastRA immediate rematerialization. Mask 4 defers
direct integer literal materialization to the argument's existing ABI copy
or stack store for calls with at least 16 operands. Mask 5 combines them.
Mask 2 bypasses the DREAD cache and mask 3 combines 1 and 2. The process
default is mask 0.

The generated Wasm loops over a direct call with a changing i64 hash seed and
a fixed set of integer constants. The callee includes each parameter in the
hash, and Python checks every execution using modulo 2^64 arithmetic. The
inputs model repeated wide calls with constant arguments. An untimed scan of
all 29 earlier catalog modules found a maximum signature width of 10, below
the mask 4 threshold. The real workload coverage of wide signatures remains
unestablished.

Each table uses fresh processes sequentially pinned to CPU 0 with warm file
cache, randomized order within each round, Wasmtime 45 cache disabled and
no overlapping compilation or profiling. The AMD EPYC 9V74 environment
uses a 2 CPU cgroup quota. Main and singlepass are separate from the candidate.
Off, A/A and feature arms use the same candidate binary. Wall time includes
spawn, compilation, guest work and teardown. Intervals are pointwise bootstrap
percentile intervals of within-round median ratios. Measurements with zero
guest iterations still compile the caller.

| Cohort | Input (i64 literals × calls) | Main singlepass ms | Main FastRA ms | WT45 ms | Candidate off ms | Remat ms | Defer ms | Remat/off [95% CI] | Defer/off [95% CI] |
|---|---|---:|---:|---:|---:|---:|---:|---|---|
| Original R31 | large-8:1000000 | 15.27 | 18.81 | 16.71 | 17.73 | 17.70 | — | 0.994 [0.973, 1.023] | — |
| Original R31 | large-24:1000000 | 34.76 | 42.13 | 38.22 | 41.14 | 35.84 | — | 0.858 [0.843, 0.879] | — |
| Original R31 | large-48:1000000 | 76.41 | 95.36 | 81.29 | 94.78 | 87.96 | — | 0.951 [0.920, 0.997] | — |
| Original R31 | large-48:0 | 6.58 | 7.66 | 8.75 | 6.74 | 6.94 | — | 1.009 [0.970, 1.146] | — |
| Original R31 | small-32:1000000 | 44.96 | 60.69 | 53.38 | 60.83 | 60.49 | — | 0.995 [0.970, 1.029] | — |
| New lowering R31 | large-16:1000000 | 25.23 | 26.64 | 28.21 | 26.05 | 26.16 | 26.17 | 1.014 [0.985, 1.032] | 1.008 [0.979, 1.040] |
| New lowering R31 | large-24:1000000 | 35.50 | 43.27 | 39.86 | 42.49 | 36.42 | 36.42 | 0.859 [0.842, 0.879] | 0.860 [0.846, 0.906] |
| New lowering R31 | large-48:1000000 | 74.61 | 94.14 | 82.43 | 92.63 | 89.51 | 90.92 | 0.950 [0.938, 0.983] | 0.956 [0.936, 1.017] |
| New lowering R31 | small-32:1000000 | 46.37 | 61.73 | 56.05 | 62.09 | 62.30 | 58.13 | 0.992 [0.973, 1.012] | 0.925 [0.896, 0.960] |
| New lowering R31 | large-48:0 | 6.30 | 7.91 | 9.27 | 7.10 | 7.58 | 6.96 | 1.055 [1.019, 1.146] | 0.986 [0.927, 1.127] |
| New lowering repeat R31 | small-32:1000000 | 44.48 | 60.52 | 53.02 | 59.66 | 59.66 | 54.49 | 0.997 [0.991, 1.012] | 0.909 [0.899, 0.921] |
| New lowering repeat R31 | large-24:1000000 | 36.57 | 44.58 | 40.03 | 43.61 | 39.21 | 38.41 | 0.896 [0.859, 0.912] | 0.867 [0.828, 0.901] |

## Cold catalog control

Each feature was tested independently against an off arm and an identical A/A
arm, with frozen main FastRA, main singlepass and WT45 also running each round.
These four selected canonical inputs are useful for checking cold code paths.
All eight intervals include one. For rematerialization on echo, the interval
still allows approximately 13% slowdown. The wide-48 zero-call test has one
unfavorable ~5.5% point estimate with an interval above one. The earlier
cohort and A/A variation leave the size of its cold cost uncertain.

| Case | Feature mask | Main FastRA ms | WT45 ms | Candidate off ms | Feature ms | Feature/off [95% CI] | A/A [95% CI] |
|---|---:|---:|---:|---:|---:|---|---|
| base64cli | 1 | 116.46 | 518.36 | 116.39 | 114.90 | 0.997 [0.970, 1.045] | 1.061 [0.995, 1.114] |
| md5 | 1 | 25.70 | 43.09 | 25.06 | 25.96 | 1.012 [0.983, 1.042] | 1.029 [0.981, 1.057] |
| echo | 1 | 25.79 | 41.47 | 25.23 | 27.50 | 1.049 [0.977, 1.132] | 1.013 [0.978, 1.069] |
| bicg | 1 | 62.85 | 75.17 | 62.11 | 61.62 | 0.991 [0.982, 1.015] | 1.016 [0.980, 1.059] |
| base64cli | 4 | 127.93 | 558.99 | 129.28 | 125.42 | 0.988 [0.921, 1.050] | 0.979 [0.928, 1.001] |
| md5 | 4 | 29.69 | 48.99 | 29.48 | 29.39 | 1.003 [0.944, 1.061] | 1.010 [0.914, 1.059] |
| echo | 4 | 26.72 | 41.77 | 27.27 | 25.98 | 0.994 [0.944, 1.057] | 0.973 [0.936, 1.005] |
| bicg | 4 | 62.45 | 76.68 | 63.07 | 62.30 | 1.020 [0.975, 1.037] | 1.010 [0.993, 1.047] |

## Code generation and checks

Assembly was captured from an instrumented build after timing and is archived
for the wide-24 and small-32 callers. Counts include prologue/epilogue and the
loop. RBP references include both locals and spills. RSP references include
outgoing ABI arguments. Compiler trace lines separately identify the number of
rematerialization replacements. With 24 wide literals, both treatments reduce
RBP-relative MOVs from 38 to 12. Rematerialization emits 37 MOVABS instructions
versus 24 with deferral and baseline. The caller text spans 608, 598 and 450
bytes for off, remat and defer. With 32 small literals, deferral reduces
RBP-relative MOVs from 54 to 12 and text from 712 to 436 bytes. RSP-relative
MOVs are unchanged in each DTVM comparison. The library ABI still requires
these outgoing stack arguments. Mask 5 performs zero rematerializations on
the measured wide caller once deferral removes the pressure.

The Wasmtime 45 AOT disassembly for each identical input is also archived.
Its caller addresses argument slots using RSP and follows a different
frame layout, so RBP and RSP instruction counts need context. Untimed diagnostic
details are in `evidence/argument-pressure/assembly-counts.json`.

The independent mixed-ABI check passed 261 executions on Wasmtime and DTVM
eager Greedy and lazy FastRA using masks 0, 4, 5 and 7. It covers a varying
integer seed, overflowing i32 narrowing, f64 arguments, indirect dispatch and
memory bounds traps occurring during argument evaluation.

## Reproduction

```sh
python3 generate_pressure_inputs.py /tmp/pressure-inputs
python3 pressure_benchmark.py --inputs /tmp/pressure-inputs   --main /path/main-dtvm --candidate /path/experimental-dtvm   --wasmtime /path/wasmtime45 --out /tmp/pressure-results --seed 6531902   --defer --cases large-16:1000000,large-24:1000000,large-48:1000000,small-32:1000000,large-48:0
python3 validate_deferred_call_args.py /path/experimental-dtvm /path/wasmtime45
```

See each evidence manifest for the remaining seeds, exact commands and hashes.

## Decision

The repeated wide-24 and wide-48 results establish a benefit when the target
FastRA spills occur on frequently executed calls. The wide-16 and small-32
results show that width, immediate encoding and call frequency matter.
Deferring direct constants removes the pressure for both immediate encodings
in this fixture and is the narrower candidate for further validation. Preserve
both experiments under independent switches while checking representative
real call sites, cold overhead and CPU portability. The wide signature
threshold is an experimental choice.
