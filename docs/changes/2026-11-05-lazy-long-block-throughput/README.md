# Change: Bound long-block compiler searches

- **Status**: Implemented
- **Date**: 2026-11-05
- **Tier**: Light

## Decision and review scope

Prepare a focused PR against upstream main
`f4b85073d2cc9df4fe5eeeb460fdcc3f093ef371` with two related compiler-throughput
changes: index completed local assignments in long MIR blocks, and bound FastRA
call-regmask assignment discovery by physical register units. Three production
files change; no MC lifecycle, tiering policy, compilation budget, ABI, code
publication, teardown or guest-code quality heuristic is changed.

The user requested continuing until the PR is reviewable and has measured benefit,
and requires main/master, the latest experiment and Wasmtime in each comparison.
Upstream uses main. Every performance phase includes main, previous research
28ad2de, this clean candidate, Wasmtime 45.0.0 and Wasmtime 49.0.5. The previous
research additionally contains experimental bounded MC reuse; it is intentionally
not part of this PR. Do not attribute the research version's full gain to the PR.

The strongest verified result is a two-function module with 10000 calls to one
helper. Serial lazy FastRA improves 1222.430→247.839 ms (-79.73%, paired 95%
interval [-80.53%, -79.08%]); default lazy foreground-FastRA/background-Greedy
improves 2721.288→820.709 ms (-69.84%, [-70.95%, -68.19%]). Thus the gain is not
restricted to initialization of thousands of helpers or to serial policy.
These are total cold-process times for generated long blocks, not steady-state
execution rates. Ordinary WAPM cases do not establish a general improvement.

## Implementation and correctness review

For MIR blocks with at least 32 statements, retain the nearest completed direct
assignment for each variable. Update after rewriting RHS operands so self-updates
observe the preceding value. Dynamic assignments replace earlier constants.
Read the current RHS through the assignment pointer; reset only touched entries
between blocks, and clear function state when the pass is reused. Short blocks
retain prefix scanning. The index uses O(function variables) storage once per
function, with O(touched variables) clearing per block. No new variables are
created during the indexed rewrite; existing FP hoisting runs afterward.

FastRA retains spilled virtual entries with PhysReg=0 until block completion.
Repeated calls previously scanned the entire growing dense set. For large sets,
find current assignments through the physical-unit map, deduplicate aliases,
and sort by position in the same contiguous array before displacement. This
preserves original spill/reload order and deterministic register choices.
Displacement clears assignments without inserting/erasing dense entries, keeping
the collected pointers valid. Small sets retain the original loop. Temporary
storage is bounded by physical units, independent of the virtual set size.

Four semantic MIR tests cover self-update ordering, a dynamic write killing a
constant, block isolation, and pass reuse across functions. A generated 512-call
integer/floating fixture checks exact results and repeat calls under eager FastRA
and serial lazy FastRA. Existing publication, trap and C API tests remain in place.
The compiler contract is in docs/modules/compiler/spec.md.

## Why MC reset changes remain separate

The prior profiling identified context initialization as substantial fixed cost.
Review of LLVM 15's APIs and source shows that MCObjectStreamer::reset clears
assembler collections and stream state, while MCContext::reset destroys sections,
fragments and symbols. Assembler reset alone leaves existing sections' registration
flags set, so skipping context reset does not give a fresh object. The public
MCObjectFileInfo initializer configures format metadata together; its context
pointer is private. A partial initializer or persistent-section reuse needs its
own lifecycle design and optional debug/perf coverage.

The ELF initializer has 55 getELFSection call sites in the referenced 15.0.7 source
(static source count, not actual sections per run). The installed compiler uses
LLVM 15.0.6; this source review supplements the installed public-header review,
not a modified LLVM dependency. References/hashes and the decision are retained
in data/mc-review.json. No partial reset or copied stale metadata enters the PR.
Main-to-candidate results below independently verify the scoped change without
experimental MC reuse.

## Measurement method

AMD EPYC 9V74; x86-64 Linux; GCC 14.2; LLVM 15.0.6; Release; both JITs and checked
arithmetic ON; timing build SPEC/ASan/EVM/perf OFF. CPU quota 2, memory limit 8 GiB.
All processes and inherited compilation workers are pinned to CPU 0. Default-MT
therefore means its policy on one allowed core, not unrestricted multicore scaling.
Build flags are retained in data/build-config.json.

Each observation is parent pre-spawn through child exit, including runtime
teardown and background join. Fresh process, warm file cache, no persistent
module cache; Wasmtime explicitly receives -C cache=n. Randomize variant order
within each round; exclude one warmup per case/variant. No builds, profiling,
code capture or AOT diagnostics ran during formal timing. Exact commands, binary
and input SHA256, source IDs, seed and affinity are in every phase manifest.

All tables are median milliseconds. Same-row engines come from the same phase;
absolute numbers must not be pooled across phases. DTVM can defer cold functions,
whereas Wasmtime compiles the whole module: this is same-Wasm CLI latency, not
identical amounts of compiler work. Intervals are paired same-round bootstrap
ratios of medians, 10000 resamples, seed 20261117, without multiplicity correction.
Full intervals are in each phase's summary-vs-main.json.

## Serial lazy FastRA: 21 measured rounds

| Case | Main | Previous research | PR candidate | WT 45 | WT 49 |
|---|---:|---:|---:|---:|---:|
| call10000 | 1222.430 | 245.034 | 247.839 | 1431.906 | 1425.543 |
| hot1000 | 76.012 | 64.998 | 73.137 | 52.536 | 49.457 |
| hot10000 | 1852.595 | 739.298 | 821.089 | 1806.611 | 1816.429 |
| hot5000 | 577.169 | 314.363 | 352.983 | 484.925 | 486.277 |

Main-to-PR changes: hot1000 -3.78% ([-15.19%, -1.81%]), hot5000 -38.84%
([-41.98%, -35.25%]), hot10000 -55.68% ([-57.50%, -52.98%]), call10000 -79.73%.
The previous MC-reuse research remains faster on many-helper inputs. For the
two-function call10000 case, the clean PR and research version are much closer.
All synthetic inputs check the guest-memory sum and trap if it is wrong.

## Default lazy background-Greedy policy: 15 measured rounds

| Case | Main | Previous research | PR candidate | WT 45 | WT 49 |
|---|---:|---:|---:|---:|---:|
| call10000 | 2721.288 | 801.650 | 820.709 | 1463.086 | 1484.858 |
| hot1000 | 122.299 | 98.414 | 104.266 | 55.106 | 54.180 |

Hot1000 improves -14.75% ([-18.99%, -4.76%]); call10000 improves -69.84%.
DTVM still trails Wasmtime on the smaller hot1000 input. No claim that these
compiler optimizations improve steady-state code execution follows from the table.

## Expanded WAPM: 11 measured rounds

| Case | Main | Previous research | PR candidate | WT 45 | WT 49 |
|---|---:|---:|---:|---:|---:|
| amirali | 6.229 | 5.953 | 6.269 | 6.535 | 5.891 |
| base64cli | 117.595 | 111.592 | 124.279 | 480.713 | 506.369 |
| chkfont | 42.556 | 40.660 | 41.252 | 80.014 | 82.527 |
| code-stock | 26.309 | 24.819 | 24.982 | 93.809 | 94.795 |
| dice | 21.757 | 22.197 | 22.681 | 38.431 | 38.261 |
| echo | 29.610 | 29.033 | 27.855 | 39.228 | 39.042 |
| figlet | 50.892 | 49.820 | 51.552 | 113.884 | 113.638 |
| irb | 4196.437 | 4220.104 | 4259.787 | 10327.414 | 11225.740 |
| pkg1 | 24.740 | 24.190 | 25.039 | 86.946 | 89.566 |
| qr2text | 53.809 | 52.545 | 54.533 | 124.821 | 131.490 |
| suggest | 109.875 | 107.793 | 109.779 | 478.244 | 499.185 |
| tpl | 296.158 | 311.816 | 307.780 | 831.227 | 887.529 |

Before timing, nine additional WAPM catalog cases were checked on all five engines;
all 45 untimed compatibility runs succeeded with matching captured outputs. The
selection was based on deterministic inputs and compatibility, not speed. The
expanded phase includes those nine plus echo/base64cli/tpl controls. IRB is a
17 MB Ruby module; Wasmtime cold compilation makes this phase substantially
longer than small CLI cases.

No stable WAPM acceleration is established. Several medians are slower. Dice's
initial +4.24% interval [1.31%, 9.04%] required an independent regression check.
That signal was not reproduced as a stable effect in the following 51-round phase;
this does not prove equivalence or zero overhead. Both phases are preserved.

## Independent short-case check: 51 measured rounds

| Case | Main | Previous research | PR candidate | WT 45 | WT 49 |
|---|---:|---:|---:|---:|---:|
| dice | 21.979 | 21.803 | 22.214 | 38.516 | 38.021 |
| echo | 25.480 | 25.404 | 25.584 | 35.399 | 36.200 |
| pkg1 | 25.338 | 24.519 | 25.690 | 90.707 | 93.487 |

Dice: +1.07%, [-1.44%, +5.94%]; echo: +0.41%, [-1.89%, +2.27%]; pkg1: +1.39%,
[-1.65%, +5.55%]. No source or threshold was retuned between these phases.
The PR claim remains bounded long-block compilation benefit, not universal gains
or a demonstrated application non-regression bound.

## Fresh assembly evidence

A separate mprotect capture compares main with the clean candidate on call10000,
serial FastRA. Helper code is byte-identical. The root and shared stub match after
masking only three eight-byte absolute MOVABS operands, with opcodes checked.
All other bytes, including page padding, match. Exact normalized hashes and
operand offsets are in data/native-validation.json. This demonstrates host
compiler savings on this case, with unchanged guest instructions.

Separately generated Wasmtime AOT artifacts use the same input, versions and
default compiler configuration. They were not loaded during timing. The static
root-function comparison is:

| Root function metric | DTVM FastRA | Wasmtime 45 | Wasmtime 49 |
|---|---:|---:|---:|
| Native bytes | 319977 | 291002 | 291002 |
| Instructions | 70032 | 60037 | 60037 |
| Call instructions | 10002 | 10000 | 10000 |
| Instructions with rbp/rsp memory operands | 30010 | 20001 | 20001 |
| Final rsp frame subtraction, bytes | 40032 | 80016 | 80016 |

The Wasmtime prologue also probes pages using a loop; static instruction counts
are not dynamic access counts. ABI, trap lowering, and stack probing differ.
DTVM is post-link JIT capture; Wasmtime is unrelocated AOT text. Selected actual
assembly is in asm/, and the supplied inspection script records the commands.
Do not infer execution speed or memory footprint from these counts. The additional
FastRA spill/copy instructions are a possible separate future code-quality target;
this PR deliberately preserves the generated instruction sequence.

## Verification, provenance and reproduction

- Production Release build succeeded; source/binary provenance is in data/source.json.
- 7/7 CTest suites passed, including the five new semantic/stress tests.
- 97 WAST groups passed lazy default-MT through CTest; 97 passed eager Greedy;
  97 passed eager FastRA/ST. Canonical spec preparation was applied and reversed.
- 26 harness tests passed. clang-format and diff whitespace checks passed.
- ASan and optional EVM, SGX and Linux-perf feature configurations were not built.
- 2100 formal-phase processes: 1995 measured plus 105 warmups, all exit zero.
  Every captured stdout/stderr hash is verified, stable per variant, and matching
  across all engines for these inputs. Untimed compatibility and diagnostics are
  excluded from those counts. See data/output-audit.json and all raw samples.

Evidence is kept on a separate branch so the proposed PR can contain just the
three compiler files, tests, compiler contract and a short summary. The production
source in this evidence snapshot is identical to the proposed PR's source patch.
Earlier exploratory/rejected experiments remain on perf/lazy-link-iteration and
perf/lazy-compiler-iteration; they are not silently combined into this PR.

Run the scripts from repository root. Build/freeze main, previous 28ad2de, and the
candidate with matching options, then place binaries at the paths in scripts/bench.py
(or update those paths). The same script requires main, an experiment, and at least
one Wasmtime in every phase. Regeneration reproduces all four timed synthetic
input hashes; original catalog absolute paths refer to this workspace.

```sh
python3 docs/changes/2026-11-05-lazy-long-block-throughput/scripts/make_cases.py
python3 docs/changes/2026-11-05-lazy-long-block-throughput/scripts/bench.py \
  --extra-catalog work/pr-complete/regenerated-catalog.json \
  --cases hot1000,hot5000,hot10000,call10000 \
  --variants main-F,previous-F,candidate-F,wt45,wt49 --repeats 21 \
  --seed 20261128 --candidate-source 'clean PR' --out work/pr-complete/reproduce
python3 docs/changes/2026-11-05-lazy-long-block-throughput/scripts/summarize.py \
  work/pr-complete/reproduce main-F candidate-F
```

Use the manifests for the default-MT and WAPM invocations and fixed seeds.
Native binaries, AOT artifacts and raw executable pages are not committed;
source patches, normalized hashes, diagnostic assembly excerpts, all timing rows,
captured outputs and tests are retained.
