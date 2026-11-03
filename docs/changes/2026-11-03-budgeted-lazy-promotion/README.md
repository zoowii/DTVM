# Change: Opt-in, heat-triggered and budgeted lazy Wasm promotion

- **Status**: Implemented
- **Date**: 2026-11-03
- **Tier**: Full

## Authorization and objective

The user explicitly requested continuing private-function promotion with a heat threshold, compile budget and strategy switch, after preparing the independent Singlepass build PR. Previous unconditional-demand promotion improves atax's 30-call process wall time but hurts one-shot latency.

## Design

- Default off; only valid for Wasm lazy multipass with multithreading and GreedyRA.
- Count real calls to private functions using the existing ABI-preserving resolver until the configured threshold; cache the FastRA body so profiling never recompiles it on each hit. Start/export functions retain their existing policy.
- At the threshold, attempt one reservation for background Greedy promotion. Hard module-lifetime caps: function count and input Wasm code bytes. A cumulative measured compile-time limit is soft: a running compile is not cancelled; queued private jobs recheck the time limit. Budget denial permanently publishes FastRA, avoiding indefinite profiling overhead.
- Keep existing monotonic trampoline/FastRA/GreedyRA publication. Use atomic status reservation to deduplicate entry seeding and foreground demand.
- Expose admission/byte/time counters for tests and opt-in statistics. No process exit shortcut or skipped cleanup.

## Affected modules and contracts

Compiler scheduling/resolution, RuntimeConfig, CLI and tests. No Wasm value, trap, gas, host or memory semantics may change. Runtime concurrency boundaries remain unchanged.

## Implementation plan

1. Implement disabled-by-default options, isolated budget accounting and cached threshold resolution.
2. Build and test budget boundaries/concurrent reservations, threshold crossing/no recompilation, output correctness, publication and shutdown with pending work.
3. Freeze the new binary; run randomized same-input 1/5/30-call atax experiments and one-shot negative controls with policy off and multiple predefined threshold/budget settings.
4. Report all configurations and tradeoffs, update module specs; do not claim a Wasmtime/eager crossover unless measured under the same boundary.

## Risks and limits

The resolver has profiling overhead before threshold, and call counts do not detect long single-invocation loops. Time is a soft admission limit with bounded hard function/byte admissions, not a preemptive CPU deadline. Default-off preserves current behavior. A policy is only recommended if first-call and repeated-call experiments justify it.

## Validation

Six CTest suites pass, including 13 lazy-policy tests and nine stub/budget
cases. All 96 available Wasm spec groups pass in three configurations:
policy off, threshold 2, and threshold 1 with larger admission limits.
Preparation applies the canonical `tests/wast/spec.patch`, as CI does.
The existing 26 Python harness tests pass. The Singlepass-only Release build
and an echo execution also pass, as does the new reproduction-helper smoke run.
C++ formatting and whitespace checks pass. ASan was not run.

## Measurements and decision

[Raw observations and manifests](measurements.json) preserve both exploratory
R5 grids, the independent R15 confirmation and the R15 off/legacy comparison.
All 992 process runs (900 measured, 92 warmups) exited successfully; stdout and
stderr hashes agree across variants for each case within each phase.
Fresh-process wall time includes compilation, execution and teardown. Repeated
exports call the original `_start` inside one instance. CPU affinity is 0;
page cache is warm; Wasmtime 45 caching is disabled. Machine: AMD EPYC 9V74,
three visible CPUs, two-core cgroup quota, 8 GiB RAM. Measurements from different
phases should not be pooled because machine load varied.

The first R5 grid without a per-function ceiling regressed atax at 30 calls.
Frequent formatting helpers consumed admission before the numeric kernel.
The second R5 grid selected the explicit profile: threshold 8, 32 functions,
65536 total Wasm bytes, **1024 bytes per function**, 100 ms soft compile budget.
The runtime default per-function ceiling remains 4096; the table uses the
explicit 1024-byte experimental profile, not unspecified defaults.

Independent R15 confirmation, median milliseconds (negative change is faster):

| Case | Off | Budgeted | Change (paired bootstrap 95% interval) | Wasmtime 45 |
|---|---:|---:|---:|---:|
| atax, 1 call | 92.829 | 106.043 | +14.2% [+6.6%, +20.9%] | 63.207 |
| atax, 5 calls | 272.828 | 295.483 | +8.3% [-0.2%, +12.1%] | 135.343 |
| atax, 30 calls | 1464.619 | 1095.193 | -25.2% [-30.3%, -17.3%] | 638.257 |
| bicg, 1 call | 90.956 | 98.451 | +8.2% [-5.3%, +20.1%] | 70.996 |
| bicg, 30 calls | 1304.869 | 1343.571 | +3.0% [-4.4%, +10.0%] | 911.784 |
| echo | 40.667 | 40.254 | -1.0% [-12.9%, +8.5%] | 54.433 |
| md5 | 34.244 | 42.672 | +24.6% [+6.0%, +37.5%] | 54.580 |
| pi | 32.438 | 38.142 | +17.6% [+6.5%, +29.0%] | 45.343 |

Intervals use 10,000 paired round resamples, ratio of medians, seed 20261103.
They describe sampling uncertainty within this run, not cross-machine
reproducibility or correction for all explored profiles. Atax is the selection
workload; bicg is a holdout and shows no improvement. Unbounded immediate
promotion achieved 1092.575 ms on atax/30 but 187.177 ms on atax/1; budgeting
retains that long-run benefit with much less startup penalty.

The independent off/legacy comparison finds changes of -1.3% (atax), +1.4%
(echo), -1.0% (md5), +1.6% (pi); all paired intervals include zero. This does
not prove zero overhead in every workload.

Separate untimed-statistics diagnostics confirm both numeric kernels reach
GreedyRA at eight entries. Atax admitted 28 functions / 4704 bytes / 75.465 ms;
bicg admitted 28 / 4800 / 26.369 ms. Actual kernel Wasm bodies are 592 and
688 bytes. Large printf/malloc bodies are excluded by the 1024-byte ceiling.
Bicg's successful promotion without a wall-time gain shows that promotion
alone does not guarantee useful generated-code improvements.

**Keep the strategy disabled by default.** No Wasmtime crossover is established.
Next research should estimate benefit from loop/backedge work and generated
code, rather than treating tiny helper entry frequency as sufficient heat.
Call-entry thresholds miss long single-invocation kernels. Choosing thresholds
by remaining execution work needs an independent workload set before any
default change.

## Reproduction

Use `benchmarks/paper/harness/promotion_bench.py` as documented in the harness
README. It records binary/input hashes, commands, randomized round samples,
exit status and output hashes. It generates the same wrapper bytes as these
measurements, without optimizing the original module. Statistics diagnostics
must be separate from timed measurements. Historical immediate/legacy binaries
are identified by the archived manifests; the helper compares off/budgeted
using the same current binary and an optional explicit Wasmtime binary.
