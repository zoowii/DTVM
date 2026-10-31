# Change: WASM MemoryBase CSE / hoist across BBs

- **Status**: Rejected
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Investigate whether a small, alias-safe CSE or hoist of the instance
linear-memory base pointer (`load $0, MemoryBaseOffset`) across basic
blocks is landable in WASM multipass. Stop: the frontend already caches
the pointer, and extra loads are the required post-call / post-grow
barriers.

## Motivation

The jacobi E3 dump showed ~11 MIR loads of the instance field at offset
4536 (that module's `MemoryBaseOffset`) in `main` / `function_2`. A
naive read is "hoist or CSE the heap base." That is unsafe across
`memory.grow` and any call that can grow (including host re-entry), and
it is redundant inside a call-free region.

## Impact

No optimizer change. Barrier comments, compiler-spec invariant, stop
note, and a WAST that stores into a page grown by a callee.

## Why rejected

See [the stop note](../../notes/2026-10-31-wasm-memory-base-cse-barriers.md).
Short version:

- `getMemoryLocation` already `dread`s a function-local cache.
- `handleCallBase` and `handleMemoryGrow` reload that cache on purpose.
- ~11 instance loads match ~10 call sites, not a missing intra-region CSE.
- In-place mmap grow can hide a stale pointer, so an execution-only
  green test is not a proof that CSE across calls is safe.

## Checklist

- [x] Investigation complete (stop, no CSE pass)
- [x] Barrier comments and WAST added
- [x] Module specs in `docs/modules/compiler/spec.md` updated
- [ ] Full multipass spec suite not run in this environment (no LLVM 15)
