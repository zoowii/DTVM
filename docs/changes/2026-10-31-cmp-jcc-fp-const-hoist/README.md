# Change: cmp→jcc lowering and loop-invariant FP const hoist

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Two trap-safe multipass codegen cleanups from the jacobi-2d / fib dumps:

1. Hoist non-zero FP constants used outside the entry block into an entry
   `dassign` so jacobi-style stencil coefficients (e.g. `f64.const 0.2`)
   are materialized once.
2. Lower `br_if` of a not-yet-live `cmp` as `cmp`/`test` + `jcc` with the
   predicate's condition code, matching select's flag-preserving path.
   `FCMP_OEQ`/`FCMP_UNE` stay on `setcc` (two flags). The existing
   `setcc`+`test`+`jcc` peep also inverts `COND_E` for short diamonds.

Out of scope: folding `add(dyn,imm)` into load/store displacement
(rejected in zoowii/DTVM#14 / `address_add_imm_wrap.wast`).

## Motivation

Hot jacobi compute is wasm `main` / `function_2` (nested stencil, mild
spills). MIR currently embeds a fresh `ConstantInstruction` at each
`f64.const`, so lowering materializes `MOV64ri`+bitcast in the loop.
`br_if` of an icmp always did `setcc`+`test`+`jcc` even when the compare
was not a live value; fib/jacobi loop edges show that sequence. Select
already consumes flags directly.

## Impact

- [compiler](../../modules/compiler/spec.md): `MIRPeephole` hoist;
  `X86CgLowering::lowerBrIfStmt`; `X86CgPeephole::optimizeCmp` `COND_E`
- tests: MIR litmus, CgIR shape, `peephole.wast` / `peephole_mod.wat`

No public API change. Wasm trap, gas, and wraparound semantics are
unchanged. `+0.0` is not hoisted (x86 `FLD0`). Entry blocks with
predecessors are not rewritten (backedge would re-execute the init).

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass
