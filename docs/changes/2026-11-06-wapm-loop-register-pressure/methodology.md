# Experimental compiler optimization workflow

Use this order to turn an engine comparison into a falsifiable compiler change.
The accompanying pi investigation is an example, not a claim about all WAPM
programs or a replacement for a wider workload suite.

1. **Freeze identities and semantics.** Record upstream commit, source patch,
   toolchain, build options, input/binary hashes, engine flags, host CPU and CPU
   quota. Preserve trap/bounds checks. A candidate binary with an option disabled
   is a separate control from upstream. Respect explicit allocator-disable flags.
2. **Screen two workload regimes.** Use canonical small inputs for first-use cost
   and valid larger inputs for execution cost. Do not replace original rows with
   scaled rows, pool modes, assume scaling is linear, or infer hot-code quality
   from startup wins. Report omissions and failures.
3. **Keep timing boundaries explicit.** Fresh-process measurements include spawn,
   compile, instantiate, execute, destruction and exit. Interleave variants in
   randomized rounds on the same CPU; disable Wasmtime module caching, exclude
   a named warmup, and check outputs. No builds, code dumps or profilers during
   formal measurements. Background JIT inherits affinity and the same quota.
4. **Bisect stages before instructions.** Add diagnostic clocks around loading,
   compilation, execution, and then semantic phases inside the guest. Count
   instrumentation overhead and extra helper compilation as uncertainty. Prove
   the disassembly came from the canonical module and check guest output.
   Never substitute instrumented timings for canonical end-to-end results.
5. **Bisect functions with controlled interventions.** Change one allocator or
   transformation at a time, then combinations and the complement. Keep a
   no-intervention binary control. A faster full-Greedy run alone is weak
   evidence: extra compilation and unrelated functions can conceal the effect.
   Internal function IDs are diagnostic labels, never production policy.
6. **Inspect the corresponding native functions.** Map import-adjusted IDs,
   allocator selection, actual code sizes, loop blocks, calls, frame accesses and
   boolean materialization. Static stack-operand counts are not dynamic spill
   counts, cache misses or bandwidth measurements. A whole-allocator intervention
   changes more than spills, so attribute the result to allocation/code quality
   until a narrower counterfactual or sampled-PC evidence separates causes.
7. **Generalize and test a holdout.** Replace an ID-specific intervention with a
   structural rule. Here: bounded, call-free, memory/global-free cyclic functions.
   Check a different compute case (fib) plus short CLI controls. Measure the
   selector itself even when it selects nothing. Threshold sweeps must be
   declared as tuning; keep an untouched holdout before claiming generality.
8. **Quantify and reject.** Keep all samples and negative results. Report medians
   and paired bootstrap intervals with sample counts/seeds. An interval spanning
   zero is inconclusive, not evidence of no regression or an optimization win.
   These exploratory comparisons do not use multiplicity correction and are not
   a fleet-wide performance guarantee.
9. **Separate discovery from shipping.** Enforce existing configuration contracts,
   run correctness tests with the experiment enabled, and record every failure.
   A static experimental selector is not a complete hot-tiering policy. Before
   default enablement, establish compile-cost limits, per-module budget, runtime
   hotness (including loops, not only calls), concurrency/publication safety,
   short-workload non-regression and multiple-host replication.

For pi, the experiment supports investigating loop-carried allocation across
basic blocks, and selective optimization of private computational helpers. It
does not justify removing trap checks, recognizing a library by name, enabling
GreedyRA for every function, or adding AVX solely because Wasmtime uses it.
