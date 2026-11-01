# Change: Wrap-safe x86 LEA for integer add/sub immediates + MIR add-imm reassoc

- **Status**: Implemented
- **Date**: 2026-11-01
- **Tier**: Light

## Overview

Two trap-safe integer addressing cleanups that do **not** fold `add(dyn,imm)`
into load/store displacement (rejected in DTVMStack #626 / zoowii/DTVM#14):

1. Lower i32 `add`/`sub` with a signed-disp32 immediate to three-address
   `LEA64_32r` so the result is `trunc32(zext32(x)+disp) == wrap32(x+disp)`.
   i64 stays ADD/SUB so EFLAGS.CF remains available for EVM ADC chains.
2. MIR: `add(add(x,C1),C2) → add(x,C1+C2)`, `sub(x,C) → add(x,-C)`,
   `mul(x, 1<<k) → shl(x,k)`.

Jacobi stencil still addresses with `[base + wrap32(index+C)]`.

## Motivation

jacobi-2d `function_2` emits `mov %r12d,%ecx; add $0x28a8,%ecx; movsd
(%rax,%rcx,1),%xmm0` for each stencil neighbor. The extra `mov` is
two-address ADD while the loop index stays live. `lea 0x28a8(%r12),%ecx`
is one instruction, does not clobber flags, and keeps wrap32.

## Impact

- [compiler](../../modules/compiler/spec.md): `X86CgLowering::tryLowerAddSubImmAsLEA`
- tests: CgIR litmus, `add_imm_lea_wrap.wast` (wrap value + wrap address)

No public API change. Wasm trap / gas / wraparound unchanged.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass
