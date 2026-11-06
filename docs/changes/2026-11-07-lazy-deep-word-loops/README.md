# Change: Initial Greedy for deep integer word-memory loops

- **Status**: Proposed
- **Date**: 2026-11-07
- **Tier**: Light

## Overview

Keep #642's FP policy and bounded entry-only scheduling. Select initial Greedy
for a demanded body up to 2048 source bytes containing a third-level loop
subtree with at least two syntactic 32/64-bit integer loads and one integer
store, with no other memory access types/widths or guest calls in that subtree.
Deeper loops contribute effects to the third-level subtree; an isolated pure
inner fragment does not override a mixed or callful enclosing region.

Byte/halfword and mixed accesses, shallow integer loops, register-only loops,
single-load updates and read-only pointer scans do not trigger the new rule.
Do not collect hints for ineligible bodies or allocator modes. Preserve #641
loop/call metadata independently. This is a static opportunity/cost heuristic,
not a proof of runtime trip counts or universal profitability.

## Rejected first prototype

An any-word-access depth>=3 prototype accelerated the integer targets but
independently regressed base64cli about 13%, qr2text about 6% and suggest about
8% in paired 21-round checks. Diagnostics identified read-only pointer scans,
Clap traversals and mixed byte/word HashBrown rehash loops. The refined rule
uses multi-input word updates and rejects mixed/callful third-level regions;
it has no benchmark-specific exclusions. Workload screens informed refinement;
new process runs are independent confirmation, not blind workload holdouts.
The original 2mm +23% three-round negative did not repeat in nine new rounds
(paired ratio 1.004, interval [0.964, 1.037]). All prototype data are retained.

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
