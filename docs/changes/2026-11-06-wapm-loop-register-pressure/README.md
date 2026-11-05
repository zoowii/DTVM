# Change: WAPM loop register-pressure investigation

- **Status**: Proposed
- **Date**: 2026-11-06
- **Tier**: Light

## Scope and decision

Freeze upstream main at `193b8d2e8ddeb54af974bc8a2b9cc52b838de8b2` (#640 merged).
Investigate WAPM weaknesses against Wasmtime 45 using canonical modules, scaled
inputs, phase clocks, per-function interventions and native assembly. This is a
research archive: candidate patches are opt-in experiments, not a new supported
configuration or default policy. Production source remains unchanged.

The actionable finding is private compute-helper allocation, especially pi's
bitwise floating remainder routine. A structural selector reproduces its benefit
without recognizing pi or a function number and also helps a separate fib case.
Short-input costs and selection overhead still prevent default enablement.

## Inputs and baseline

`evidence/environment.json` records the Release build and host (EPYC 9V74,
2-CPU quota, CPU 0 affinity). Both JITs and checked arithmetic are enabled;
ASan, EVM, SGX and perf profiling are outside local validation. Wasmtime 45 uses
its default Cranelift settings and `-C cache=n`; DTVM uses default lazy MT unless
a row explicitly says serial FastRA. Both use exactly the same wasm per row.
DTVM targets its existing SSE feature set; Wasmtime can use host AVX. No ISA or
safety policy was changed to obtain a win.

The new screen covers 18 canonical WAPM cases and pi arguments 100 and 1000,
with 5 measured rounds and one excluded warmup per engine/mode. It excludes irb
and sam; it is not an all-20 WAPM result. Most canonical inputs are startup wins
for DTVM. Amirali is approximately tied (7.466 vs 7.223 ms, exploratory only).
Pi reverses as work grows:

| Screen, fresh-process median ms | Upstream lazy MT | Upstream serial FastRA | WT45 |
|---|---:|---:|---:|
| pi, argument 1 | 26.808 | 24.014 | 38.920 |
| pi, argument 100 | 40.281 | 38.087 | 54.042 |
| pi, argument 1000 | 632.290 | 623.902 | 548.441 |

`screen-r5` retains each mode separately. Argument 10000 was stopped during its
first warmup after 1000 already exposed the crossover; it has no reported result
and is removed from the screen manifest/sample set. Large inputs supplement,
not replace, the canonical catalog. No linear scaling model is assumed.

## Function-level causal narrowing

Pi has 11 original imports. Internal function 2 is its main computation,
51 is the floating remainder routine (identified by body, not an imported host
math call), and 52 is logarithm. Their original WT45 global indices are 13, 62,
and 63. The diagnostic compiler can force individual foreground functions to
GreedyRA; all other compiler settings are fixed.

The 7-round pilot tests main alone, remainder alone, log alone, main+remainder,
and all functions. Main alone and log alone do not establish an improvement on
pi(1000); forcing all functions costs 96.666 ms on pi(1), versus main's 28.494 ms.
Therefore enabling GreedyRA globally is an unsuitable conclusion.

An independent 21-round confirmation gives:

| Canonical pi input | Upstream | Same diagnostic binary, option off | Remainder only | Main + remainder | WT45 |
|---|---:|---:|---:|---:|---:|
| argument 1 | 30.582 | 31.289 | 33.504 | 37.443 | 45.046 |
| argument 1000 | 637.035 | 634.384 | 556.039 | 550.183 | 575.340 |

These are fresh-process medians in ms. Remainder-only paired median change versus
upstream on pi(1000) is -14.12%, bootstrap 95% interval [-15.68%, -11.40%].
Main+remainder is -14.56% [-15.86%, -12.45%]. The option-off control interval
spans zero. On pi(1), main+remainder is slower: +17.05% [10.20%, 24.68%].
Ratios are medians of within-round ratios; they need not equal ratios of the
reported marginal medians. See manifests and `analysis.json` for seeds/counts.

## Phase and assembly evidence

The unmodified traced pi(1000) run spends about 618 ms between before-call and
after-call, versus sub-ms runtime/load/instance stages. The diagnostic derived
module further splits the prime-contribution computation from finding the next
prime. Its WAT matches a fresh disassembly of the canonical module before edits
(`input-provenance.json`). It uses reserved low scratch memory and extra clocks;
its numbers are diagnostic, not canonical end-to-end timings.

| Diagnostic median ms, 7 rounds | Contribution computation | Find next prime | Whole process |
|---|---:|---:|---:|
| Upstream | 608.559 | 0.168 | 639.200 |
| Remainder-only Greedy | 521.990 | 0.173 | 554.366 |
| Main + remainder Greedy | 516.209 | 0.154 | 550.371 |
| WT45 | 539.201 | 0.371 | 584.689 |

The contribution phase includes modular exponentiation, integer division and
repeated floating remainder calls. This narrows the investigation away from
prime search and printf startup. It does not assign every cycle to remainder.

| Native remainder function | Function/symbol bytes | CFG-reachable static instructions | Instructions with frame-memory operands |
|---|---:|---:|---:|
| DTVM foreground FastRA | 893 | 259 | 95 |
| DTVM Greedy intervention | 518 | 159 | 1 |
| WT45 | 688 | 149 | 0 |

Post-link DTVM dumps and default WT45 AOT assembly are retained. WT45's 688-byte
symbol includes 606 bytes through the final return plus 82 bytes of literal
pool/padding. Instruction counts follow both direct CFG branches and stop at
returns/traps, excluding unreferenced data decoded by objdump; all analyzed
jump edges resolve. Raw assembly still shows those data bytes. DTVM's FastRA
loops repeatedly load/store loop-carried values; Greedy retains substantially
more state in registers. Counts include prologue/epilogue and cold paths, and do
not prove dynamic load counts or hardware stalls. Whole-allocator changes also
affect copies, layout and other decisions. `SHORT_RA` records actual allocation;
`SHORT_COMPILE` retains the originally requested FastRA flag even when overridden.

## Generic candidate and rejected alternative

`evidence/source/pure-loop-v1.patch.json` is a research selector: foreground FastRA functions
with at most 768 bytecode bytes excluding locals, 32 locals, 64 MIR blocks,
no memory/global/table flags, no calls, and a cyclic reachable CFG use GreedyRA.
It contains no case name or function ID. In the checked controls it selects only
pi internal 51 and fib internal 1 (`evidence/selection/summary.json`). Thresholds
are exploratory structural bounds, not tuned performance guarantees.

The initial 15-round matrix covers ten cases, including short CLI controls:

| Case | Upstream | Static candidate v1 | WT45 |
|---|---:|---:|---:|
| pi(1000) | 632.144 | 553.003 | 560.116 |
| fib_iter_dev, canonical input | 22.731 | 15.709 | 15.091 |
| pi(1) | 28.056 | 29.443 | 40.751 |
| echo | 27.680 | 28.052 | 39.385 |
| base64cli | 122.426 | 125.908 | 507.315 |

Paired changes on pi(1000) and fib are -11.46% [-15.22%, -11.03%] and -32.80%
[-36.64%, -25.81%]. Echo and base64cli changes versus upstream have positive
intervals in this exploratory run; comparisons against the same-binary option-off
control span zero. No function is selected in those cases. Selector overhead,
binary layout and run noise must be separated; the data does not establish a
regression mechanism, nor prove short-case non-regression.

The v1 selector deliberately overrode allocator choice for diagnosis. Enabling
it during CTest exposed three policy/shape failures: explicit FastRA settings
were no longer respected. `evidence/source/pure-loop.patch.json` fixes this by requiring lazy
mode and leaving `DisableMultipassGreedyRA` authoritative. Final tests and a
separate final-version timing matrix are recorded below; earlier binary hashes
and measurements remain labeled v1.

A second generic experiment recognizes two reads of the same FP local as
ordered/unordered self-comparison, preserving NaNs. The 9-round matrix finds no
supported end-to-end improvement: pi(1000) paired change +0.23%, interval
[-1.25%, +3.15%]. It is rejected before semantic qualification, despite fewer
instructions. Its patch and proposed unexecuted semantic fixture are retained
as negative evidence, not shipped tests or a validated compiler change.

## Verification and reproduction

See the final-version results and verification summary below. No production
source, ABI, supported option, default allocator policy, trap/bounds check,
publication mechanism or concurrency behavior is changed by this archive.

To reproduce on a comparable Linux/LLVM15 environment:

1. Check out 193b8d2 with the repository's documented submodules/dependencies.
2. Copy `evidence/` to `work/wapm-followup/`, flatten its `scripts/` contents
   into that directory, and copy `data/*` subdirectories alongside them for
   analysis of retained samples. Archived stdout is escaped JSON with its
   original byte hash. Provide the canonical
   catalog and Wasmtime 45 at the paths in the manifests. Recreate
   `scaled-catalog.json` by copying the pi catalog row with arguments 100/1000.
3. Build clean Release both-JIT main as `work/wapm-followup/dtvm-main`. Apply
   one named patch (decode its JSON `patch` field) to that exact main and rebuild to the binary path recorded
   in the corresponding manifest; never overwrite a measured artifact.
4. Reuse the exact commands/flags/seed/round count in each manifest. `bench.py`
   reconstructs the screen/self-compare comparisons; `causal.py` runs the
   function-ID and generic-rule matrices. Diagnostic patches are alternatives,
   not a stack. The intervention patch includes trace hooks.
5. `make_phases.py` uses `work/shortcase/pi.wat`, reproducible with Binaryen
   `wasm-dis` on the canonical pi wasm. `phases.py` measures the derived module.
6. For spec tests apply `tests/wast/spec.patch` **before** building `spec_jsons`,
   then run tests and reverse the source patch. Applying it only after building
   leaves stale unpatched JSON/wasm fixtures (the retained guard run shows this
   setup failure; final fixture regeneration resolves it).

The [systematic workflow](methodology.md) explains falsification, controls,
statistical limits and the gates for turning this research into a shipping
optimization. Next experiments should distinguish loop-carried spills from
other RA decisions, reduce selection cost, and evaluate hotness plus compilation
budget. Private single-call loops require backedge hotness as well as call counts.

## Final guarded candidate

This is a separate Release binary with the lazy-only/explicit-disable guards,
not a relabeling of v1. `final-r15` contains 15 measured rounds plus warmup:

| Fresh-process median ms | Upstream main | Candidate, option off | Candidate, option on | WT45 |
|---|---:|---:|---:|---:|
| pi(1000) | 606.435 | 600.598 | 531.561 | 539.689 |
| fib_iter_dev | 19.855 | 20.660 | 14.332 | 13.439 |
| pi(1) | 27.559 | 27.674 | 28.112 | 39.845 |
| echo | 27.426 | 27.979 | 28.768 | 38.870 |
| base64cli | 118.586 | 120.311 | 120.992 | 495.668 |

Pi(1000) improves versus upstream by a paired -11.75%, interval
[-13.23%, -9.00%], and versus the same-binary control by -11.94%
[-14.78%, -6.42%]. Against WT45 it is -1.83% [-4.90%, +0.44%]: near parity,
not an established win. Fib is -29.19% versus upstream with a wide interval
[-31.59%, -0.11%], and still slower than WT45: +4.94% [2.16%, 5.32%].
The short-case candidate intervals versus upstream span zero. This does not
cancel the earlier v1 warning or establish equivalence. Host/run-level timing
varies; compare within a matrix, never concatenate runs into one median.

Final candidate enabled: 7/7 CTest targets pass, including 98 MIR/codegen tests
and allocator-policy tests. Eager Greedy, explicit FastRA and default lazy MT
WAST runs each pass 97/97. Initial selector-policy failures and the stale-fixture
setup failure remain archived; neither was hidden by weakening tests. EVM,
ASan and SGX were not validated.

Across the six uninstrumented matrices: 1912 processes, consisting of 1740
measured samples and 172 excluded warmups. A further 32 phase-diagnostic
processes are kept separately. Completeness, unique cells and zero exits are
checked in `validation.json`. Deterministic outputs match byte-for-byte; fib
normalizes DTVM's `0xcb228:i64` and WT45's `832040` to the same integer. Fortune
and UUID are nondeterministic and are not asserted byte-identical; they provide
screening timings, not a strong correctness equivalence check.

The retained candidate is promising research rather than a ready-to-enable
optimization. Next gates are cheap selection, bounded per-module compilation,
measured hotness/loop profitability and broader untouched workloads. The
frame-access evidence particularly motivates studying loop-carried live ranges
in FastRA, while keeping private hot-function tiering as a separate alternative.
