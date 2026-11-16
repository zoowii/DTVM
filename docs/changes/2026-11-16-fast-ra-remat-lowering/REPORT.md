# Combined experiment: no production promotion

Baseline: `3d6c27b`, merged #652. Implemented two independently controlled
experiments, then screened their combination before considering ablation.
Neither is enabled by default. This is a research PR, not a demonstrated speedup.

`DTVM_RESEARCH_COMPILER_MASK=0/1/2/3` means off / FastRA integer immediate
rematerialization / DREAD cache bypass / both. Invalid/unset values mean off.
Rematerialization snapshots recipes before RA mutates definitions, follows up
to four same-class COPYs, requires unique definitions and same-block uses,
rejects subregister uses and self-loop blocks, and emits only flag-neutral
MOV32ri/MOV64ri/MOV64ri32. It handles no memory operands, FP values or addresses.
DREAD bypass retains the variable-register mapping and cached-comparison guards.

## Paired fresh-process measurements

GCC14 / LLVM15 Release O3, mixed singlepass/multipass, SPEC/ASAN off. CPU0
pinned for process and workers, cgroup quota 2 CPUs, warm file cache. Two excluded
warmups and 31 independent process rounds per case/cohort. Sequential randomized
within-round order, no overlapping build/test/profile. WT45 CLI cache disabled;
contract C API uses the same WT45 library/native mock for every configuration.
Off/AA/both share one executable/inode, main is a frozen independent build.
Ratios are medians of within-round ratios; 95% pointwise percentile bootstrap,
10000 resamples. They are exploratory, not multiple-comparison-adjusted.

Times below are confirmation-cohort process-wall medians (ms). They include
startup, loading, compilation, execution, host work and teardown. They are not
steady-state execution or directly isolated first-call/TTFT measurements.
Contract and CLI rows use different frontends and must not be pooled.

| Case | Main singlepass | Main lazy | Both lazy | WT45 | Screen both/off [95% CI] | Confirm both/off [95% CI] |
|---|---:|---:|---:|---:|---|---|
| tickmath | 7.478 | 32.187 | 31.657 | 37.830 | 0.9893 [0.9536, 1.0113] | 1.0096 [0.9627, 1.0714] |
| rpow | 6.812 | 17.282 | 16.945 | 21.493 | 1.0750 [1.0102, 1.1605] | 1.0186 [0.9664, 1.0997] |
| merkle-c | 27.862 | 34.001 | 33.064 | 34.667 | 0.9901 [0.9683, 1.0432] | 0.9922 [0.9617, 1.0400] |
| nft | 26.872 | 34.611 | 35.296 | 37.641 | 1.0202 [0.9644, 1.0540] | 0.9719 [0.9498, 1.0033] |
| bicg | 87.730 | 68.690 | 67.723 | 77.444 | 0.9816 [0.9543, 1.0335] | 0.9797 [0.9448, 1.0044] |
| atax | 88.541 | 58.217 | 55.749 | 67.532 | 1.0107 [0.9991, 1.0217] | 0.9979 [0.9702, 1.0364] |
| md5 | 9.012 | 32.250 | 31.900 | 51.461 | 0.9833 [0.9513, 1.0495] | 1.0273 [0.9627, 1.1070] |
| base64cli | 26.630 | 116.418 | 117.843 | 499.474 | 1.0007 [0.9761, 1.0372] | 1.0130 [0.9772, 1.0470] |

All runs check exact stdout/stderr, including contract outputs and host counts.
A/A and separate off medians are retained in the summaries. Raw CPU times,
commands, seeds, input/executable hashes and output hashes are retained too.
Binary/source and Wasmtime library provenance is in `evidence/build.json`.

## Mechanism and correctness

The direct-CgIR pressure regression replaces 19 stores and 19 reloads with
integer MOVs; it also checks rejection of multiple definitions. All 35 x86
unit tests passed in each mask (0/1/2/3). TickMath and rpow untimed diagnostics
find recipes, including through COPYs, but replace zero stores/reloads. Thus
this restricted form does not attack the spilling seen in those workloads.
The initial direct-MOV-only prototype also replaced zero reloads; it was not
used for formal timings. The final COPY-aware prototype is the measured version.

195 contract engine/case checks (65 per nonzero mask) passed. Both enabled
passed 9450 independent Python integer-oracle comparisons in Greedy/FastRA/lazy,
including the #652 snapshot cases. A diagnostic-counter reset-only change
followed those runtime checks; all four x86 unit suites were rerun on the final
runtime. Formatting and whitespace checks pass. EVM/ASAN, another physical CPU,
and isolated TTFT/warm-kernel experiments were not performed in this round.

## Decision

No case met the predeclared replicated >=3% improvement criterion. The first
rpow screen had a regression signal; confirmation did not repeat its 7.5%
magnitude. Do not present that first interval as a stable regression estimate,
or the small favorable individual medians as established wins. The combined
candidate has no confirmed overall benefit, so no benefit-attribution ablation
or default enablement is justified. Keep the switches and negative evidence in
this experimental draft. Revisit rematerialization only after finding actual
reload opportunities with a safe broader proof; do not relax uniqueness or
block safety checks merely to increase match counts.

## Reproduce

Build frozen main and candidate from the same checkout/configuration, preserving
main CLI and contract runner before rebuilding candidate. Use the existing
`benchmarks/paper/harness/contracts/build_runner.py` with the exact build flags
and Wasmtime45 C API. Build command:

```sh
cmake -S . -B /tmp/dtvm-next-build -G Ninja -DCMAKE_BUILD_TYPE=Release \
  -DZEN_ENABLE_MULTIPASS_JIT=ON -DZEN_ENABLE_SINGLEPASS_JIT=ON \
  -DZEN_ENABLE_SPEC_TEST=OFF -DZEN_ENABLE_ASAN=OFF \
  -DLLVM_DIR=/path/to/llvm15/lib/cmake/llvm
cmake --build /tmp/dtvm-next-build --target dtvm -j2
python3 docs/changes/2026-11-16-fast-ra-remat-lowering/benchmark.py \
  --main /path/to/main/dtvm --candidate /path/to/candidate/dtvm \
  --main-runner /path/to/main/runner --runner /path/to/candidate/runner \
  --wasmtime /path/to/wasmtime45 --rounds 31 --seed 6521603 \
  --out /tmp/screen-r31
# Repeat independently with --seed 6521604 and a different output directory.
# --ablate adds separate mask1/mask2 arms only after aggregate success.
```
