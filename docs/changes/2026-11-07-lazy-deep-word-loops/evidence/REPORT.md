# PR #642: post-rebase full benchmark and review

Date: 2026-11-07 (Asia/Shanghai). PR #642 is merged as af4b07b22adf9f08586f9dd08adb1d57a07cce51. Its complete source tree equals measured head e678e1ee9b2d921b0079d33c00be768186d886de (tree 04abe5b1a2cbf8890a1c007f4d77eddb0e535237). The before-merge baseline is 59fe3cc9ec0c9cf3c06c411c4ed1fb0b2460ff9c, including #641.

## Findings and interpretation

No definite new runtime correctness defect was found in the reviewed production changes. All 30 PolyBench cases completed on all three engines with identical full stdout/stderr hashes. All 16 combined lazy JIT unit tests were rerun and passed. This does not establish correctness on all hosts or workloads.

P2: the committed benchmark.py at docs/changes/2026-11-06-lazy-numeric-loop-firstcall/benchmark.py:67 hardcodes main_commit=193b8d2 even when --main selects another build. This mislabels experiments against 59fe3cc or later. Record explicit user-supplied revisions (or unknown), alongside executable hashes. This report uses an independent archived driver with actual frozen revisions and raw byte output hashes.

Coverage gap: the two selected numeric fixtures call a helper outside their qualifying loop, so they are not eligible for #641 private promotion. Turning private tiering on therefore does not directly exercise the guard that prevents a function already selected for initial Greedy from installing a private FastRA profiling gate. Add a pure FP positive with enough live values to spill, low thresholds and assertions against private probing.

The 3-round durbin +28% screen did not replicate: 21 new rounds favor the merged implementation in every paired round. The WAPM pi/qr2text/uuid negatives also did not replicate. Suggest/viu group medians can look 5–8% worse, but paired intervals cross 1; neither regression nor equivalence is established. Floyd screen +5.4% did not replicate in the independent mode cohort. All negative screens remain in raw samples.

Integer mode controls identify a new opportunity: serial lazy (configured Greedy) is much faster than default lazy MT for Floyd/Nussinov. This changes threading AND allocator mode, so it is an ablation/hypothesis, not proof that a new MT policy is profitable. A separate production candidate and startup checks are needed before a new optimization PR.

## Protocol

Fresh processes, warm file-page cache, one excluded warmup per case/engine (round -1), randomized within-round order, CPU 0 including workers. DTVM is Release GCC 14.2 / LLVM15, multipass lazy MT, private tiering default OFF. Wasmtime 45 cache disabled (-C cache=n). Main and merged binaries use identical production build options; SPEC/ASAN/EVM/profiling/logging/perf OFF, WASI and checked arithmetic ON. Timing runs had no concurrent builds/tests/profiles. Exact options, inputs and commands are in environment.json and each manifest.

Wall time includes spawn, startup, compilation, execution, captured output and teardown, including full PolyBench matrix printing. Hashing/compression are outside the timed boundary. This is not isolated kernel timing. Wasmtime45 is the existing repository artifact, not independently rebuilt here. One Linux x86-64 host/affinity setup is not a multi-host claim.

An environment restart interrupted the first integer-mode warmup, before any timed round. integer-modes-r3 is explicitly incomplete and excluded; its raw sample remains. integer-modes-resumed-r3 starts afresh with a new seed and recorded resumed environment. Completed earlier cohorts are retained separately, never pooled.

Group medians and within-round paired median ratios are different statistics. Intervals below use 10,000 percentile bootstrap resamples of within-round ratios, fixed seed 2026110742, pointwise 95% without multiple-comparison correction. Three-round screens are exploratory; their intervals should not be read as precise significance claims.

Frozen main SHA256: ed77ecc2816738e2a7a8c97de3a8ea991da32a252624b43bb1fdb815e1f2ecfd. Merged-implementation SHA256: 7e0e041f0faaa461feb8f651df77886882167a68f73e50a43251354382965002. All engine hashes are in manifests.

## Matrix confirmation: 9 rounds

Milliseconds; change is ratio of group medians, not paired median ratio.

| Case | Before #642 | Merged lazy MT | WT45 | Change vs baseline |
|---|---:|---:|---:|---:|
| 2mm | 8099.020 | 2579.474 | 3287.629 | -68.2% |
| gemm | 2825.118 | 1944.994 | 2634.237 | -31.2% |

| Case | Paired merged/baseline | 95% interval | Paired merged/WT45 | 95% interval |
|---|---:|---:|---:|---:|
| 2mm | 0.3148 | [0.2867, 0.3476] | 0.8222 | [0.7604, 0.8809] |
| gemm | 0.6669 | [0.6536, 0.7241] | 0.7522 | [0.6758, 0.7811] |

## All 30 PolyBench: 3-round screen

Milliseconds; change is ratio of group medians, not paired median ratio.

| Case | Before #642 | Merged lazy MT | WT45 | Change vs baseline |
|---|---:|---:|---:|---:|
| 2mm | 9565.372 | 3159.235 | 3831.388 | -67.0% |
| 3mm | 14235.899 | 4666.924 | 5190.080 | -67.2% |
| adi | 17560.789 | 14335.502 | 13532.654 | -18.4% |
| atax | 82.890 | 68.917 | 67.326 | -16.9% |
| bicg | 96.296 | 97.402 | 90.077 | +1.1% |
| cholesky | 27581.213 | 16926.678 | 19366.058 | -38.6% |
| correlation | 8444.882 | 5654.619 | 5840.646 | -33.0% |
| covariance | 8066.042 | 5141.090 | 6253.673 | -36.3% |
| deriche | 9348.490 | 9274.028 | 15567.000 | -0.8% |
| doitgen | 5027.770 | 3842.322 | 6058.101 | -23.6% |
| durbin | 44.225 | 56.713 | 50.990 | +28.2% |
| fdtd-2d | 6466.525 | 5069.339 | 7095.368 | -21.6% |
| floyd-warshall | 37874.189 | 39904.324 | 27445.147 | +5.4% |
| gemm | 2963.302 | 1963.574 | 2972.622 | -33.7% |
| gemver | 110.768 | 89.232 | 79.056 | -19.4% |
| gesummv | 68.554 | 66.077 | 64.261 | -3.6% |
| gramschmidt | 9282.308 | 5380.582 | 6513.068 | -42.0% |
| heat-3d | 7298.563 | 5670.720 | 6857.370 | -22.3% |
| jacobi-2d | 6886.817 | 5071.254 | 6824.594 | -26.4% |
| jacobi_1d | 38.344 | 37.409 | 50.306 | -2.4% |
| lu | 36633.284 | 20640.133 | 23837.992 | -43.7% |
| ludcmp | 31529.928 | 16521.147 | 16141.826 | -47.6% |
| mvt | 115.824 | 90.579 | 89.376 | -21.8% |
| nussinov | 10922.977 | 11254.418 | 8155.169 | +3.0% |
| seidel-2d | 30906.220 | 23392.952 | 26075.269 | -24.3% |
| symm | 4203.488 | 2209.017 | 3231.629 | -47.4% |
| syr2k | 4583.210 | 3265.502 | 4083.821 | -28.8% |
| syrk | 2701.383 | 2039.111 | 2816.000 | -24.5% |
| trisolv | 54.255 | 51.976 | 53.886 | -4.2% |
| trmm | 3837.127 | 2008.274 | 2375.303 | -47.7% |

## All 20 WAPM: 7-round screen

Milliseconds; change is ratio of group medians, not paired median ratio.

| Case | Before #642 | Merged lazy MT | WT45 | Change vs baseline |
|---|---:|---:|---:|---:|
| amirali | 7.606 | 6.995 | 7.929 | -8.0% |
| base64cli | 142.316 | 141.711 | 593.210 | -0.4% |
| chkfont | 51.276 | 47.178 | 89.138 | -8.0% |
| code-stock | 31.929 | 31.526 | 132.273 | -1.3% |
| cowsay | 165.131 | 165.404 | 537.962 | +0.2% |
| dice | 25.876 | 26.284 | 45.930 | +1.6% |
| echo | 32.439 | 31.191 | 44.038 | -3.8% |
| erdtree | 62.632 | 60.773 | 173.371 | -3.0% |
| figlet | 56.684 | 54.233 | 119.687 | -4.3% |
| fortune | 78.737 | 81.337 | 145.798 | +3.3% |
| irb | 4756.323 | 4901.680 | 12949.932 | +3.1% |
| md5 | 32.106 | 31.765 | 48.829 | -1.1% |
| pi | 31.860 | 34.033 | 46.376 | +6.8% |
| pkg1 | 28.192 | 27.176 | 100.227 | -3.6% |
| qr2text | 60.756 | 65.172 | 144.357 | +7.3% |
| sam | exit 1 | exit 1 | exit 1 | excluded |
| suggest | 120.159 | 122.717 | 542.691 | +2.1% |
| tpl | 357.405 | 355.252 | 969.592 | -0.6% |
| uuid | 108.343 | 115.301 | 613.356 | +6.4% |
| viu | 327.253 | 319.838 | 1657.548 | -2.3% |

## Startup and negative-screen confirmation: 21 rounds

Milliseconds; change is ratio of group medians, not paired median ratio.

| Case | Before #642 | Merged lazy MT | WT45 | Change vs baseline |
|---|---:|---:|---:|---:|
| base64cli | 147.148 | 146.266 | 582.650 | -0.6% |
| cowsay | 172.004 | 178.538 | 567.104 | +3.8% |
| durbin | 42.985 | 36.415 | 49.676 | -15.3% |
| md5 | 30.112 | 29.632 | 45.070 | -1.6% |
| pi | 32.720 | 33.247 | 50.305 | +1.6% |
| qr2text | 58.153 | 58.278 | 136.008 | +0.2% |
| suggest | 118.457 | 127.530 | 504.487 | +7.7% |
| uuid | 91.076 | 91.689 | 516.397 | +0.7% |
| viu | 268.085 | 282.530 | 1344.270 | +5.4% |

| Case | Paired merged/baseline | 95% interval | Paired merged/WT45 | 95% interval |
|---|---:|---:|---:|---:|
| base64cli | 0.9715 | [0.9485, 1.0105] | 0.2482 | [0.2367, 0.2550] |
| cowsay | 1.0354 | [0.9800, 1.1134] | 0.3263 | [0.3111, 0.3444] |
| durbin | 0.8562 | [0.8174, 0.8653] | 0.7341 | [0.7099, 0.7521] |
| md5 | 0.9952 | [0.9573, 1.0280] | 0.6628 | [0.6459, 0.6737] |
| pi | 1.0107 | [0.9131, 1.0356] | 0.7185 | [0.6500, 0.7394] |
| qr2text | 0.9846 | [0.9719, 1.0557] | 0.4356 | [0.4236, 0.4416] |
| suggest | 1.0110 | [0.9669, 1.0708] | 0.2388 | [0.2183, 0.2459] |
| uuid | 1.0214 | [0.9682, 1.0568] | 0.1797 | [0.1756, 0.1881] |
| viu | 1.0233 | [0.9723, 1.0729] | 0.2105 | [0.1925, 0.2163] |

## Integer mode control: 3 rounds after restart

Milliseconds; change is ratio of group medians, not paired median ratio.

| Case | Before #642 | Merged lazy MT | WT45 | Change vs baseline |
|---|---:|---:|---:|---:|
| floyd-warshall | 37236.566 | 36697.637 | 26735.927 | -1.4% |
| nussinov | 10809.558 | 10805.595 | 9319.853 | -0.0% |

| Case | Merged lazy MT | Same binary serial Greedy | WT45 |
|---|---:|---:|---:|
| floyd-warshall | 36697.637 | 22718.323 | 26735.927 |
| nussinov | 10805.595 | 8101.589 | 9319.853 |

## Output and validation limits

WAPM sam returns 1 on all three engines under the catalog invocation; it is recorded once per engine and excluded from performance medians. Its stdout contains non-UTF8 bytes; the runner captures bytes without decoding loss. Fortune and UUID text varies naturally; other successful WAPM full outputs are identical across engines/rounds. IRB actually computes 3+4 => 7 with matching prompts/results. Amirali prints its contact text (including NUL padding). No input was silently replaced to manufacture a speedup.

Executable artifacts and compressed/deduplicated full outputs remain in the execution workspace. The public archive retains every timing/exit/hash sample, commands, environment, output byte counts/previews and analysis scripts, without uploading repeated huge matrices. Empty/review format and older WAST/MIR logs from prior work are not represented as new reruns. This task reran 16 lazy tests and rebuilt both production revisions.
