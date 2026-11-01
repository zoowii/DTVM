# Change: u32 non-pow2 constant udiv via magic multiply

- **Status**: Implemented
- **Date**: 2026-11-01
- **Tier**: Light

## Overview

Strength-reduce `i32.div_u` by a non-zero, non-power-of-two constant into a
widening multiply and shift, using LLVM's
`UnsignedDivisionByConstantInfo` (Hacker's Delight unsigned magic numbers).

Power-of-two unsigned division and remainder stay as `udiv`/`urem` (DTVMStack
#626). Divisor `0` is not folded, so the wasm integer-divide-by-zero trap is
unchanged.

The wasm frontend no longer spills integer div/rem constants into temps, so
the immediate divisor is visible to this peephole.

## Motivation

Hardware `DIV` on a u32 `/20` microbench is the hot instruction. The identity

```
q = trunc_i32((uext_i64(x) * 0xcccccccd) >> 36)
```

is the no-add case of the general magic expansion, not a `/20`-only special
case. Real static sites exist (jacobi `print_array` `/20`, libc formatting
`/10`); this change does not claim jacobi e2e stencil wins.

## Impact

- [compiler](../../modules/compiler/spec.md): `MIRPeephole` may rewrite
  `i32` `OP_udiv` when the divisor is a proven non-zero, non-pow2 constant
  (including a same-block local that holds that constant). Zero-divisor traps
  are preserved. No public API change.
- tests: helper brute-force, MIR litmus, WAST, microbench.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass

## Measurement (this agent, Release, multipass Greedy, `--disable-multipass-multithread`)

Kernel: 20e6-iteration `i32.div_u` loop. Five `/20` runs (Exe ms from
`--enable-statistics`):

| kernel | before Exe (median) | after Exe (median) |
| --- | ---: | ---: |
| u32 `/20` | 30.290 ms | 10.114 ms |
| u32 `/7` (add-indicator) | 30.281 ms | 14.973 ms |
| u32 `/10` | (same DIV loop, ~30.3 ms) | 10.080 ms |

After `/20` objdump of the Greedy body: `movabs $0xcccccccd; imul; shr $0x24`.
Hardware `div`/`idiv` count **1 → 0**.
