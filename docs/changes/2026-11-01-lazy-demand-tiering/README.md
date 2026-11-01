# Change: Lazy MT BG-Greedy only start/exports (demand tiering)

- **Status**: Proposed
- **Date**: 2026-11-01
- **Tier**: Light

## Overview

Stop multithread LazyJIT from background-Greedy compiling every function that is statically reachable from exports through `CallSeqMap`. Queue BG GreedyRA only for the start function and exported functions. Unexported callees stay on stubs and compile on demand (FastRA) when first called.

## Motivation

`CallSeqMap` records direct `call` targets **and** every table function whose type matches a `call_indirect`. DFS from exports therefore BG-Greedys most of libc on short-lived WASI modules. On this box, cowsay (821 internal functions) compiled **381** bodies in the background vs **173** actually demanded; wall median 767 ms vs lazy-F-ST 137 ms vs interpreter 10 ms. Echo/md5/figlet show the same compile-dominated shape.

Long-running paper kernels (`main` / `_start`) are the exported entry, so they still get background GreedyRA. Eager multipass is unchanged.

## Impact

- **Module**: `src/compiler/compiler.cpp` (`LazyJITCompiler::dispatchEntryCompileTasks`)
- **Spec**: `docs/modules/compiler/spec.md` (lazy prefetch policy)
- **Contracts**: no API change. Default `--enable-multipass-lazy` without `--disable-multipass-multithread` compiles fewer functions in the background.
- **Out of scope**: FastRA full-scan use truncation; unconstrained `i32.add`→memarg/disp fold; call-count hot-path upgrade of unexported callees.

## Checklist

- [x] Implementation complete
- [ ] Tests added/updated (policy change; WAPM wall + statistics re-run on the spike)
- [x] Module specs in `docs/modules/` updated (if affected)
- [ ] Build and tests pass
