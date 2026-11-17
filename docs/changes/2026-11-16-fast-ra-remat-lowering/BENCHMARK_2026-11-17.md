# Standard WAPM / PolyBench follow-up (2026-11-17, Asia/Shanghai)

Frozen upstream main: `3d6c27b` (#652); experimental runtime: `31953db`.
Upstream main was rechecked during the run and still matched the baseline.
The CLI binary hashes match the earlier archived experiment; no runtime changes
were made for this follow-up. Exact hashes, canonical commands, inputs,
permissions, stdin, seeds, per-process wall/CPU and output hashes are archived.

Measurements use the repository paper harness catalog and command/cwd helpers.
The screen covers 17 original WAPM cases and 12 original PolyBench cases.
All variants use the same Wasm and arguments. CPU0 pinned, warm file cache,
sequential randomized fresh processes, WT45 cache disabled, diagnostic tracing
off, no overlapping compilation/profiling/testing. One excluded warmup per arm;
7 measured rounds for cases whose slowest warmup is <=1 second, 3 otherwise.
Timeout: 60 seconds per process. All samples, including failures, are retained.
Incomplete cells publish no success-only median. These are process-wall times,
including startup/compile/execution/output/teardown, not warm kernels or TTFT.

`F` = explicit lazy FastRA, single-thread compilation. `D` = default lazy
strategy with multithread enabled, including its existing per-function
FastRA/Greedy selection. It does not guarantee Greedy for every function.
`both` enables both experiments (mask3); `off` is the same candidate inode with
mask0. `main` is a separate frozen production build. Changes to singlepass are
not expected from these multipass-only features; that column is a control for
startup/binary/environment differences, not evidence of singlepass optimization.

## Canonical screen

Milliseconds, medians; D ratio is median of within-round both-D/main-D ratios.
SP=singlepass. Ratios below 1 favor the candidate. Cohorts are not pooled.

### wapm

| Case | N | Main SP | Both SP | Main lazy D | Both lazy D | WT45 | D ratio |
|---|---:|---:|---:|---:|---:|---:|---:|
| base64cli | 7 | 25.00 | 23.73 | 114.73 | 110.82 | 520.19 | 0.9899 |
| chkfont | 7 | 10.57 | 9.05 | 41.68 | 44.07 | 85.90 | 1.0332 |
| code-stock | 7 | 9.40 | 8.69 | 23.16 | 23.03 | 86.86 | 0.9820 |
| cowsay | 7 | 24.58 | 24.84 | 136.35 | 130.55 | 474.18 | 1.0396 |
| dice | 7 | 7.52 | 7.37 | 25.67 | 22.59 | 39.34 | 0.8890 |
| echo | 7 | 7.52 | 7.53 | 30.66 | 29.45 | 42.99 | 0.9379 |
| erdtree | 7 | 13.55 | 13.61 | 60.76 | 59.27 | 173.24 | 1.0249 |
| figlet | 7 | 10.88 | 10.00 | 52.36 | 49.04 | 114.52 | 0.9905 |
| fortune | 7 | 15.73 | 15.21 | 69.98 | 68.23 | 136.62 | 0.9753 |
| md5 | 7 | 8.33 | 7.35 | 31.30 | 31.07 | 45.32 | 0.9795 |
| pi | 7 | 8.86 | 7.99 | 27.48 | 27.24 | 41.80 | 0.9952 |
| pkg1 | 7 | 10.67 | 9.89 | 24.51 | 24.96 | 89.24 | 1.0811 |
| qr2text | 7 | 11.75 | 9.98 | 57.02 | 53.39 | 129.96 | 0.9415 |
| suggest | 7 | 27.16 | 24.15 | 108.13 | 106.67 | 473.82 | 0.9417 |
| tpl | 7 | 113.26 | 113.61 | 289.54 | 288.43 | 893.07 | 0.9854 |
| uuid | 7 | 27.63 | 27.50 | 99.40 | 94.08 | 535.84 | 0.9531 |
| viu | 3 | 82.15 | 81.52 | 263.72 | 236.37 | 1488.22 | 0.8903 |

### polybench

| Case | N | Main SP | Both SP | Main lazy D | Both lazy D | WT45 | D ratio |
|---|---:|---:|---:|---:|---:|---:|---:|
| atax | 7 | 87.72 | 86.71 | 56.74 | 59.88 | 66.72 | 0.9781 |
| bicg | 7 | 87.24 | 90.88 | 69.28 | 69.52 | 73.72 | 0.9605 |
| deriche | 3 | 8173.67 | 8374.44 | 7869.67 | 7784.41 | 12555.20 | 0.9805 |
| durbin | 7 | 22.27 | 21.87 | 33.55 | 34.23 | 47.14 | 0.9997 |
| gemver | 7 | 174.30 | 173.59 | 66.76 | 65.00 | 81.54 | 1.0238 |
| gesummv | 7 | 72.39 | 66.41 | 56.64 | 57.53 | 66.02 | 1.0139 |
| jacobi_1d | 7 | 25.46 | 25.48 | 33.23 | 31.25 | 43.51 | 0.9064 |
| mvt | 7 | 103.24 | 101.08 | 61.18 | 60.46 | 72.29 | 1.0270 |
| trisolv | 7 | 58.19 | 56.60 | 45.74 | 50.49 | 63.21 | 1.1097 |
| adi | 3 | 59325.68 | incomplete | 10990.27 | 10885.80 | 11175.13 | 0.9905 |
| gemm | 3 | 13935.14 | 13883.26 | 1719.79 | 1805.10 | 3038.75 | 1.0746 |
| 2mm | 3 | 14649.86 | 14127.10 | 2642.42 | 2329.50 | 2860.36 | 0.8629 |

### Explicit FastRA and same-binary control

| Case | Main F ms | Candidate off F ms | Candidate both F ms | Both/off ratio [pointwise 95% CI] |
|---|---:|---:|---:|---|
| base64cli | 123.26 | 116.02 | 104.98 | 0.9353 [0.8371, 0.9911] |
| chkfont | 44.41 | 42.85 | 45.09 | 1.0171 [0.9261, 1.0820] |
| code-stock | 20.30 | 20.83 | 20.84 | 0.9959 [0.8555, 1.0153] |
| cowsay | 153.51 | 134.78 | 137.99 | 1.0238 [0.9643, 1.1407] |
| dice | 16.45 | 16.04 | 17.55 | 1.0438 [0.9294, 1.2122] |
| echo | 27.96 | 27.07 | 25.71 | 0.9545 [0.8388, 1.0291] |
| erdtree | 58.31 | 61.12 | 59.53 | 0.9236 [0.7185, 1.0244] |
| figlet | 47.45 | 49.24 | 50.50 | 1.0203 [0.9762, 1.0453] |
| fortune | 69.23 | 67.24 | 64.41 | 1.0230 [0.8418, 1.0482] |
| md5 | 27.80 | 28.17 | 28.91 | 1.1165 [0.9684, 1.2129] |
| pi | 25.51 | 25.70 | 26.52 | 1.0319 [0.9810, 1.2503] |
| pkg1 | 22.79 | 22.22 | 22.06 | 1.0127 [0.9110, 1.1124] |
| qr2text | 48.48 | 51.03 | 51.12 | 0.9953 [0.9432, 1.6370] |
| suggest | 105.80 | 94.73 | 107.00 | 1.1039 [1.0271, 1.1774] |
| tpl | 266.91 | 265.57 | 265.74 | 0.9895 [0.9615, 1.0499] |
| uuid | 87.34 | 89.96 | 87.64 | 0.9707 [0.8995, 1.1925] |
| viu | 240.93 | 254.96 | 254.65 | 0.9688 [0.8692, 1.1348] |
| atax | 74.23 | 70.80 | 73.78 | 1.0128 [0.9081, 1.1181] |
| bicg | 67.03 | 67.06 | 68.48 | 1.0866 [0.9930, 1.1965] |
| deriche | 7086.75 | 7440.01 | 8010.41 | 1.0375 [0.9845, 1.2386] |
| durbin | 39.03 | 37.88 | 38.75 | 1.0022 [0.9795, 1.0204] |
| gemver | 102.84 | 95.73 | 93.73 | 1.0451 [0.9433, 1.3597] |
| gesummv | 54.66 | 51.42 | 51.85 | 0.9711 [0.8272, 1.1407] |
| jacobi_1d | 30.63 | 30.26 | 29.11 | 0.9261 [0.7511, 1.0401] |
| mvt | 89.97 | 87.16 | 85.34 | 0.9707 [0.9097, 1.1075] |
| trisolv | 50.96 | 50.24 | 49.01 | 0.9756 [0.9542, 1.0167] |
| adi | 16309.64 | 18377.77 | 16248.86 | 0.9003 [0.8654, 0.9729] |
| gemm | 2802.60 | 2894.54 | 2626.35 | 0.9818 [0.8907, 1.0211] |
| 2mm | 8352.02 | 7867.73 | 7959.35 | 1.0274 [0.9320, 1.0530] |

## Independent confirmation of selected screen signals

Selected after the screen, not independent holdout inputs: base64cli, erdtree,
md5 and suggest. Independent random seed, 31 measured
rounds, one excluded warmup. Adds same-inode A/A FastRA and same-inode off/A/A
for default lazy. Percentile bootstrap, 10000 resamples; intervals are pointwise,
not corrected for screening selection or multiple comparisons. Seven-round
screen intervals (especially three-round large cases) are exploratory only.

| Case | Screen F both/off | Confirm F both/off [95% CI] | F A/A [95% CI] | Confirm D both/off [95% CI] | D A/A [95% CI] |
|---|---:|---|---|---|---|
| base64cli | 0.9353 | 1.0065 [0.9597, 1.0320] | 0.9964 [0.9753, 1.0471] | 1.0222 [1.0008, 1.0369] | 1.0280 [0.9714, 1.0682] |
| erdtree | 0.9236 | 1.0161 [0.9965, 1.0444] | 1.0039 [0.9914, 1.0396] | 1.0108 [0.9866, 1.0336] | 1.0144 [0.9844, 1.0616] |
| md5 | 1.1165 | 0.9997 [0.9431, 1.0597] | 1.0116 [0.9428, 1.0801] | 0.9543 [0.8604, 1.0225] | 0.9278 [0.8943, 1.0203] |
| suggest | 1.1039 | 0.9821 [0.9481, 1.0123] | 0.9929 [0.9625, 1.0279] | 0.9782 [0.9711, 0.9995] | 0.9989 [0.9721, 1.0112] |

## 2mm default-lazy confirmation

Independent seed 6531703, 11 measured rounds and one excluded warmup; only
default lazy main/off/A/A/both and WT45 were rerun. Timeout budget 120 seconds;
no timeout occurred. This cohort is separate from the 3-round screen and from
the WAPM confirmation, not pooled into either table.

| Main D ms | Off D ms | AA D ms | Both D ms | WT45 ms | Both/off [95% CI] | AA/off [95% CI] |
|---:|---:|---:|---:|---:|---|---|
| 2216.23 | 2190.77 | 2260.41 | 2194.12 | 2757.06 | 1.0035 [0.9440, 1.0272] | 1.0269 [0.9744, 1.0632] |

The screen's approximately 12% main/both median reduction did not replicate.
Within-round both/main is 0.9908 [0.9628, 1.0190]. No confirmed 2mm benefit.

Reproduce using `--cases 2mm --controls --variants
main-D,off-D,aa-D,both-D,WT45 --rounds 11 --long-rounds 11 --timeout 120
--seed 6531703` and a separate output directory.

## Output checks and limitations

Screen incomplete/failure cells: `{"adi": {"both-SP": {"count": 1, "exits": [null], "timeout": true}}}`.

PolyBench complete stdout/stderr hashes are compared exactly across engines
and configurations. WAPM exit status and hashes are retained, but its random,
time and filesystem-dependent outputs are not claimed to have independent
semantic validation. In particular, a successful exit alone is not a new
correctness proof. The prior oracle/contract/unit validations remain documented
in REPORT.md. Canonical output dumping is retained; no result-dump removal or
input-size reduction was used to improve a measured runtime.

## Reproduction

Run `suite_benchmark.py --main /path/main --candidate /path/candidate
--wasmtime /path/wasmtime45 --out /tmp/screen`. Use `--controls --rounds 31
--seed 6531702 --cases base64cli,erdtree,md5,suggest` and a
new output directory for the independent confirmation. Build configurations,
source hashes and candidate binary hashes are in the earlier build evidence.

## Untimed opportunity diagnostics

After all formal cohorts completed, ran mask3 with trace enabled in explicit
lazy-F-ST. Counts are compiler-emitted static instructions, not dynamic
execution frequency. Raw per-compilation counts and commands are in
`evidence/suite-diagnostics.json`.

| Case | Eligible recipes | Reload instructions replaced | Stores removed |
|---|---:|---:|---:|
| base64cli | 3709 | 0 | 0 |
| erdtree | 1806 | 0 | 0 |
| md5 | 427 | 0 | 0 |
| suggest | 2904 | 0 | 0 |
| bicg | 486 | 0 | 0 |
| 2mm | 474 | 0 | 0 |

All six have zero actual replacements despite eligible recipes. The restricted
rematerialization proof does not reach these benchmarks' spill/reload traffic;
recipe counts alone are not optimization benefits. DREAD cache effects, compiler
scan overhead and layout/noise must not be inferred from this diagnostic alone.

## Decision

The four WAPM FastRA screen signals did not replicate: all four confirmation
both/off intervals cover one. Default-lazy suggest has a small (~2.2%) favorable
pointwise interval, below the predeclared 3% promotion criterion; base64cli has
a similarly small unfavorable interval. Neither establishes a generally useful
policy. No benefit-attribution mask1/mask2 timings are justified, and neither
feature should be enabled by default.

A lower median than WT45 describes the measured subset, not a statistically
proven win: main SP/F/D are lower on 17/17 WAPM cases; main SP/F/D are lower on
4/12, 7/12, 12/12 PolyBench cases respectively. These are not whole-suite claims
and do not represent benefits from the experimental changes.

Ratios in the tables use within-round ratios and need not equal the quotient
of two separately computed group medians. Screen intervals with only three or
seven rounds are exploratory. Source/runtime configuration is unchanged between
screen and confirmation; binary hashes match. Confirmation runs occurred in a
later measurement window with the same CPU model and cgroup quota; cohort
absolute times must not be combined.
