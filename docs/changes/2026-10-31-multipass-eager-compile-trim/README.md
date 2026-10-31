# Change: Eager multipass compile-trim (reachable functions)

- **Status**: Implemented
- **Date**: 2026-10-31
- **Tier**: Light

## Overview

Add an **opt-in** flag so WASM eager multipass JIT compiles only functions
reachable from exports, the start function, and table/elem `call_indirect`
targets, instead of every internal function. Default eager behavior stays
full-module compile.

## Motivation

Eager `EagerJITCompiler::compile()` currently loops
`0 .. NumInternalFunctions-1` unconditionally (single-thread and multithread
paths). Host/short-run modules pay full-module JIT even when many functions
are never called. Lazy-F already avoids that by compiling on demand; this
change gives eager a conservative middle ground without changing long-run
quality.

Motivation numbers (CPU0 medians; **not claimed as this PR's speedup**):

- figlet: eager wall ~193ms compiling all 193 funcs; lazy-F ~67ms compiling 113
  (~41% never compiled)
- atax: eager exec already better than singlepass, but full-module JIT ~71ms
  dominates wall
- jacobi long-run multipass remains valuable (~3.6× exec vs singlepass) and
  **must stay available unchanged**

## Design

New `RuntimeConfig::EnableMultipassEagerTrim` (default `false`), CLI
`--enable-multipass-eager-trim`.

When set, eager compiles the internal-function set obtained by DFS over
`Module::CallSeqMap` from:

1. exported functions (`ExportedFuncIdxs`, including `--entry-hint`)
2. the start function, if present
3. table/elem functions (`TypedFuncRefs`) as extra roots for `call_indirect`

Import callees are skipped. If that set is empty, **fall back to compiling
every internal function** (modules invoked only by index with no exports).

Uncompiled functions keep `CodeEntry::JITCodePtr == nullptr`. Eager has no
lazy stubs, so this mode is **opt-in**. Incomplete reachability (for example
host-mutated tables) is why it is not the default.

### Unchanged full-module eager (jacobi / long-run)

`-m multipass` without `--enable-multipass-eager-trim` and without
`--enable-multipass-lazy` is the previous full-module eager path (greedy RA,
optional multithread). Jacobi-style long-run quality is that path.

### Host-tool TTFI recommendation

For CLI host tools that only invoke one export, prefer lazy-F:

```
dtvm -m multipass --enable-multipass-lazy [--disable-multipass-greedyra --disable-multipass-multithread]
```

Eager trim is for workloads that want eager compile (no first-call stall) but
can skip unused functions:

```
dtvm -m multipass --enable-multipass-eager-trim
```

`--enable-multipass-lazy` takes precedence; trim is ignored when lazy is on.

## Impact

- `src/compiler/compiler.cpp`: reachable-set selection in `EagerJITCompiler`
- `src/runtime/config.h`, `src/cli/dtvm.cpp`: flag
- `docs/modules/{compiler,runtime,cli}`: contracts
- Tests: unused function not compiled; exported + indirect still run

Out of scope: FastRA spill rewrite, lazy resolver fxsave trim, add-imm
addressing, EVM.

## Checklist

- [x] Implementation complete
- [x] Tests added/updated
- [x] Module specs in `docs/modules/` updated (if affected)
- [x] Build and tests pass
