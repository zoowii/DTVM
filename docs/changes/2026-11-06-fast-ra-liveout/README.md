# Change: FastRA loop boundaries and sampled hot-helper research

- **Status**: Proposed
- **Date**: 2026-11-06
- **Tier**: Light

## Result and scope

Continue the [previous WAPM investigation](../2026-11-06-wapm-loop-register-pressure/README.md)
against upstream `193b8d2e8ddeb54af974bc8a2b9cc52b838de8b2`, still upstream main
when checked at completion. The strongest new evidence is sampled execution PCs:
about 80% of upstream pi(1000) CPU samples are inside the private remainder
helper, specifically its subtract/shift/conditional-update loop. Wasmtime 45
spends most samples in the same helper too. Startup, prime search and printf
are not the main large-input target.

Three bounded FastRA experiments shrink code but do not establish an end-to-end
win. A separate logic-flags peephole produces a small pi gain in a confirmation
run, with short-case regressions elsewhere. None is ready for default enablement.
The previous private pure-loop Greedy candidate remains substantially stronger.
This archive leaves production source and default policy unchanged.

## Controls and measurement

All formal comparisons use identical canonical wasm/input per row, fresh
processes through exit, CPU 0 affinity, warm file cache, Wasmtime 45 Cranelift
with module caching disabled, randomized within-round order and one excluded
warmup. DTVM is Release, both JITs, checked arithmetic, default lazy MT. Each
matrix includes upstream, latest experiment, same-binary option-off control,
previous private-loop Greedy candidate and WT45. The forwarding matrix also
includes exact+forwarding interaction. No builds, samplers or dumps run during
formal timing. ASan/EVM/SGX are outside validation.

`evidence/data/` retains manifests, raw samples and escaped stdout bytes/hashes.
The five matrices have 2100 processes: 1959 measured and 141 warmups. Each cell
has complete unique rounds and zero exit status. Deterministic outputs match;
fib normalizes `0xcb228:i64` and `832040` to the same integer. Reported confidence
intervals bootstrap the median of paired within-round ratios (10,000 resamples,
seed 2026110614), which need not equal ratios of marginal medians. Comparisons
are exploratory without multiplicity correction; never pool separate matrices.

## 1. Bounded exact live-out sets

FastRA's conservative `mayLiveOut` treats cross-block use as a reason to store.
The prototype computes uses-before-defs and a conventional live-in/live-out
fixed point before allocation, after phi elimination. Partial subregister writes
do not kill the whole value. Bounds are 2048 vregs, 256 blocks and 32 iterations;
non-convergence discards every partial set and falls back to the old algorithm.

Pi's remainder drops from 893 to 876 bytes and 95 to 90 static frame-memory
instructions. In the 9-round pilot, however, upstream pi(1000) is 602.930 ms,
exact is 623.148 ms, same-binary control 615.276 ms and WT45 530.901 ms. Paired
change versus upstream is +1.71%, interval [-1.77%, +6.70%]. Not a demonstrated
optimization. Much of the eliminated traffic is outside the dominant cycle.

## 2. Conservative spill-reload forwarding

After FastRA, track up to 64 known spill-slot/register pairs through a block
and an already-visited unique predecessor. Delete a reload only when its exact
64-bit GPR still contains that complete spill value. Calls, unknown memory
writes, side effects and aliasing register definitions invalidate knowledge.
Restricting width avoids incorrectly deleting a 32-bit load's upper-bit clearing
or an XMM load's upper-lane behavior. Preserve physical live-ins and clear kill
flags for extended values. Skip functions above 2048 vregs/256 blocks.

The helper loses only one load (893 to 889 bytes; 95 to 94 static frame-memory
instructions). Forwarding alone and combined with exact liveness do not establish
a timing benefit. In their 9-round matrix:

| pi(1000), median ms | Main | Option-off control | Forward | Exact + forward | Private-loop Greedy | WT45 |
|---|---:|---:|---:|---:|---:|---:|
| Fresh process | 588.427 | 596.914 | 605.947 | 594.317 | 527.841 | 535.747 |

The matched-register precondition is rarely satisfied where allocation has
already independently chosen registers on different sides of a join.

## 3. Restricted cross-block allocation regions

First try unique-predecessor/single-successor chains, then a deterministic
selected successor with one predecessor (up to 16 blocks per region), allowing
side exits. Allocate the region in reverse without resetting the physical/vreg
map at every member block; reload only at its head. Add carried physical live-ins.

A crucial side-exit obligation: if the selected child redefines a mutable vreg,
the parent may still need its older version on the other edge. Restore
conservative LiveOut store obligations on side exits. The dedicated semantic
fixture checks old/new versions, joins, loops, calls and 32/64-bit aliases.
This prototype remains over-conservative and can scan retained virtual entries
at side exits; it is not a production compile-time bound or a global allocator.

The helper becomes 855 bytes with 84 static frame-memory instructions, but the
loop header and conditional-update joins still cut register continuity.

| pi(1000), median ms, 9 rounds | Main | Option-off control | Regions | Private-loop Greedy | WT45 |
|---|---:|---:|---:|---:|---:|
| Fresh process | 582.820 | 580.236 | 573.041 | 507.406 | 517.843 |

Regions versus main: paired -1.21%, interval [-4.02%, +3.27%]. Code shrinkage
alone is not evidence of a speedup. These regions do not solve the loop-carried
allocation problem at multiple-predecessor headers/joins.

## 4. Actual PC sampling and native-code evidence

Use a separate x86-64 Linux preload sampler: ITIMER_PROF, requested 1000 us CPU
period, ucontext RIP, lock-free fixed-capacity atomic counters and no I/O or
allocation in the handler. Five independently launched pi(1000) processes per
variant; sampler runs are never performance samples. Engine affinity is set
before exec without preloading the taskset launcher, avoiding timer inheritance
across an extra exec. DTVM ranges come from diagnostic compile traces; WT45 ranges
come from perfmap. No sampled event table overflow occurred.

| Diagnostic, five runs | All samples | Guest-code samples | Remainder samples | Remainder / all |
|---|---:|---:|---:|---:|
| Main FastRA | 735 | 708 | 590 | 80.27% |
| Cross-block regions | 761 | 733 | 593 | 77.92% |
| Private remainder Greedy intervention | 664 | 632 | 499 | 75.15% |
| WT45 | 664 | 625 | 507 | 76.36% |

`sampled-fmod-*.asm` annotates native instruction offsets. Main's repeatedly
sampled area includes offsets 0x203, 0x20e, 0x22f and 0x26b: condition handling,
register copies, frame reloads and tests in the long-division cycle. Greedy's
corresponding region keeps substantially more state in registers. Native code
is captured after linking. WT45's actual live 688-byte helper was read from its
own process and verified byte-identical to the default AOT helper used for the
offline assembly (`evidence/wt-native/verification.json`).

Limits: the requested timer period is not the delivered period; observed runs
have roughly 130–175 samples. Timer quantization/coalescing, signal selection,
kernel CPU accounting and sampling skid limit resolution. Zero hash-table drops
does not mean zero missed timer events. A sampled MOV is not proof that that
instruction's latency caused a stall. These measurements identify functions and
loop regions, not precise load latency, branch misses or memory bandwidth.
Use per-run counts as well as pooled descriptive fractions; do not infer speed
from different engines' total sample counts.

## 5. Generic logic-flags reuse

Sampling motivates a smaller experiment independent of the allocator: freshly
lowered full-width AND/OR/XOR already set the flags needed for CMP(result, 0)
(CF=OF=0 and matching SF/ZF/PF). If the immediately last CgIR instruction defines
the exact result register at the matching 32/64-bit width, reuse those flags
instead of adding TEST. Cached results and unrelated flag setters fall back.
Keep the expression value cached; do not re-evaluate or discard operands.

The helper drops one TEST (893 to 891 bytes), with its 95 static frame-memory
instructions unchanged. The candidate is not enabled by default.

| pi(1000), separate matrices, median ms | Main | Option-off control | Flags reuse | Private-loop Greedy | WT45 |
|---|---:|---:|---:|---:|---:|
| 21 measured rounds | 597.999 | 602.464 | 587.963 | 519.438 | 541.154 |
| 31 measured confirmation rounds | 579.263 | 586.375 | 577.923 | 511.940 | 519.603 |

In 21 rounds, flags versus upstream is -0.72% [-2.27%, +0.29%], while versus
same-binary control it is -1.52% [-4.77%, -0.17%]. The independent confirmation
is -1.53% [-1.97%, -0.53%] versus upstream and -1.73% [-3.47%, -1.14%] versus
control. These paired effects must not be presented as ratios of the marginal
medians above. Small savings are plausible; broad non-regression is unproven.

Negative controls matter: base64cli in the 21-round run is +2.98%
[+1.26%, +5.54%] versus its same-binary control. Echo in the confirmation is
+2.51% [+0.65%, +5.01%] versus upstream (same-binary interval spans zero).
These are warning signals to investigate code layout, compile cost and allocator
interactions, not facts to dismiss as noise. No ready-to-merge PR is claimed.

## 6. Measured hotness, not arbitrary low call thresholds

A separately derived wasm increments counters at remainder entry and at the
long-division loop body, then writes two i64 counters. Main and WT45 agree
exactly, including the original printed digits. Counter runs are not timings.

| pi argument | Remainder calls | Long-division loop iterations |
|---|---:|---:|
| 1 | 6,400 | 22,598 |
| 10 | 12,644 | 50,462 |
| 100 | 154,942 | 922,742 |
| 1000 | 8,127,239 | 74,029,872 |

Thus thresholds such as 8/64/1024 calls also trigger on the canonical short
pi(1) workload. A loop-aware threshold can separate these work levels more
clearly, but selecting its value from this single case would overfit. These
counts motivate a declared sweep of calls, backedges and compilation budget,
not a new universal default. Counters themselves also have overhead and need
separate on/off checks before a runtime design is chosen.

## Verification, reproduction and next gate

- Regions: 7/7 CTest and 99/99 WAST in a final lazy-MT run. Exact+forward: 99/99
  WAST in a final lazy-MT run. Both include the new region/logic fixtures.
- Flags: 7/7 CTest (including existing 98 MIR/codegen tests); 99/99 WAST cases in
  eager Greedy, explicit FastRA and default lazy MT. New fixtures cover side-exit
  versions, integer wrap/aliases, all signed/unsigned zero-comparison predicates
  on i32/i64 AND/OR/XOR, cached values and divide-by-zero preservation.
- EVM/ASan/SGX, other CPUs and all experiment-flag combinations were not validated.
  These are exploratory prototypes, not supported runtime options.

Source snapshots are alternatives rooted at 193b8d2. Decode the JSON `patch`
field before `git apply`; `all-v1.patch.json` recreates the latest binary with
all prototypes present, enabled only by their named environment flags. The
flags-only patch was not separately timed as a standalone production build.
Scripts expect the workspace paths recorded in manifests; restore archived
compressed binaries before rerunning old matrices if using the original local
workspace. Rebuild from the named patch for portable reproduction. The canonical
pi WAT can be regenerated with Binaryen wasm-dis. Profiling and counter inputs
are derived diagnostics, never replacements for canonical benchmark rows.

Apply `tests/wast/spec.patch` before generating spec_jsons; generate the two new
fixtures with wast2json into their named build/wast/multipass subdirectories.
This investigation generated them explicitly because the existing CMake glob
was already configured. After testing, reverse the spec source patch.

The next substantial allocation experiment must handle loop headers and joins,
not only linear boundaries. Compare a bounded loop-region allocator against
private hot-helper Greedy promotion under the **same** call/backedge and
compilation budgets. Retain short CLI controls and an untouched workload set.
The present evidence favors private compute-helper upgrades over making FastRA
incrementally resemble a global allocator. Treat logic-flags reuse as a separate
small candidate whose short-case regression signals still need resolution.
