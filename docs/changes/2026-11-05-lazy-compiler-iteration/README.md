# Change: Bound MC state reuse in lazy compilation

- **Status**: Implemented
- **Date**: 2026-11-05
- **Tier**: Light

## Decision

Retain bounded reuse of the worker-local LLVM MCContext and MC streamer for
successive lazy objects. Reuse only after successful finalization and when the
previous native text is at most 64 KiB. Rebuild both MC objects for an unfinished
compile or a larger previous text. This is a cache admission rule, not a limit
on guest size. The user authorized continuing measured optimization iterations.
Base: `f4f7cef` on `research/lazy-shortcase`; implementation branch:
`perf/lazy-compiler-iteration`.

The evidence supports compilation-throughput gains for many tiny functions in
serial lazy FastRA. It does **not** establish a general WAPM speedup with the
default background Greedy policy. Do not describe these results as execution
speedups or extrapolate them to other architectures. Compiler contract:
[compiler spec](../../modules/compiler/spec.md).

## Implementation and review

Previously each lazy object destroyed/recreated MCContext and MCLowering.
Completed small objects now reset MCContext, reattach object-file information,
and initialize new sections using the existing streamer. `finalize()` resets
streamer state before MCContext can invalidate its symbols and fragments.
Per-function lowering pointers are cleared; each worker owns its own objects.
An unfinished compile takes the original destruction/recreation path.

The 64 KiB bound was selected after an unbounded prototype regressed on a
10000-helper stress input. It separates that input's large root from the
1000-helper root (31977 bytes). It is a conservative initial guard, not a proven
optimal threshold. Retained high-water MC table capacity is a plausible reason
for the unbounded regression, but this experiment does not isolate the exact
LLVM internal structure responsible. No codegen pass, relocation rule, stub
publication policy, trap/gas check, scheduling policy or teardown was removed.

Three MC tests cover 100 consecutive objects with distinct symbols/immediates,
a partially emitted abandoned object, and a large-to-small-to-small transition.
They parse ELF text and function symbols, rather than only observing process exit.

## Method

AMD EPYC 9V74; Linux x86-64; 2-CPU cgroup quota; CPU 0 affinity; LLVM 15;
Release; checked arithmetic; ASan disabled. Each sample is a fresh process from
parent pre-spawn through child exit, including teardown. Page cache is warm.
Wasmtime 45 cache is disabled. Variant order is randomized within each round;
one warmup per case/variant is excluded. No engine builds or diagnostic capture
ran concurrently with the final timing phases. Background threads inherit CPU 0.

`lazy-F-ST` explicitly disables Greedy and multithreading. `lazy-G-MT` is the
normal lazy FastRA foreground/background Greedy policy. These must not be pooled.
Reported intervals are paired, same-round bootstrap intervals for the ratio of
medians (10000 resamples, seed 20261117), not intervals for per-sample ratios.
These exploratory comparisons have no multiple-comparison correction.

## Bounded reuse: serial lazy FastRA

15 measured rounds per cell; separate seeds for the held-out 5000-helper input.
Milliseconds; negative changes are faster. All synthetic inputs call every helper,
store their sum to guest memory and trap if it is incorrect.

| Case | Base | Bounded reuse | Change | Paired 95% interval |
|---|---:|---:|---:|---:|
| hot1000 | 68.362 | 63.775 | -6.71% | [-10.92%, -1.98%] |
| hot5000, held out | 452.301 | 419.643 | -7.22% | [-9.13%, -1.66%] |
| hot10000 | 1089.183 | 1041.276 | -4.40% | [-7.28%, +2.03%] |
| base64cli | 115.984 | 112.319 | -3.16% | [-6.21%, -0.08%] |
| tpl | 269.478 | 266.790 | -1.00% | [-4.29%, +5.58%] |

The hot5000 input was generated after fixing the bound, without retuning it.
The evidence does not establish an improvement for hot10000 or tpl. The base64
interval only narrowly excludes zero and merits another machine before claiming
a reliable application gain.

## Default lazy policy versus Wasmtime

Independent 21-round confirmation, seed 20261116. These are fresh-process total
times for the same Wasm inputs, not steady-state guest execution measurements.
Wasmtime compiles all functions; lazy DTVM compiles a subset and may tier them.

| WAPM case | DTVM base | DTVM bounded | Wasmtime 45 | DTVM change |
|---|---:|---:|---:|---:|
| echo | 27.750 | 27.039 | 38.979 | -2.56% |
| md5 | 29.374 | 29.600 | 43.526 | +0.77% |
| pi | 29.184 | 28.508 | 42.747 | -2.32% |
| base64cli | 120.569 | 123.345 | 523.857 | +2.30% |
| cowsay | 131.703 | 133.742 | 427.719 | +1.55% |
| tpl | 327.131 | 324.158 | 912.451 | -0.91% |

**Every DTVM change interval includes zero**; see the full summary JSON.
DTVM remains faster on these CLI startup workloads, but this patch has not
measurably widened that advantage. Wasmtime 49 and earlier codegen comparisons
remain in the [previous report](../2026-11-05-lazy-shortcase/README.md); they are
not fresh measurements from this iteration.

## Assembly and lifecycle evidence

A separate LD_PRELOAD mprotect capture on hot1000 lazy-F-ST produced 1002
executable buffers per variant. All 1000 helper buffers are byte-identical.
The remaining shared stub and root buffers differ only in one and two absolute
MOVABS address operands, respectively. After verifying `48 b8` opcode bytes and
zeroing those explicit eight-byte operands, the complete buffers, including
padding, have matching hashes. No instruction changes explain this improvement.
Capture ran outside timing; it is not used as a performance sample.
See `data/assembly-validation.json`, `data/code-comparison.json`, and
`scripts/capture_jit.c`. The guest code shape remains the same as the previous
Wasmtime assembly comparison. This iteration attacks repeated host MC setup.

Separate nine-round peak RSS observations for the **unbounded** prototype:
echo 28256→28336 KiB; tpl 48824→48868 KiB; hot1000 41240→41284 KiB.
There is no measured peak-memory reduction. Bounded reuse was not RSS-profiled.

## Rejected prototypes and complete experiment ledger

Keep all phases, including negative and ambiguous results:

| Phase | Variants | Cases × rounds including warmup | Processes |
|---|---|---:|---:|
| smoke | base, FastRA DCE, initial reuse | 3 × 2 × 3 | 18 |
| grid-r7 | base, DCE, initial reuse, WT45 | 12 × 8 × 4 | 384 |
| confirm-r21 | base, safe unbounded reuse, WT45 | 10 × 22 × 3 | 660 |
| short-confirm-r31 | MT/ST base/reuse, WT45 | 4 × 32 × 5 | 640 |
| serial-confirm-r15 | ST base/unbounded | 4 × 16 × 2 | 128 |
| bounded-r15 | ST base/unbounded/bounded | 4 × 16 × 3 | 192 |
| heldout-r15 | ST base/unbounded/bounded | 1 × 16 × 3 | 48 |
| final-mt-r21 | MT base/bounded, WT45 | 6 × 22 × 3 | 396 |

Total: **2466 timing processes**, 2318 measured and 148 warmups, all successful;
plus 60 separate RSS processes. Output hashes are stable within each variant.
Across variants stdout matches except fib_iter_dev, whose DTVM hexadecimal typed
result `0xcb228:i64` equals Wasmtime's decimal 832040. This is an engine formatting
difference; Wasmtime also emits its standard invoke-argument warning.

FastRA pre-RA DCE did not show consistent gains in the initial grid, so it was
not retained or combined. Initial unbounded reuse had an apparent MD5 improvement
in 21 rounds, but the subsequent 31-round confirmation did not establish it.
Unbounded reuse **regressed** hot10000 in two serial phases: 1048.153→1229.698 ms,
then 1089.183→1260.794 ms. In the latter phase bounded reuse was 1041.276 ms.
All rejected code is in `experiments/`, not in the production compiler pipeline.
Patch text is stored losslessly in JSON (`patch` field) to preserve diff context
whitespace; extract the field before applying. Captured stdout/stderr strings are
likewise preserved in per-phase `outputs.json`, matching the raw sample hashes.

## Verification

- Release production engine built successfully; the timed bounded binary is
  recorded by SHA256 in each manifest.
- Final bounded source: 7/7 root CTest suites passed, including the three new
  MC lifecycle tests, lazy publication tests, MIR, C API, and spec coverage.
- 97 WAST groups passed with lazy-G-MT through CTest; 97 passed eager Greedy;
  97 passed FastRA/ST. Canonical test preparation patch was applied and reversed.
- 26 Python harness tests passed. clang-format verification passed.
- No ASan, optional EVM or Linux perf configuration was built in this iteration.
  Dwarf/perf reset fields are guarded and cleared, but those configurations still
  need coverage before broader rollout.

## Reproduction and next targets

The scripts assume repository root as cwd and available LLVM/Wasmtime tools.
Build baseline from f4f7cef and candidate from this branch with the same Release
CMake options. Place frozen binaries at the paths in `scripts/bench.py`; configure
Wasmtime 45 at its recorded path. Manifests record exact commands, input/binary
hashes, affinity, mode, seed and timing boundary. The original absolute input paths
in catalogs refer to this workspace; regenerate or adjust them on another machine.
The earlier report contains the hot1000 generator and synthetic catalog.

```sh
python3 scripts/make_stress.py 10000
python3 scripts/make_stress.py 5000
python3 scripts/bench.py --extra-catalog work/iteration/stress-catalog.json \
  --cases hot1000,hot10000,base64cli,tpl --variants base-F,safe-F,bounded-F \
  --repeats 15 --seed 20261114 --out work/iteration/reproduce-bounded
python3 scripts/summarize.py work/iteration/reproduce-bounded base-F bounded-F
```

Here `scripts/` means this report's script directory, not repository root's scripts.
`safe-F` requires rebuilding the unbounded experiment from the base with its patch.
Every retained data folder includes manifests and raw samples; summaries can be
regenerated with the supplied summarizer. The runner's unused `combo` entry is a
placeholder, never built or measured. A failed initial runner invocation included
codestock without its extra catalog; it failed catalog validation before spawning
any timed process, then was corrected to the six available WAPM cases.

Next, isolate per-function fixed costs in ELF parsing, relocation and executable
page allocation/protection using separate instrumentation, then test a direct
emission or batched linking prototype. The unchanged 1000 tiny helpers still pay
per-object setup and page publication costs; that is a stronger lead than more
FP frame tuning for these inputs. Preserve trap metadata, W^X transitions and
publication ordering, and compare both serial and background modes. Benchmark
64 KiB admission independently on another CPU and cover the optional builds
before presenting the patch as a general default-policy improvement.
