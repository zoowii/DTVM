# Change: Wasm add-imm displacement fold (not taken)

- **Status**: Rejected
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Follow-up to the multipass JIT lead **G**: fold `i32.add(dynamic, imm)` into
load/store `disp` so CGIR can emit `[base+disp]` instead of a separate ADD.
**Not implemented.** The fold is not equivalent to wasm wrap-then-offset
addressing. This change records the stop, adds a comment in
`getMemoryLocation`, and locks the wrap cases with a WAST.

## Motivation

`getMemoryLocation` already fuses a **constant** wasm address with the memarg
offset into `int32` displacement. The remaining pattern is

```
i32.load offset=N (i32.add x, C)
```

which today keeps `Index = add(x, C)` and `disp = N`. Folding to
`Index = x`, `disp = N+C` would match x86 `[MemBase + zext(x) + (N+C)]`.

Wasm (and DTVM’s check in `lowerWasmCheckMemoryAccessStmt`) is:

```
ea = zext64(wrap32(x + C)) + N
trap if ea + size > mem.length
access MemBase + ea
```

`zext64(x) + N + C` equals that **only when `x + C` does not wrap** as u32.
A 4GiB-capable linear memory (`PresetMaxMemoryPages = 65536`) can make the
wrapped address 0 in-bounds while the 64-bit sum is `2^32`. Extra trap is a
spec break. Combining `C+N` as a wrapping i32 address is worse: it can miss
an OOB trap (`add_imm_then_offset_oob` in the WAST).

Scale `{2,4,8}` was left untouched: `handleLoad`/`handleStore` hardcode
scale 1; enabling SIB scale needs a `shl` match that this stop does not
justify.

## Why a “fold when safe” subset is still a redesign

x86-64 `[base+index*scale+disp]` is a 64-bit effective address. The host
`MemBase` is a 64-bit pointer, so the 0x67 32-bit address-size prefix cannot
be used to recover wrap32. A 32-bit `LEA`/`ADD` of `x+C` still emits the
ADD — it does not deliver `[base+disp]`. Proving `x+C` cannot wrap needs
wasm address range analysis that this frontend does not have. Small
memories do not help: after wrap, the address is in `[0, C)` and is
in-bounds for any non-empty memory when `C` is a typical small addend.

## File pointers

| Piece | Path |
| --- | --- |
| Wasm address + memarg fusion (const only) | `src/compiler/wasm_frontend/wasm_mir_compiler.cpp` `getMemoryLocation` |
| Scale hardcoded to 1 | `src/compiler/wasm_frontend/wasm_mir_compiler.h` `handleLoad` / `handleStore` |
| Bounds check: zext32→64, then `ADD64` of `offset+size` | `src/compiler/target/x86/x86lowering_wasm.cpp` `lowerWasmCheckMemoryAccessStmt` |
| Load/store AM `[base+index*scale+disp]` (64-bit) | `src/compiler/target/x86/x86lowering.cpp` `lowerLoadExpr` / `lowerStoreStmt` |
| Max memory 4GiB (wrap-to-0 can be in-bounds) | `src/common/defines.h` `PresetMaxMemoryPages` |
| Wrap / miss-OOB WAST | `tests/wast/multipass/address_add_imm_wrap.wast` |

## Impact

- No lowering change. Comment only in
  `src/compiler/wasm_frontend/wasm_mir_compiler.cpp`.
- New WAST: `tests/wast/multipass/address_add_imm_wrap.wast`.
- Notes: `docs/notes/2026-10-31-multipass-lazy-jit-leads.md` (G + upstream).
- Spec invariant: `docs/modules/compiler/spec.md` (wasm linear-memory EA).

A wrap-aware redesign (range proof that `x+C` cannot wrap, or a 32-bit
wrapping LEA that does not actually remove the add) is a larger project.

Box Phase 1.5 also demotes this lead: atax already emits
`movsd (%rax,%rdx,1)` with few extra LEAs; figlet wall is compile
(JIT ~186ms vs exec ~0.45ms), not addressing. No fold PR.

## Checklist

- [x] Implementation complete — fold rejected; comment + WAST only
- [x] Tests added/updated (`address_add_imm_wrap.wast`)
- [x] Module specs in `docs/modules/` updated — wasm EA invariant
- [x] Build and tests pass — `specUnitTests address_add_imm_wrap -c multipass -m multipass`
