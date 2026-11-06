# PolyBench first-call throughput evidence

Parent: upstream main 193b8d2e8ddeb54af974bc8a2b9cc52b838de8b2. The source tree
on this evidence branch stays at that parent; implementation.patch applies to it.
See the parent report for policy, final results, limitations and validation.

All 16 timing cohorts retain manifests and every process sample, including warmup
round -1. Do not pool cohorts. The final call-free policy is confirm-final-r9,
holdout-final-r3, startup-final-r21 and wapm-final-r7. Earlier cohorts are earlier
prototypes, including confirmed negative results. Frozen executable hashes and
exact commands are in manifests. Executables remain in the execution workspace;
older ones are gzip compressed, not uploaded here. Final production hash is
511d01c98bf11a66d4daadc2f2b036e3b0ba6eaea67a6009be1ff23c407065ca.

compiler-production-callfree.cpp is final production; diagnostic-callfree adds
research-only controls and tracing. The DFS ablation is this diagnostic build
with tracing off, not a pristine historical binary. Other compiler snapshots
and source-before-call-guard retain prototype sources. implementation.patch
includes all final production/test changes. analyze.py regenerates analysis.json
using 10,000 bootstrap samples, fixed seed and pointwise intervals.

output-previews.json keys are SHA256 of full actual decompressed outputs,
with byte counts and truncated previews. Samples retain full output hashes.
Large full matrices are compressed/deduplicated in the executor, not uploaded.
Native code and exact loop disassemblies, live Wasmtime perfmap/capture metadata,
and diagnostic logs were captured outside formal timing. Whole-body listings
may include literal data; the report uses minimal compute-loop intervals.
Validation: 9 lazy JIT, 98 MIR, 97 WAST in each of four modes. Fixtures used
canonical spec.patch and were restored afterwards. Empty format log means pass.
