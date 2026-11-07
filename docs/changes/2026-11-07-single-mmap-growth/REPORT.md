# Backing-aware memory growth: review, mechanism and experiments

PR644 review found an SGX build compatibility regression: its mmap shim has no
MAP_FIXED/MAP_FAILED and cannot replace fixed addresses. Commit3c9780d excludes
only the new remapping block from SGX. The real-header syntax smoke check passed
both branches; it is not a full SDK build. PR644 CI state is retained separately
in [review evidence](evidence/pr644-review.json). No speculative CI configuration
change was made. This new capacity optimization is a separate branch based on
PR644 and must not be described as a CI fix.

## Change and invariants

WasmMemoryAllocator previously checked its module-wide32 MiB bucket limit even
when the instance had transitioned to SINGLE_MMAP. Each subsequent grow then
allocated another8 GiB reservation, copied ALL old contents and unmapped the old
one. Both SINGLE producers actually reserve 8 GiB. Select capacity using backing
type: SINGLE uses its reservation; BUCKET keeps32 MiB. Preserve the first
bucket->single allocation/copy. No policy threshold, workload name, JIT pass,
feature switch, memory layout or logical Wasm limit changes.

Instance maximum-page/overflow/32-bit-size checks remain the authority. New
pages were inaccessible anonymous zero pages; mprotect exposes only the requested
logical extent. Old contents and base are preserved after transition. The bucket
mapping/accounting/retirement path remains unchanged. malloc/non-mmap and SGX
interfaces are unchanged. See [runtime contract](../../modules/runtime/spec.md).

Runtime source benchmarked: 923b12f. Subsequent edits only clarify comments,
format a test assertion and add evidence/specification. Build flags and full
source identities are in [build metadata](evidence/build.json); each cohort has
binary/input SHA256 and exact commands. Main is the frozen19af308 build whose
entire src is identical to3cb4f2e; it was not rebuilt. PR644 control is frozen7cbf629;
its later SGX guard compiles away on the measured non-SGX Linux build.

## Protocol and statistics

Linux AMD EPYC9V74, GCC14.2/LLVM15 Release, two-core quota. Fresh processes,
engine and workers CPU0, randomized order within round, one excluded warmup,
warm input cache and Wasmtime45 cache disabled. Growth collector and independent
follow-up collectors CPU1; canonical screen collector was unpinned. No build,
test or profiler overlapped formal timing. Different cohorts are kept separate.

An independent process is the statistical unit. N grows inside it are not N
independent samples. Group medians below are milliseconds. Paired statistics
use within-round candidate/control ratios, fixed-seed10,000-resample percentile
bootstrap95% intervals. Intervals are pointwise without multiplicity correction;
screen-selected results need a separate cohort. Crossing1 does not establish
equivalence. One host does not establish a universal advantage.

## Boundary bisection and growth-count experiment

Screen7 rounds: start from1page, grow outside the timed region to511/512/513
pages (32 MiB=512 pages), then time1/4/16 successive one-page grows. Additional
1-page and768-page controls. touch0 leaves old extension pages untouched;
touch1 writes one byte per old Wasm page before timing. This is sparse residency,
not a densely populated heap. Preserve initial sentinel, check written old-page
bytes, check ALL new words are zero and verify final page count. Identical Wasm
on all four engines. The entire loop is in _start, so its demand compilation
precedes the first timestamp. Internal stamps include clock boundary overhead;
they are not isolated syscall or pure native compute times. Full process includes
setup, validation, output and teardown.

Independent31-round follow-up, internal growth interval:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| p513-n1-t0 | 20.26330 | 20.55350 | 0.00127 | 0.00455 |
| p513-n4-t0 | 60.73996 | 59.15572 | 0.00236 | 0.00538 |
| p513-n16-t0 | 222.32994 | 224.41687 | 0.00596 | 0.00830 |
| p513-n4-t1 | 58.61342 | 58.40274 | 0.00307 | 0.00585 |
| p513-n16-t1 | 216.81113 | 218.01445 | 0.00740 | 0.01002 |
| p512-n4-t1 | 68.68296 | 58.59280 | 19.10411 | 0.00559 |
| p1-n16-t0 | 0.01259 | 0.01548 | 0.01578 | 0.00952 |

The 512-page control still pays the FIRST relocation. The 513-page controls remove
only repeated relocations; the small 1-page control has no established incremental
change vsPR644. Its few-microsecond extra cost vs main belongs to the preceding
PR644 zero-tail feature and is retained in the raw data.

Full-process times for the SAME inputs/cohort:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| p513-n1-t0 | 27.86789 | 27.90677 | 6.08781 | 6.28644 |
| p513-n4-t0 | 68.66608 | 66.39574 | 6.29067 | 6.43618 |
| p513-n16-t0 | 230.85858 | 232.50459 | 6.57521 | 7.03199 |
| p513-n4-t1 | 67.39034 | 67.03795 | 6.90551 | 7.20138 |
| p513-n16-t1 | 225.18526 | 226.64926 | 7.41322 | 7.64228 |
| p512-n4-t1 | 80.79536 | 66.98765 | 27.09137 | 7.17096 |
| p1-n16-t0 | 7.68766 | 6.43852 | 6.18321 | 6.42963 |

The source predicts copied bytes proportional to sum(old_size_at_each_grow),
not just new pages. At 513 pages, sixteen grows imply copying about 520.5 MiB;
newly exposed bytes are only 1 MiB. With no writes, measured minor faults drop
from 143340 (PR644) to 1870 (candidate). This is a different mechanism from PR644,
where prior fault counts were almost unchanged. Faults alone are not bandwidth
measurements; the source path and separate syscall controls establish what moved.
At 768 pages/four grows, the screen PR644 interval grows to96.760 ms versus62.254 ms
at 513 pages, consistent with increased full-copy volume. Do not infer a universal
linear model from these selected sizes.

## Native runtime assembly, Wasmtime implementation and syscall control

DTVM Wasm memory.grow lowers to an indirect call to
Instance::growInstanceMemoryOnJIT and reloads base/size. The relevant new
optimization is in the native runtime path, not the Wasm arithmetic loop.
[Native symbol ranges](evidence/runtime-manifest.json) and all four runtime
function disassemblies are retained. PR644's capacity decision can reach
allocateNonBucketMemory followed by memcpy and internalFreeWasmMemory on EACH
single grow. Candidate branches on backing type before comparing capacity,
reaches mprotectReadWriteWasmMemoryData and returns the same base. The fallback
memcpy remains present for the genuine first transition.

Wasmtime45 grow_to compares new_accessible with current_capacity. Inside its
reservation it exposes only the inaccessible difference, and only allocates and
copies when capacity is exceeded. Source URLs/tag/hashes are in
[Wasmtime source manifest](evidence/wasmtime-source.json):
crates/wasmtime/src/runtime/vm/memory/mmap.rs:156-214. Candidate fixes the wrong
DTVM capacity choice; changing DTVM's mprotect extent to only the delta would be
a separate experiment.

Untimed p513-n4-t1 syscall captures: PR644/main have6 total8 GiB mmap calls
(1 bucket+5 anonymous: initial transition+4 later replacements); candidate has2
(1 bucket+1 anonymous). Expected output validates. Captures include JIT/runtime
allocation activity and must not be treated as formal timing samples. Separate
irb captures use the exact catalog stdin `3+4\n` and canonical output hash.
PR644 makes 50 anonymous8 GiB linear-memory reservations versus 1 (candidate),
removing 49 repeated allocations/copies. These captures are untimed diagnostics.

## Real workloads and independent repeat

WAPM full 20-case screen7 rounds:19 succeed; sam exits 1 on ALL engines and is
excluded. fortune/uuid are nondeterministic; other successful outputs match.
No full 30-case PolyBench claim is made: the six-case screen is explicitly listed.
The real improvement is irb, independently repeated 15 rounds:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| irb | 3753.826 | 3723.245 | 2153.095 | 9655.818 |

Candidate reduces median process time vsPR644 by 42.2% and vsWasmtime45 by
77.7%. Within-round candidate/PR644 median ratio=0.5716,
95% [0.5642,0.5893]. All outputs match. The total includes
compilation, execution and teardown; it is not a pure compilation or first-call
latency claim. The growth microbench and untimed runtime diagnosis isolate the
memory mechanism. Warm arithmetic is unchanged.

The full WAPM screen is preserved, including negatives:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| amirali | 5.987 | 5.875 | 5.456 | 5.715 |
| base64cli | 120.036 | 124.744 | 112.603 | 480.193 |
| chkfont | 40.256 | 39.116 | 38.772 | 74.625 |
| code-stock | 24.171 | 23.746 | 24.555 | 87.979 |
| cowsay | 126.834 | 124.956 | 122.137 | 404.879 |
| dice | 20.231 | 20.330 | 20.095 | 35.627 |
| echo | 25.858 | 26.448 | 25.631 | 37.409 |
| erdtree | 61.072 | 62.040 | 62.432 | 170.327 |
| figlet | 47.868 | 48.775 | 49.481 | 101.839 |
| fortune | 66.326 | 66.642 | 64.318 | 119.432 |
| irb | 3816.006 | 3722.704 | 2130.357 | 9598.474 |
| md5 | 28.725 | 27.218 | 27.752 | 42.227 |
| pi | 27.752 | 27.925 | 26.627 | 39.384 |
| pkg1 | 24.016 | 22.334 | 22.031 | 84.122 |
| qr2text | 53.090 | 58.359 | 52.376 | 128.364 |
| suggest | 96.133 | 95.640 | 95.500 | 423.062 |
| tpl | 266.152 | 261.170 | 266.651 | 776.113 |
| uuid | 80.480 | 79.646 | 83.101 | 442.871 |
| viu | 238.445 | 227.563 | 227.943 | 1222.734 |

Separate 31-round controls repeat the screen's apparent small startup wins
(amirali/base64cli/pi), the largest median slowdown(code-stock), and tpl.
Do not pool them with the seven-round screen:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| amirali | 5.819 | 5.889 | 5.720 | 5.780 |
| base64cli | 109.192 | 107.756 | 107.765 | 452.539 |
| code-stock | 22.683 | 22.270 | 22.288 | 88.059 |
| pi | 27.391 | 27.557 | 27.200 | 39.523 |
| tpl | 272.543 | 271.728 | 267.035 | 770.478 |

Pointwise paired intervals for all groups are in the cohort summary.csv files;
read those before interpreting small median differences. These controls do not
prove zero regression across workloads or hosts. amirali retains a small
pointwise paired ratio 0.9585[0.9308,0.9982], but its link to this capacity path
has not been established; no generic startup-speed claim is made.

Selected PolyBench screen7 rounds:

| Case | Main | PR644 | Candidate | Wasmtime45 |
|---|---:|---:|---:|---:|
| 2mm | 2283.561 | 2235.512 | 2288.541 | 2681.374 |
| atax | 60.432 | 51.725 | 52.510 | 60.854 |
| bicg | 72.672 | 65.861 | 62.294 | 71.671 |
| gemm | 1778.176 | 1687.282 | 1701.315 | 2186.802 |
| gesummv | 56.925 | 47.882 | 47.628 | 57.186 |
| trisolv | 46.983 | 39.703 | 39.428 | 49.153 |

Much of candidate vsMAIN advantage on atax/bicg/gesummv/trisolv belongs to PR644.
Use the PR644 column to assess the incremental capacity change. Floating-point
large gemm/2mm results are controls, not an established arithmetic optimization.

## Validation

24 Release tests pass, including a regression that grows beyond bucket capacity,
then grows three more times: stable base, written last-old byte preserved, every
new page zero, zero/failed growth unchanged and exact final OOB trap. Independent
code review verified both SINGLE allocation sources reserve 8 GiB and the instance
checks still restrict logical size. All 97 WAST cases pass in each of lazy MT,
eager multipass, singlepass and interpreter. Test generation temporarily applies
the existing spec.patch and restores the submodule afterward.

24 ASan tests pass on this source, Release -O1/NDEBUG, virtual stack OFF,
ASAN_OPTIONS=detect_leaks=1:abort_on_error=1, exit0. Production timing uses ASan-off
Release binaries only. Format and diff checks pass. Logs are retained; removed
test executables were rebuildable outputs, frozen production artifacts remain.

## Next compiler candidate: constant unsigned remainder

Historical bicg native code still has hardware DIV for %1900/%2100/%20,
while Wasmtime45 uses a magic quotient then x-q*d. DTVM already optimizes the
matrix loop's udiv2100; do not confuse that with the remaining remainder sites.
Wasmtime opts/arithmetic.isle:156-162 and prelude_opt.isle:343-347 implement the
constant remainder transform. Source hashes/URLs above pin the evidence.

A reproducible syntactic scan finds 48 nonpow2 constant-i32-rem sites across
30/30 PolyBench modules,244 across 15/20 WAPM modules. Shared libc formatting is
repeated across modules, so these are NOT independent hot observations. Examples
worth dynamic profiling: qr2text QrCode::new %255, suggest merge_sort %24/%20,
viu merge_sort %12. Lexical loop depth is not runtime frequency.

[Unapplied prototype](evidence/urem-prototype.patch) reuses existing magic-udiv
logic and requires a nontrapping pure dividend tree, preserving one evaluation
through the frontend's existing materialized local. It includes MIR and WAST
boundary/effect/trap test drafts. Only patch applicability was checked: it has
NOT been built, timed, or included in the runtime candidate. The existing native
LEA experiment already showed fewer static instructions need not produce a
repeatable gain. Profile these functions, separate compile/first-result/warm
phases and run independent real-case follow-ups before promoting this prototype.
See [research details](evidence/urem-research.md).

## Reproduction

Run from repository root with Python3, WABT, taskset and frozen binaries:

```sh
python3 docs/changes/2026-11-07-single-mmap-growth/grow_bench.py \
  --main /path/to/main --pr644 /path/to/pr644 \
  --candidate /path/to/candidate --wasmtime /path/to/wasmtime45 \
  --out /tmp/growth-new --rounds 31 \
  --jobs 513:1:0,513:4:0,513:16:0,513:4:1,513:16:1,512:4:1,1:16:0
python3 docs/changes/2026-11-07-single-mmap-growth/summarize.py \
  /tmp/growth-new --growth
```

The preceding feature's benchmark.py accepts --previous PR644 plus main,
candidate and wasmtime for canonical controls; each cohort manifest records exact
commands, binary/input hashes, seeds, rounds and output hashes in samples. New
scan_const_urem.py accepts --out and resolves wasm2wat from PATH. Raw sample logs
are gzip JSONL; summaries are CSV. Do not time while building/testing/profiling.
