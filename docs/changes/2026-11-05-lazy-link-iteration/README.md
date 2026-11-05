# Change: Bound FastRA call-regmask scans after pipeline profiling

- **Status**: Implemented
- **Date**: 2026-11-05
- **Tier**: Light

## Result and scope

Retain one compiler change: bound the search for call-clobbered physical
assignments when FastRA's virtual live set is large. In the final serial-lazy
comparison, hot10000 improves 988.862→712.416 ms versus the previous experiment
(-27.96%, paired bootstrap interval [-30.43%, -24.65%]). A separate hot5000 scale
check improves 428.968→370.614 ms (-13.60%, [-26.25%, -9.28%]). The 1000-function
case and default-policy WAPM cases do not establish an improvement.

The user requested deeper investigation and requires every performance
comparison to include Wasmtime, upstream master/main, and the latest experiment.
Upstream uses **main**, with no master branch at the start of this run. Main was
frozen at `f4b85073d2cc9df4fe5eeeb460fdcc3f093ef371` and rechecked unchanged after
timing. It includes the scalar-conversion dependency fix merged as #639.
The previous experiment is `c197464bfcb168ee24d6c03daa46c229c6b32321`, which
includes the long-block MIR index and bounded MC reuse. The new candidate adds
only this regmask search change to that previous experiment. Compiler contract:
[spec](../../modules/compiler/spec.md). No new optimization is mixed with the two
rejected prototypes below.

## Bottleneck investigation

The initial hypothesis was ELF parsing/linking or page publication. Separate
instrumentation on the previous experiment, hot1000 lazy-F-ST, produced this
representative diagnostic run (not a formal timing sample):

| Stage | Aggregate ms |
|---|---:|
| Frontend/codegen/context reset/MC emission | 64.349 |
| MC finalization | 5.096 |
| ELF creation/parsing | 0.258 |
| Section scan | 0.124 |
| Symbol scan | 0.495 |
| Relocation scan | 0.183 |
| Code allocation, including writable protection | 1.358 |
| Copy, including first-touch page faults | 2.008 |
| Relocation patching | 0.031 |
| Executable protection | 1.415 |

The separately timed inclusive object stage is 9.669 ms; do not add it to its
component rows. Clock calls add overhead and there are uninstrumented boundary
costs. These diagnostics rank costs; they are not substituted for total-process
measurements. Further instrumentation on hot10000 found approximately 476 ms in
register allocation, compared with about 6 ms in MIR peephole and 62 ms in x86
lowering in that run. Raw stage logs and instrumentation patches are included.

A userspace-only 1 ms software CPU-clock perf sampler then localized the cost.
It samples the calling thread in serial mode, performs no signal-stack unwinding,
and dumps its mmap ring only at shutdown. Of 1078 previous-version samples,
391 (36.27%) fell inside FastRA::allocateCgInstruction. The old host assembly's
loads/tests of LiveReg.PhysReg and dense-vector loop accounted for 328 samples
at 0x40b1e5, 0x40b1e9 and 0x40b47e. Those addresses are relative to the bound
ELF binary, not runtime ASLR addresses. The sampler reported no lost events.

The new version's separate diagnostic had 48 of 607 samples (7.91%) in that
function. These are flat self-sample distributions, **not paired wall-time
measurements or precise speedup estimates**. Samples outside the executable
include libraries and JIT code; the higher outside percentage after optimization
is a denominator change and does not establish increased library cost. See
`diagnostics/profile-manifest.json`, raw IP records, resolved JSON, and old/new
host assembly. Earlier Wasmtime guest-assembly comparisons remain in the
[short-case report](../2026-11-05-lazy-shortcase/README.md); they are not freshly
regenerated Wasmtime assembly in this iteration.

## Why the change works

FastRA retains virtual live-set entries after their physical assignment has
been released: PhysReg becomes zero, but the entry stays until block completion.
Previously every call regmask scanned all such entries. A long straight-line
call chain can consequently accumulate a quadratic amount of scanning.

For small sets, preserve the original loop. When the virtual set is larger than
the physical register-unit map, use that bounded map to discover assignments.
Deduplicate multi-unit aliases and sort by position in the contiguous dense
live-set array before displacement. That restores the original processing order,
including spill-slot/reload order. Relative positions in the same array are
independent of ASLR; this is not a host-address allocation heuristic.

The temporary pointer list is bounded by the number of physical register units.
Displacement does not insert or erase virtual live-set entries, so those pointers
remain valid while used. No register-choice heuristic, ABI mask, guest trap,
relocation, executable protection, publication ordering, or teardown is removed.
The optimization applies to FastRA; Greedy's allocation algorithm is unchanged.

## Formal final comparison

AMD EPYC 9V74, x86-64 Linux, LLVM 15, GCC Release, checked arithmetic enabled,
ASan disabled, 8 GiB memory limit and 2-CPU quota. Pin all variants to CPU 0;
background compilation threads inherit affinity. This measures their policy on
one allowed core, not unconstrained multicore throughput. Each sample starts a
fresh process and measures parent pre-spawn through exit, including teardown.
Warm page cache; Wasmtime cache explicitly disabled with `-C cache=n`. Randomize
variant order within each round, excluding one warmup per case/variant.
No builds, profiling, or code capture ran alongside formal timing.

All values below are median milliseconds from the **same phase per row**. Do not
compare absolute values across earlier phases as if host conditions were fixed.
Wasmtime 45 and 49 are both included in every phase, even rejected prototypes.
Every runner invocation now requires main, at least one Wasmtime, and an
experiment. Commands, versions via binary hashes, input hashes, source identifiers,
seeds, CPU affinity, and boundaries are recorded in each manifest.

### Serial lazy FastRA, 15 measured rounds

| Case | Main f4b8507 | Previous c197464 | New regmask | WT 45 | WT 49 | New vs previous, 95% interval |
|---|---:|---:|---:|---:|---:|---|
| hot1000 | 97.399 | 84.525 | 80.268 | 62.719 | 59.300 | -5.04%, [-11.69%, +0.56%] |
| hot5000 | 683.981 | 428.968 | 370.614 | 534.992 | 552.204 | -13.60%, [-26.25%, -9.28%] |
| hot10000 | 1819.054 | 988.862 | 712.416 | 1724.861 | 1723.995 | -27.96%, [-30.43%, -24.65%] |

The main-to-new gap includes earlier optimizations; the previous-to-new column
isolates this iteration. hot5000 uses a separate seed after fixing the regmask
algorithm. It was already used in earlier experiments, so the historical
`heldout` directory name does not mean a globally unseen workload. Every synthetic
program calls all helpers, writes their sum to guest memory, and traps on a
wrong sum. These are cold compilation-plus-one-execution workloads, not
steady-state guest throughput. The new version still trails Wasmtime on hot1000.

### Default lazy foreground FastRA/background Greedy, 21 measured rounds

| Case | Main | Previous | New | WT 45 | WT 49 | New vs previous |
|---|---:|---:|---:|---:|---:|---:|
| echo | 30.136 | 30.325 | 31.025 | 42.831 | 43.386 | +2.31% |
| md5 | 34.560 | 32.145 | 32.773 | 49.981 | 49.652 | +1.95% |
| pi | 32.186 | 32.128 | 34.322 | 44.913 | 46.300 | +6.83% |
| base64cli | 121.755 | 121.787 | 130.051 | 511.134 | 529.951 | +6.79% |
| cowsay | 143.863 | 140.058 | 141.442 | 458.921 | 466.902 | +0.99% |
| tpl | 291.513 | 292.079 | 291.230 | 813.154 | 869.356 | -0.29% |
| fib_iter_dev | 23.319 | 23.551 | 22.832 | 15.019 | 14.196 | -3.05% |

Every new-versus-previous interval here crosses zero. In particular, base64cli
and pi have slower medians and must not be described as wins. Their intervals
are [-2.49%, +11.05%] and [-3.86%, +12.46%]. Another machine and further
application profiling are needed before claiming general default-policy gains.
DTVM wins these WAPM CLI startup comparisons but still loses fib to Wasmtime.
DTVM lazily compiles a subset; Wasmtime compiles the whole module. These times
must not be presented as equivalent amounts of compiler work or pure execution.

Intervals use same-round paired bootstrap ratios of medians, 10000 resamples,
seed 20261117. There is no multiple-comparison correction. See each final phase's
`summary-vs-previous.json`; all engine medians and child CPU medians are also in
`data/all-medians.json`. The robust scale gains motivate retaining this small
search change on the research branch, with application limitations made explicit.

## Machine code validation

Separate mprotect capture on hot10000 lazy-F-ST produced 10002 executable
buffers per variant. All **10000 helper buffers are byte-identical**. The shared
stub and root buffers differ only in one and two MOVABS RAX address operands.
Verify the `48 b8` opcodes and mask only their eight-byte operands; all other
bytes, including padding, match. Root mask offsets: 319942 and 319958; shared
stub offset: 45. The root buffer is 323584 bytes including page padding.
`data/assembly-validation.json` records matching normalized hashes and the
concatenated helper-buffer hashes. Capture is diagnostic-only and outside timing.
The speedup is in the host compiler; it does not come from different guest code.

## Rejected prototypes and ledger

1. Remove unused tied-def register-class pressure counting: no stable gain;
   hot10000 had a slower median, with an interval crossing zero. Not retained.
2. Keep register-class metadata in the worker context: no stable incremental
   gain on hot1000/5000/10000 or WAPM. Not retained. Its proposed cache tests are
   archived with the prototype, but were not run as a full regression suite.

The two prototypes built and completed all their recorded output-checked process
runs. Only the final regmask candidate received the full regression below.
The native unchanged-code claim applies to regmask, not to unmeasured properties
of these rejected prototypes. Patches are losslessly JSON-encoded in `experiments/`
(`patch` field); extract that field before applying to c197464. Instrumentation
patches are diagnostic only and are absent from production source.

| Phase | Cases | Variants | Measured rounds | Processes including warmup |
|---|---:|---:|---:|---:|
| baseline-st-r11 | 2 | 4 | 11 | 96 |
| baseline-mt-r11 | 6 | 4 | 11 | 288 |
| dead-counts-st-r11 | 2 | 5 | 11 | 120 |
| dead-counts-mt-r15 | 7 | 5 | 15 | 560 |
| cache-st-r15 | 2 | 5 | 15 | 160 |
| cache-heldout-r15 | 1 | 5 | 15 | 80 |
| cache-mt-r21 | 7 | 5 | 21 | 770 |
| regmask-st-r15 | 2 | 5 | 15 | 160 |
| regmask-heldout-r15 | 1 | 5 | 15 | 80 |
| regmask-mt-r21 | 7 | 5 | 21 | 770 |

Total: **3084 formal-phase processes**, 2907 measured plus 177 warmups, all exit
zero. The complete ledger includes neutral/negative phases. Output hashes match
the stored per-phase `outputs.json` and are stable per variant. Across variants,
stdout/stderr match except fib's DTVM typed hexadecimal result `0xcb228:i64`
versus Wasmtime decimal 832040 and Wasmtime's invoke warning. No failed timed
process is silently omitted. Sampling, code capture, and untimed smoke checks
are separate from these counts. No RSS reduction is claimed.

## Verification and reproduction

- Production Release build succeeded. Timed candidate SHA256:
  `613de61caee1e7df6466bb2c7d6f4f986f7822275f31143bc4ca0957ab9df4b3`.
- 7/7 root CTest suites passed. A generated 512-call integer/floating fixture
  checks exact results and repeated execution with eager FastRA and lazy-F-ST.
  Existing MC isolation, lazy publication, C API, MIR and statistics tests passed.
- 97 WAST groups passed lazy-G-MT through CTest; another 97 passed eager Greedy;
  another 97 passed eager FastRA/ST. Canonical spec preparation was reversed.
- 26 harness unit tests passed; clang-format and diff whitespace checks passed.
- No ASan, optional EVM, SGX, or Linux perf feature build was tested. The external
  userspace perf sampler does not imply that the optional DTVM perf build ran.

Run scripts from repository root, after building/fixing binary paths to the
locations in `scripts/bench.py`. Baseline main and previous source commits are
above; candidate source is this branch. Use the same Release CMake options
(LLVM 15, both JITs, checked arithmetic ON, SPEC/ASan/EVM/perf OFF for timings).
The existing synthetic generators/catalogs are in the two earlier reports.
Catalog absolute paths refer to this workspace and need adjustment elsewhere.

```sh
python3 docs/changes/2026-11-05-lazy-link-iteration/scripts/bench.py \
  --extra-catalog work/iteration/stress-catalog.json \
  --cases hot1000,hot10000 --variants main-F,previous-F,candidate-F,wt45,wt49 \
  --repeats 15 --seed 20261125 --candidate-source 'this branch' \
  --out work/link-iteration/reproduce
python3 docs/changes/2026-11-05-lazy-link-iteration/scripts/summarize.py \
  work/link-iteration/reproduce previous-F candidate-F
```

The full formal commands are in manifests. `sample_ip.c` and the resolvers
reproduce diagnostic sampling using perf_event_open on the current thread;
permissions must allow that syscall. `compare_code.py` expects separate previous
and candidate capture directories, with the mprotect hook built from the supplied
C source. Raw captured code pages and binaries are not committed; aggregate
hashes, normalized offsets, all timing rows, output strings, source patches and
profiling records are retained.

Next target: quantify MC context/section initialization after removing the large
regmask scan, then consider a lifecycle or object-emission optimization. Also
profile real WAPM large blocks to measure how often this new path runs and whether
its threshold needs a cost model. Preserve all three engine groups in each new
performance comparison; do not pool serial FastRA with background Greedy results.
