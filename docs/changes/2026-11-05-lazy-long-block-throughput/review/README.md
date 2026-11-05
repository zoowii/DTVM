# Review follow-up for PR #640

## Findings fixed

**P2: the bounded-discovery path still had size-dependent live-set lookups.**
`LiveRegMap = llvm::SparseSet<LiveReg>` selects the default uint8_t sparse index.
For sets larger than 256, LLVM recovers truncated dense indices by walking in
steps of 256. Each `findLiveVirtReg` can therefore take O(V/256) probes; merely
limiting the number of lookups to physical register units did not establish the
claimed size-independent discovery bound. Insertions also use that lookup.

Use `SparseSet<LiveReg, identity<unsigned>, uint32_t>` so indices cover the full
unsigned virtual-register universe and find/insert use direct dense indices.
Dense insertion/iteration order and allocation decisions are unchanged. The sparse
array costs three additional bytes per universe entry compared with uint8_t;
this is a compile-time memory tradeoff, not a measured RSS improvement.

The standalone diagnostic against installed LLVM 15.0.6 counts actual value-index
checks for a last-element lookup (not elapsed time):

| Entries | Default uint8 probes | uint32 probes |
|---|---:|---:|
| 512 | 2 | 1 |
| 10000 | 40 | 1 |
| 100000 | 391 | 1 |

Source/output are in scripts/sparse_probe.cpp and data/sparse-probe.txt. LLVM
explains the truncation tradeoff in its SparseSet.h documentation. This is a
container diagnostic, separate from the engine timing below.

**CI blocker: unformatted test-fixture CMake stopped all required build jobs.**
The original 6a6ede1 runs failed `Code Format Check` on src/tests/CMakeLists.txt.
The performance jobs skipped both baseline and PR benchmarks, then posted a
regression heading with no summary. That comment was not a measured regression.
See data/ci-format-blocker.json for the actual job and relevant log lines.
Format the file using cmake-format 0.6.13, and run the complete repository script
with clang-format 15.0.6 as specified by CI's Dockerfile. It passes. Formatting
also leaves the generated fixture Wasm hash unchanged. No unrelated files or CI
workflow policies were reformatted or modified.

**Coverage strengthened:** the original stress test checked integer and FP chains
separately. Add mixed integer/FP live values across alternating calls. Distinct
weights 3/5/7/11 in the checksum catch permutations as well as corrupt values.
For 512 steps the exact expected result is 2468416. Eager and lazy FastRA both
execute it twice. The existing test is extended rather than adding a timing
assertion or a test of LLVM's container implementation.

The review also checked same-block nearest-write semantics, dynamic invalidation,
self-updates, block/function resets, register-unit consistency, alias deduplication,
and stability of dense pointers through displacement. No additional blocking
semantic issue was found in this review scope. ASan and optional platform/feature
configurations were not run locally.

## Before/after verification

Main is f4b85073d2cc9df4fe5eeeb460fdcc3f093ef371; "before" is the exact PR commit
6a6ede1ffc7b9444b74b9e3556bf382c9993fbdf. "After" adds only the full-width sparse
index to production compiler code. Other changes extend tests, fix CMake formatting,
and update documentation. Compiler source patch and binary hashes are recorded
in data/source.json. The timing build excludes spec tests, so subsequent fixture
checksum strengthening and formatting do not change the timed compiler binary.

Same AMD EPYC 9V74 environment, GCC 14.2, LLVM 15.0.6, Release, checked arithmetic;
CPU quota 2, 8 GiB memory limit. Pin processes and inherited background workers
to CPU 0. Each sample measures fresh-process pre-spawn through exit, including
teardown; warm file cache, Wasmtime module cache disabled. Randomize variant order
within a round; one excluded warmup per case/variant. No builds, diagnostics or
profiling ran alongside timing. Do not pool serial and default-background modes.

Medians in ms; every row is from one phase:

| Mode / case | Main | Before 6a6ede1 | After review | WT45 | WT49 |
|---|---:|---:|---:|---:|---:|
| Serial lazy / 10000 helpers | 1775.269 | 797.832 | 682.116 | 1692.673 | 1684.379 |
| Serial lazy / 10000 calls to one helper | 1229.603 | 254.124 | 160.796 | 1444.639 | 1449.402 |
| Default lazy MT / 10000 calls to one helper | 2678.437 | 795.807 | 707.066 | 1468.155 | 1445.391 |
| Default lazy MT / dice | 21.021 | 21.367 | 20.937 | 36.850 | 37.569 |
| Default lazy MT / echo | 25.641 | 25.124 | 25.160 | 35.387 | 35.138 |

Against the pre-review PR, the serial one-helper chain improves **36.73%**
(paired 95% interval [-39.17%, -33.77%]); the many-helper case improves **14.50%**
([-16.69%, -6.90%]); default lazy one-helper improves **11.15%**
([-17.61%, -8.34%]). The dice and echo intervals cross zero; no general application
gain is established. These are generated long-block compilation-plus-one-execution
cases, not steady-state guest throughput. Main-to-current gains include the two
original long-block optimizations as well as this fix.

Serial mode has 15 measured rounds, default mode 21. Intervals use paired same-round
bootstrap ratios of medians, 10000 resamples and seed 20261117, without multiplicity
correction. All raw samples, captured outputs, exact commands, seeds, binary/input
hashes and summaries are retained in data/st-r15 and data/mt-r21.
All **490** formal-phase processes succeeded: 465 measured plus 25 warmups.
Round/variant completeness and every captured output hash were verified; outputs
are stable and match across all engines. Synthetic inputs trap on incorrect sums.

Separate before/after JIT capture on call10000 serial FastRA confirms all three
executable buffers match after masking only three checked MOVABS absolute address
operands. The helper is byte-identical without masking. See data/native-validation.json.
The compiler's lookup savings do not change guest instruction sequences on this case.

## Regression checks

- Release production build passed.
- Seven CTest suites passed; 97 WAST groups passed lazy default MT, 97 eager Greedy,
  and 97 eager FastRA/ST. Canonical preparation was applied and reversed.
- After strengthening the mixed checksum, the complete affected MIR/code-generation
  target was rerun: **98 tests in 8 suites passed**, including the final mixed fixture.
- Complete `tools/format.sh check` passes with CI-matching formatter versions.
  Rebuilding the fixture after formatting preserves its exact Wasm hash.
- Diff whitespace checks pass. Earlier broad WAPM and harness results belong to
  the pre-review evidence snapshot; they are not relabeled as post-review runs.
- Remote CI results after pushing must be read separately; the old runs did not
  test the code because formatting failed first.

## Reproduction

Run scripts from repository root. Rebuild/freeze main, before 6a6ede1, and the
patched compiler using identical options; update paths in scripts/bench.py if
needed. Generate the same inputs with scripts/make_cases.py. The runner requires
main, a candidate, and Wasmtime in every performance comparison. Manifests contain
all commands and fixed seeds. No raw binaries or JIT pages are committed.
The sparse probe can be compiled against LLVM 15 headers and libLLVM-15. The native
comparison script expects separate before/after captures from the supplied
mprotect hook. All diagnostics are outside formal timing.
