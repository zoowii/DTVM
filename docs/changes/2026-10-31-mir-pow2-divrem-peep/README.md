# Change: MIR unsigned pow2 div/rem peephole

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Extend `MIRPeephole` so unsigned integer `udiv`/`urem` by a nonzero constant
power of two become `ushr`/`and` (and const-const `udiv`/`urem` with a nonzero
divisor fold to a constant). Zero-divisor and all signed `sdiv`/`srem` stay
as-is so wasm traps and toward-zero signed remainder are preserved.

## Motivation

`X86CgLowering::lowerDivRemExpr` always emits `DIV`/`IDIV` with an EAX:EDX
constraint. `fastEmit_ri_` already contains an `ISD::UDIV`→`SRL` rewrite for
pow2 immediates, but that path is never taken for `OP_udiv`/`OP_urem`. The
rewrite is trap-safe: wasm `div_u`/`rem_u` trap only on divisor 0, and a
nonzero constant power of two cannot trap.

## Impact

- Module: [compiler](../../modules/compiler/spec.md) — `MIRPeephole` only.
- Wasm trap semantics unchanged (`rem_u`/`div_u` by 0 still trap).
- EVM gas unchanged: EVM already strength-reduces const pow2 DIV/MOD in
  `handleDiv`/`handleMod`; the u64 runtime-divisor path uses a non-constant
  `select` guard, so this peep does not fire there.
- LazyJIT stub publish is untouched.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated (litmus, WAST, MIR lit, wasm e2e)
- [x] Module specs in `docs/modules/` updated
- [x] Build and tests pass — Debug multipass+singlepass: `mirPeepholeTests`
  28/28, `lazyJitStubTests` 2/2, `specUnitTests peephole -c multipass -m
  multipass`, `ircompiler` on `tests/mir/peep-pow2-divrem.ir`
