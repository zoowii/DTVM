# Multipass / lazy JIT optimization leads (2026-10-31)

Survey of the current DTVM multipass and lazy JIT paths against a prior
internal ranking (Q / G / R2 / R3 / Lazy) and against the class of
Wasmtime/Cranelift “small wins” (tiered JIT, algebraic peeps, addressing
modes, call overhead). No performance percentages are claimed without
measurement.

Related: this branch also lands one high-confidence MIR peep
([change](../changes/2026-10-31-mir-pow2-divrem-peep/README.md)).
Everything else below is ranked experiment, not a promise to ship.

## Current pipeline (file pointers)

```
Wasm / EVM bytecode
  → WasmMirBuilder / EVMMirBuilder
  → MVerifier
  → MIRPeephole                 src/compiler/mir/pass/peephole.cpp
  → DeadMBasicBlockElim
  → X86CgLowering               src/compiler/target/x86/x86lowering*.cpp
  → X86CgPeephole               src/compiler/target/x86/x86_cg_peephole.cpp
  → FastRA or CgRAGreedy
  → PrologEpilog / PostRA / MC
```

Lazy publish (Wasm only; EVM eager-only):

```
stub jmp rel32=0 (trampoline)
  → stubResolver (save all GPRs + fxsave64)
  → compileFunctionOnRequest (FastRA, CAS from trampoline only)
  → background GreedyRA xchg upgrade
  → CompileStatus::Done forbids FastRA patch
```

Pointers: `src/compiler/compiler.cpp` (`compileFunctionOnRequest`,
`compileFunctionInBackgroud`), `src/compiler/stub/stub_jmp_target.h`,
`src/compiler/stub/stub_x86_64.S`,
`docs/modules/compiler/spec.md` (monotonicity invariant).

## Re-verify prior ranking

### Q — MIR C2-style peeps (unsigned pow2 rem, shift masks, compare/select)

**Status: partial; the pow2 rem/div hole was real and is the PoC on this
branch.**

Already landed (2026-10-07 pack): `ctz/clz == 0`, `select+icmp`, local
algebra (`+0`, `x-x`, `*0/*1`, `&/|/^` identities), constant `br_if`.
Tests: `src/tests/mir_peephole_tests.cpp`, `tests/wast/multipass/peephole.wast`.

Gaps found in source:

| Pattern | Before this branch | Why it is/isn't a gap |
| --- | --- | --- |
| `urem x, 2^n` → `and x, 2^n-1` | Missing | Trap-safe (nonzero const). `lowerDivRemExpr` always emits DIV. `fastEmit_ri_` has `ISD::UDIV`→`SRL` but `OP_udiv` never calls it. **Landed here.** |
| `udiv x, 2^n` → `ushr x, n` | Missing | Same. **Landed here.** |
| `sdiv`/`srem` by pow2 | Correctly not folded | Wasm `srem` is toward-zero, not AND; `sdiv` by 2 is not `sshr`. |
| `udiv`/`urem` by 0 | Must not fold | Wasm IntegerDivisionByZero. Litmus + WAST trap kept. |
| Shift-count `and` of `width-1` | Frontend does not emit it | `FunctionMirBuilder::handleShift` emits `shl(x, y)` and relies on x86 masking. A `shl(x, and(y, 31))` peep would only fire on explicit user masks. Low priority. |
| compare/select | Pack B already folds const-arm select+icmp | Remaining: `select(c, 1, 0)` booleanize. Source-obvious, small; needs a microbench to rank vs noise. |

EVM gas: unaffected. EVM `handleDiv`/`handleMod` already rewrite const
pow2 at the frontend (`evm_mir_compiler.cpp` around the DIV→SHR and
MOD→AND comments). The u64 runtime-divisor path uses
`select(isZero, 1, B)` so the divisor is not a constant and this peep
does not fire.

### G — SP / addressing-mode folding

**Status: partial; do not claim a wholesale gap.**

Load/store IR already carries x86 AM fields (`LoadInstruction`: Base,
Scale, Index, Offset) and lowering emits `[base + index*scale + disp]`
(`x86lowering.cpp` `lowerLoadExpr` / `lowerStoreStmt`).

Wasm `getMemoryLocation` (`wasm_mir_compiler.cpp`) already:

- fuses a **constant** wasm address + immediate offset into `disp` when
  the sum fits in `int32`;
- uses `MemoryBase` as the load base and the wasm address as Index with
  scale 1;
- splits offsets `> INT32_MAX` by adding `0x80000000` into the base.

What is **not** done (real residual, not “no addressing modes”):

1. Fold `add(dynamic, imm)` into `disp`. Today
   `i32.load offset=N (i32.add x, C)` keeps Index = `add(x, C)` because
   `IsConstBase` is false. Cranelift/Wasmtime fold this. Bounds-check
   (`WasmCheckMemoryAccess`) must stay consistent with wraparound; this
   is the experiment, not a drive-by.
2. Scale ∈ {2,4,8} from `shl` of the index. Scale is hardcoded to 1 in
   `handleLoad`/`handleStore`.
3. LEA for non-memory integer `add`/`shl`. Switch lowering uses LEA for
   jump tables; general ADD does not.

Locals are MIR variables, not SP-relative wasm slots; spill addressing
is RA’s job. “SP folding” as in Cranelift frame-index folding is a
different layer (`prolog_epilog_inserter`).

**Verdict:** verify (1) with a CGIR/asm dump test before claiming a
memory-op-dense win. Not this PR: trap/bounds interaction is easy to
get wrong.

### R2 / R3 — EVM compile-time fold / pow2 DIV-MOD / BYTE-EXP specials

**Status: largely already implemented. Remaining work needs counters, not
more frontend specials by default.**

| Item | Where | Notes |
| --- | --- | --- |
| Const DIV/MOD/SDIV/SMOD | `handleDiv` / `handleMod` / `handleSDiv` / `handleSMod` | Both-const folded; DIV-by-0 / MOD-by-0 → 0 (EVM, not trap). |
| Pow2 DIV → SHR, pow2 MOD → AND | same | Source-obvious, already there. |
| u64÷u64 / u64%u64 range fast path | same | `select` zero-guard so x86 DIV does not trap. |
| Const u64 divisor cascading 128/64 | `handleDivU64Divisor` | |
| EXP both-const + EIP-160 gas | `handleExp` | `docs/changes/2026-05-29-u256-const-fold-exp-signextend` |
| EXP `2^k ** x` → shift | `handleExp` | `docs/changes/2026-06-15-evm-exp-strength-reduction` |
| EXP `x ** 0/1/2/3` | `handleExp` | |
| BYTE both-const and const index | `handleByte` | Dynamic index is a select tree over 4 limbs. |
| SIGNEXTEND both-const | `handleSignextend` | |

Honest leftover (measure first):

- U128 DIV/MOD: `DivU128OpportunityCount` exists under
  `ZEN_ENABLE_MULTIPASS_JIT_LOGGING` — use that before writing a 128/64
  cascade for the general path.
- BYTE with a dynamic index is already specialized; further “byte
  specials” are unlikely to beat SLOAD/CALL/KECCAK in real contracts.
- Storage is a host call (`handleSLoad`/`handleSStore` →
  `GetSLoad`/`SetSStore` in `evm_imported.cpp`) plus gas sync when
  `ZEN_ENABLE_EVM_GAS_REGISTER`. JIT peeps will not move the needle on
  SLOAD-dense traces.

### Lazy — first-call resolver save/restore; monotonic publish

**Publish monotonicity: already done. Do not touch.**

Invariant (keep): trampoline (`rel32 == 0`) → FastRA (CAS from
trampoline only) → GreedyRA (`xchg`). After `CompileStatus::Done`,
`compileFunctionOnRequest` returns `GreedyRACodePtrs[FuncIdx]` and must
not patch. Tests: `src/tests/lazy_jit_stub_tests.cpp`.

**First-call cost: source-obvious, not a tiny patch.**

`stubResolver` in `stub_x86_64.S` pushes 16 GPRs (including a dubious
`push %rsp`), `sub $560, %rsp`, `fxsave64`, absolute `call` through a
patched `movabsq`, then `fxrstor64` and the reverse pop sequence. That
is paid on every first call (and only then, once the stub `jmp` is
published).

What would need measurement before changing it:

- How much of TTFI is resolver vs FastRA compile vs module load
  (paper scripts already split lazy TTFI vs greedy_mt).
- Whether a GPR-only save (no fxsave) is legal for the Wasm ABI of
  functions that do not pass/return float. Wrong here = non-deterministic
  XMM corruption.
- The `push %rsp` / `pop %rsp` pair looks like dead weight; confirming
  it is unused is a cleanup, not an optimization story.

Do **not** relax Done-forbids-FastRA. That litmus is load-bearing.

## Ranked leads by scenario

Confidence: **source-obvious** vs **needs measurement**. Impact is
qualitative only.

### Compute-dense Wasm (PolyBench-like, integer kernels)

1. **(landed)** unsigned pow2 `udiv`/`urem` → `ushr`/`and`. Removes DIV
   and the EAX:EDX constraint. Exact effect on a given kernel is
   frequency-dependent — measure `i32.rem_u`/`div_u` with const 2/4/8/16
   if you want a number.
2. **Needs measurement:** `select(c, 1, 0)` → icmp; more algebra
   (`mul 2^n` is already SHL in `fastEmit_ri_`). The 2026-10-07 pack
   already took the high-confidence algebraic fruit.
3. **Needs measurement:** GreedyRA vs FastRA quality on hot loops.
   Lazy already upgrades; eager default is Greedy unless
   `--disable-multipass-greedyra`.

### Memory-op dense Wasm

1. **Needs a careful design + CGIR dump test:** fold `add(x, C)` into
   load/store displacement (`getMemoryLocation`). Highest remaining
   Cranelift-style addressing win. Bounds-check wrap is the risk.
2. **Lower:** scaled-index from `shl`. Wasm loads are byte-addressed;
   this fires when the programmer (or LLVM-wasm) does `base + i<<2`.
3. **Not a gap:** const offset fusion and `[base+index+disp]` lowering
   already exist.

### Wasm → host-call dense

1. **Needs measurement:** import/`icall` path
   (`handleCallBase`, `lowerCall`) always does CALLSEQ, ABI copies, CSR
   mask, then `checkCallException` + `updateMemoryBaseAndSize`. Inlining
   or specialized leaf ABIs would be a real project.
2. **Source-obvious but not small:** lazy first-call resolver (above).
   After warmup the stub is a 5-byte `jmp`; host-call density in
   steady state is the import call, not the resolver.
3. **Do not change** stub publish ordering.

### Storage / EVM-dense

1. **Already done at frontend:** const fold, pow2 DIV/MOD, EXP specials,
   BYTE const index. Do not re-propose these.
2. **Needs counters:** remaining U128 DIV/MOD (`DivU128OpportunityCount`).
3. **Host-bound:** SLOAD/SSTORE/CALL/KECCAK are runtime calls with gas
   sync. Next wins are cache/host (cold access, journal), not MIR peeps.
4. **RA compile time** on large EVM functions is a separate track
   (`docs/changes/2026-10-11-evm-regalloc-compile-time`).

## What this branch implements vs what waits

Implemented (tiny, reviewable, unit-tested, no box benches):

- `urem x, 2^n` → `and x, 2^n-1`
- `udiv x, 2^n` → `ushr x, n` (`n=0` → identity)
- const-const `udiv`/`urem` when divisor ≠ 0
- explicit non-folds: zero divisor, non-pow2, `sdiv`/`srem`

Not implemented, and why:

| Lead | Why not now |
| --- | --- |
| add-imm → addressing disp | Bounds-check wrap; needs CGIR dump tests |
| Shift-count mask peep | Wasm frontend never emits the mask |
| `select(c,1,0)` | Small; rank vs noise needs a microbench |
| Lazy resolver GPR/XMM trim | ABI-sensitive; measure TTFI first |
| EVM U128 DIV | Counter exists; measure hit rate first |
| Host-call ABI / inlining | Not a small peep |

## Suggested next experiments (in order)

1. Microbench the landed rem/div peep on a loop of `i32.rem_u` by 8
   (optional; correctness is already gated). Use the existing
   `peephole_mod.wat` bench harness pattern if you want a number for
   the 2026-10-07 pack table.
2. Prototype `getMemoryLocation` add-imm folding behind a dump test that
   shows `[base+disp]` rather than an ADD+load, with WAST wrapping
   `offset + base + size` overflow cases.
3. Instrument lazy TTFI: resolver cycles vs FastRA wall time vs Greedy
   upgrade. Paper scripts under `benchmarks/paper/scripts/run_lazy_*.sh`
   are the right harness.
4. Dump `DivU128OpportunityCount` on a contract corpus before writing
   another DIV cascade.
