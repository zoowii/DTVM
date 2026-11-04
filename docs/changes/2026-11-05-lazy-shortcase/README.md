# Research: Short-case lazy multipass JIT latency

- **Status**: Implemented
- **Date**: 2026-11-05
- **Tier**: Light

## Objective and scope

The user requested deeper WAPM/simple-case lazy multipass vs Wasmtime performance,
actual generated-code comparisons and empirically verified optimization.
Base `d9dd7b5` includes the reviewed scalar conversion fix; private-function
promotion is absent. This branch adds only a compiler lookup index, regression
tests and research evidence. Diagnostic instrumentation and rejected prototypes
are preserved as patches, not enabled in production sources.

## Method and evidence

AMD EPYC 9V74, three visible CPUs, two-core cgroup quota, 8 GiB RAM. Every timed
sample is a fresh process pinned to **CPU 0**, including its compiler threads.
This is a single-CPU latency experiment, not a multicore-throughput comparison.
Page cache is warm; Wasmtime's module cache is disabled. All runtimes receive
the same Wasm, entry, argv, directories and stdin. Wall time includes compilation,
execution, output and normal cleanup. Diagnostics/captures are separate from
formal timing; builds do not run concurrently with formal samples.

[Raw observations and manifests](measurements.json), [paired summaries](summary.json),
[actual assembly excerpts](assembly.md), [reproduction scripts](scripts/) and
[experimental patches](experiments/) are committed together. There are **2688
successful processes: 2466 measured and 222 warmups**. Deterministic WAPM and
synthetic outputs match byte-for-byte across variants. `fortune`, `dice` and
`uuid` are not treated as deterministic-output evidence. Reactor fib returns
832040 in both engines (`0xcb228:i64` vs decimal stdout); its experimental
Wasmtime invoke warning/CLI formatting are not guest-output mismatches.

The initial R7 matrix contains 17 WAPM cases and fib. The expensive interactive
irb case and the known-invalid original SAM fixture are outside this short-case
matrix; this is not advertised as the complete archived WAPM suite.
Independent R15 confirmations use new seeds; phases are not pooled because host
load and timing levels vary. Intervals use 10000 paired **process-round**
resamples, ratio of medians, seed 20261105. Counts/configurations were explored
adaptively; intervals are within-run uncertainty, not multiple-testing-corrected
or cross-machine guarantees. No PMU attribution is claimed.

## 1. WAPM comparison: native quality is not the whole startup story

Independent R15 process-wall medians, milliseconds. `lazy-G-MT` is the existing
default allocator/background policy with `--enable-multipass-lazy`.
`lazy-F-ST` additionally sets both `--disable-multipass-greedyra` and
`--disable-multipass-multithread`.

| Case | DTVM lazy-G-MT | DTVM lazy-F-ST | Wasmtime 45.0.0 | Wasmtime 49.0.5 |
|---|---:|---:|---:|---:|
| base64cli | 131.438 | 123.553 | 547.619 | 589.332 |
| code-stock | 25.954 | 23.396 | 98.113 | 99.289 |
| cowsay | 138.345 | 134.623 | 439.749 | 451.004 |
| echo | 26.836 | 25.225 | 39.026 | 37.725 |
| fib_iter_dev | 22.717 | 22.591 | 16.346 | 14.886 |
| md5 | 28.324 | 26.860 | 43.210 | 41.906 |
| pi | 29.224 | 28.184 | 42.427 | 41.576 |
| tpl | 305.281 | 287.104 | 870.645 | 888.001 |

These selected WAPM medians favor DTVM, but fib is a counterexample. There is no
universal short-case win. FastRA/ST reduces echo by 6.0% [-10.8%, -1.4%], md5
by 5.2% [-14.7%, -2.0%], and code-stock by 9.9% [-14.5%, -5.3%] relative to
lazy-G-MT in this run. Other FastRA/ST intervals include zero. This is an existing
configuration option, not an automatically enabled new policy. Disabling only
multithreading instead selects on-demand **GreedyRA**, and is substantially
slower on many short tasks (see R7 below).

Explicit background thread counts 1 and 2 do not establish a broad gain. For
example, tpl with one worker has a +13.0% median change, interval [-1.0%, +22.6%].
Fib with two workers has a lower median but a wide [-31.4%, +5.6%] interval;
entry-publication timing is sensitive to scheduling. Default thread policy is
therefore retained. Prior numeric-loop evidence also prevents recommending
FastRA/ST as a universal long-running-code choice.

## 2. What is actually being compiled?

Separate lazy-G-MT diagnostics record the following realization. Background and
foreground compilation can overlap; counts can depend on publication timing.
Wasmtime function-symbol counts match all internal functions of these inputs.

| Case | Internal functions | Actual foreground FastRA compiles | Background compiles | Wasmtime function symbols |
|---|---:|---:|---:|---:|
| echo | 50 | 30 | 1 | 50 |
| md5 | 59 | 31 | 1 | 59 |
| pi | 53 | 28 | 1 | 53 |
| base64cli | 1041 | 215 | 5 | 1041 |
| cowsay | 821 | 172 | 2 | 821 |
| tpl | 867 | 249 | 1 | 867 |

Both deferred coverage and cheaper foreground allocation contribute to cold
latency. Function-count ratios alone do not explain compilation time: visited
functions are not a random sample. In echo, DTVM foreground text totals 43301
bytes, almost the 44641 bytes of all Wasmtime functions, despite compiling fewer
functions. For base64cli, the corresponding totals are 276289 vs 755956 bytes.
These are implementation-specific text sizes, not normalized memory footprints.

The actual slow foreground compiles include:

- Stripped echo #20 / md5 #23 / pi #21: identical 21076-byte formatter-shaped
  bodies, around 6–8 ms each in a diagnostic run; allocator-shaped bodies add
  another 5–7 ms. They include complex branches even for simple output.
- base64cli: clap `Parser::get_matches_with` (~39752 native bytes) and
  `Validator::validate` (~24847), plus command construction and dlmalloc.
- cowsay: clap parsing (~57244 bytes), validation (~42103), and its main body
  (~28996). Argument parsing is not free simply because the CLI request is small.

In the diagnostic, echo's before-call→after-call span is 27.506 ms and md5's
29.194 ms; these spans **include foreground compilation and capture overhead**,
not just guest execution. Normal after-call→after-destruction cleanup is about
0.2–1.6 ms for these sampled short cases. It is not the dominant cost. The normal
CLI reports Statistics before Runtime destruction, so an absent release-delay
line is not proof of zero teardown cost. The diagnostic lifetime marker is
outside the normal owning objects and observes cleanup instead of bypassing it.

For base64cli the diagnostic foreground phase totals include ~14.9 ms context
initialization/reinitialization, 6.6 ms frontend, 29.1 ms pre-RA work, 24.7 ms RA
and 9.5 ms MC object/link work. These elapsed spans are partial, instrumented,
and not CPU-cycle attribution; background spans must not be added to process
wall time. They motivate compiler-throughput work before optimizing nanoseconds
of native instruction execution in one-shot programs.

## 3. Assembly comparison and a negative experiment

The echo module imports 11 functions. DTVM internal #20 corresponds to Wasmtime
`wasm[0]::function[31]`; [the excerpts](assembly.md) compare this exact body.
DTVM's **actual lazy FastRA** body has a 0x180-byte frame and prepares/spills FP
constants at entry. Wasmtime uses a 0x160 frame and loads RIP-relative constants
near their uses. DTVM has 2103 static rbp-negative frame references vs 1335
Wasmtime rsp references over the whole function. Cold paths are included; these
are not dynamic spill counts and cannot establish a cache/port bottleneck.

Turning off entry-wide FP constant hoisting reduces the DTVM frame to 0x130 and
removes the visible FP-constant setup. However, independent R15 changes are only
+1.0% (base64cli), -0.2% (cowsay), -0.8% (echo), -0.2% (md5), -0.9% (pi), and
-0.8% (tpl), with **all intervals including zero**. More attractive entry assembly
is insufficient evidence of a cold-process win. This prototype is not adopted.
A future RIP-relative constant-pool experiment must measure both compile cost
and execution; this report does not claim a benefit from that unimplemented idea.

## 4. Simple cases where DTVM lazy loses

Checksum-guarded synthetic modules separate untouched cold functions from
executed helpers. `hotN` calls N tiny constant-returning helpers exactly once;
`cold100` contains 100 helpers but calls none. Each runtime executes identical
Wasm for a case. Wasmtime may optimize these differently, which is part of the
observed behavior. Mixed-binary Singlepass is a separately labeled lower-cost
compilation reference, not a claim that it is interchangeable with lazy JIT.

R15 medians, milliseconds:

| Input | Lazy-G-MT | Lazy-F-ST | Mixed-binary Singlepass | Wasmtime 45 | Wasmtime 49 |
|---|---:|---:|---:|---:|---:|
| cold100 | 8.709 | 7.818 | 9.220 | 11.661 | 10.162 |
| hot1 | 9.328 | 7.845 | 7.628 | 9.045 | 7.454 |
| hot100 | 24.077 | 18.263 | 7.967 | 14.030 | 12.568 |
| hot1000 | 153.819 | 103.575 | 12.501 | 64.481 | 67.439 |

Lazy coverage helps cold100, but eager Wasmtime wins when many tiny functions
are actually called. LLVM-context/object setup, the compilation pipeline and
per-function publication remain significant fixed costs. Resolver FX save/restore
and patched jumps are visible in DTVM, but this study does not establish that
rewriting the assembly trampoline would materially improve first-call latency.

## 5. Adopted change: index local assignments in longer basic blocks

`matchAssignedIntConst` formerly rescanned the basic-block prefix for every
constant query. A long straight-line block can therefore do quadratic work even
when every query fails. The first prototype indexed all blocks; WAPM gains were
inconclusive and it added work to small blocks. The adopted refinement indexes
blocks with at least **32 statements** and keeps prefix scans in smaller blocks.

The index stores the latest completed direct assignment, including nonconstant
overwrites. It updates only after operand rewriting, preserving self-assignment
semantics. It resets at block/function boundaries; touched-slot clearing avoids
O(variables × blocks) resets. It retains the existing constant-fold rules and
uses O(variable-count) host index space only for functions with eligible blocks.
The 32-statement threshold is a simple policy, not a globally optimal tuning claim.

Independent R15 confirmation, milliseconds:

| Input | Baseline lazy-G-MT | Indexed lazy-G-MT | Change, paired 95% interval | Wasmtime 45 |
|---|---:|---:|---:|---:|
| base64cli | 130.646 | 130.398 | -0.2% [-10.4%, +6.0%] | 522.861 |
| cowsay | 129.209 | 136.151 | +5.4% [-3.7%, +13.4%] | 426.359 |
| echo | 26.782 | 26.658 | -0.5% [-5.7%, +8.6%] | 36.985 |
| hot100 | 19.768 | 19.404 | -1.8% [-12.2%, +11.1%] | 11.005 |
| hot1000 | 117.037 | 102.334 | -12.6% [-16.8%, -6.3%] | 52.730 |
| md5 | 29.196 | 29.485 | +1.0% [-8.4%, +11.6%] | 42.877 |
| pi | 27.825 | 27.574 | -0.9% [-3.9%, +3.5%] | 40.068 |
| tpl | 300.215 | 299.808 | -0.1% [-8.8%, +7.9%] | 842.289 |

Only hot1000 establishes improvement here: **12.6%**, interval [-16.8%, -6.3%].
WAPM results are inconclusive, including the cowsay +5.4% median. This is a
compiler-scalability improvement, not a claimed general WAPM speedup; it also
leaves a large gap to Wasmtime on hot1000. Do not pool the earlier synthetic
phase with this confirmation.

A separate serial FastRA diagnostic emits exactly 31977 bytes / 7032 disassembly
instruction entries before and after indexing. After masking two ASLR-dependent
host-address MOVABS operands, complete offset/opcode/operand sequences match.
The synthetic program has no guest literal above 1000, so this mask does not
hide guest constant changes. Normalized SHA and method are in [assembly.md](assembly.md).
A single diagnostic observes pre-RA work 11.183→4.144 ms and full function pipeline
26.743→16.898 ms. This supports a compilation-work mechanism; those single runs
are not substituted for the independent R15 process-wall estimate.

## 6. Remaining priorities

1. **Reduce per-function foreground compiler setup.** Hot1000 remains ~102 ms
   vs Wasmtime's ~53 ms in the confirmation. Reusing/resetting MC state or reducing
   per-function ELF packaging is worth a dedicated correctness/performance trial;
   no benefit from those unimplemented changes is claimed here.
2. **Use cheap first-tier work selectively.** FastRA/ST has validated short-case
   gains on some workloads; Singlepass's synthetic result shows a much cheaper
   compilation tier is possible. Mixing Singlepass and Multipass requires ABI
   bridging and lifetime/publication work, so the Singlepass number is not a
   prediction for a hybrid lazy engine.
3. **Inspect dead local setup and constant materialization.** Actual FastRA code
   has repeated local-zero setup and frame traffic. Greedy uses a pre-RA dead-CgIR
   pass that FastRA currently skips. Testing such a pass or constant pools must
   include its own compile-time cost, trap/liveness semantics and negative cases.
4. **Measure execution-heavy tasks separately.** Fib and the earlier numeric
   kernels demonstrate why short-call tuning and fewer compiler threads are not
   universal substitutes for good optimized code.

## Validation

- Seven CTest suites pass with lazy multipass, including all 97 available WAST
  groups and the existing MIR/publication/statistics tests.
- All 97 WAST groups separately pass under eager Greedy/ST and eager FastRA/ST.
- Four new MIR tests cover prior-value self-updates, dynamic overwrites, block
  boundaries and pass reuse. Short and long blocks exercise both lookup paths.
- Existing 26 Python harness tests pass; C++ formatting and whitespace pass.
- Synthetic inputs and archived statistical summaries regenerate byte-identically.
- Canonical CI `tests/wast/spec.patch` is applied for preparation and reversed;
  no submodule or diagnostic production-source edits remain. ASan was not run.

## Reproduction

Use identical mixed Release builds with LLVM 15, both JITs, checked arithmetic,
WASI/libc enabled. Build `d9dd7b5` as the baseline and this branch as `hybrid`.
Freeze executables at the paths in `measurements.json` / `scripts/bench.py`.
For rejected candidates, apply the corresponding [patch](experiments/) in a
separate scratch checkout of `d9dd7b5`, build and freeze it. Install Binaryen,
GNU binutils and Git LFS inputs. Run scripts from the repository root.

```bash
scripts=docs/changes/2026-11-05-lazy-shortcase/scripts
python3 "$scripts/make_synthetic.py"
python3 "$scripts/bench.py" --cases echo,md5,pi,code-stock,base64cli,cowsay,tpl,fib_iter_dev --variants base,mt1,mt2,base-F,wt45,wt49 --repeats 15 --seed 20261106 --out work/shortcase/thread-confirm-r15
python3 "$scripts/bench.py" --extra-catalog work/shortcase/synthetic-catalog.json --cases hot1,cold100,hot100,hot1000 --variants base,base-F,base-SP,cache,wt45,wt49 --repeats 15 --seed 20261107 --out work/shortcase/synthetic-r15
python3 "$scripts/bench.py" --cases echo,md5,pi,base64cli,cowsay,tpl --variants base,cache,nofp --repeats 15 --seed 20261108 --out work/shortcase/candidate-confirm-r15
python3 "$scripts/bench.py" --extra-catalog work/shortcase/synthetic-catalog.json --cases echo,md5,pi,base64cli,cowsay,tpl,hot100,hot1000 --variants base,hybrid,wt45 --repeats 15 --seed 20261109 --out work/shortcase/hybrid-confirm-r15
python3 "$scripts/summarize.py" # only needs archived measurements.json
```

For diagnostics, apply `experiments/diagnostics.patch` in a scratch checkout,
freeze that build as `work/shortcase/dtvm-trace`, and run `scripts/diagnose.py`.
Never enable `DTVM_TRACE_DIR` or preload code capture during formal timings.
`SHORT_COMPILE`'s flag means DisableGreedyRA; in the selected MT/F-ST diagnostic
configurations it distinguishes FastRA foreground from Greedy background, not
arbitrary execution modes. Reproduce Wasmtime assembly with `wasmtime compile`
and `objdump -d -Mintel`; use actual captured DTVM lazy bodies for matching indices.

## Appendix: initial R7 matrix

Exploratory medians, milliseconds; do not pool with the independent R15 tables.

| Case | Lazy-G-MT | Lazy-F-ST | Lazy-G-ST | Wasmtime 45 |
|---|---:|---:|---:|---:|
| amirali | 7.459 | 7.586 | 6.859 | 7.962 |
| base64cli | 137.678 | 140.680 | 488.612 | 560.730 |
| chkfont | 47.687 | 43.639 | 126.238 | 86.470 |
| code-stock | 21.946 | 20.807 | 42.685 | 84.346 |
| cowsay | 147.207 | 129.627 | 664.501 | 437.265 |
| dice | 22.522 | 15.578 | 29.104 | 35.613 |
| echo | 27.995 | 25.314 | 94.454 | 37.648 |
| erdtree | 57.436 | 54.740 | 135.633 | 163.138 |
| fib_iter_dev | 25.354 | 24.879 | 19.716 | 20.374 |
| figlet | 50.208 | 52.834 | 142.741 | 112.061 |
| fortune | 69.832 | 67.333 | 108.367 | 124.996 |
| md5 | 32.794 | 30.976 | 98.860 | 46.308 |
| pi | 30.380 | 25.401 | 93.154 | 41.344 |
| qr2text | 51.179 | 49.697 | 153.616 | 125.979 |
| suggest | 104.537 | 102.355 | 349.627 | 447.355 |
| tpl | 323.074 | 302.488 | 795.144 | 865.783 |
| uuid | 102.085 | 101.940 | 353.892 | 564.776 |
| viu | 259.671 | 308.844 | 1513.246 | 1390.560 |
