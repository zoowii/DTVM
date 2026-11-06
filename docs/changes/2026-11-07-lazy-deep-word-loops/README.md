# Change: Initial Greedy for deep integer word-memory loops

- **Status**: Proposed
- **Date**: 2026-11-07
- **Tier**: Light

## Overview

Keep #642's FP policy and bounded entry-only scheduling. Additionally select
initial Greedy for a demanded body up to 2048 source bytes containing a call-free
loop at depth >=3 with a 32/64-bit integer load or store. Byte/halfword accesses,
shallow integer loops and register-only loops do not trigger this new rule.
Do not collect these hints for ineligible bodies or allocator modes. Preserve
#641 loop/call metadata independently.

## Motivation

The completed #642 study covers all 30 PolyBench and 20 WAPM catalog cases.
Three-round mode controls on merged main af4b07b show Floyd lazy MT 36698 ms
versus serial Greedy 22718 ms (WT45 26736); Nussinov 10806 versus 8102 (WT45 9320).
Mode changes also change threading, so a new MT candidate must verify the
hypothesis. No benchmark IDs or names belong in production selection.

## Impact and validation plan

Compiler frontend hint collection and initial allocator choice only. No guest
counters, OSR, new background tasks or arithmetic transformations. Explicit
Fast, eager/serial choices and monotonic publication remain unchanged.
The loop-depth/width rule is a static tradeoff, not guaranteed runtime heat.
Compare production merged main, candidate and WT45 on integer targets, existing
FP gains, short numeric cases and all WAPM; preserve negative results. Add
positive/negative hint tests and rerun existing suites before opening a PR.

- [ ] Implementation complete
- [ ] Tests added/updated
- [ ] Compiler spec updated
- [ ] Build and tests pass
- [ ] Production benchmark benefit and startup checks
