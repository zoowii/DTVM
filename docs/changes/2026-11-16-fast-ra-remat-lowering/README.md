# FastRA immediate rematerialization and lowering cache experiment

- Status: Implemented
- Tier: Light
- Date: 2026-11-16

Baseline: 3d6c27b (merged #652). Follow the compiler module specification.

Implement two independently controlled research changes: rematerialize unique,
block-local integer MOV-immediate definitions (through up to four same-class
COPYs) in FastRA instead of spilling;
return DREAD variable registers without inserting redundant expression-cache
entries. MOV rematerialization must preserve flags, exclude memory/constant-pool
operands, multiple definitions and cross-block uses. No recursive call or ABI
changes. Research controls default off.

First compare combined/off with an A/A control, frozen main singlepass/lazy and
Wasmtime 45. Preserve exact outputs and randomized fresh-process samples. Use
TickMath/rpow and PolyBench/WAPM holdouts; record cold wall/CPU separately from
repeated execution diagnostics. Confirm a >=3% paired improvement with a 95%
bootstrap interval below 1 in an independent cohort before production promotion.
Treat >3% reproducible holdout/cold-start regressions as rejection signals.
Only after aggregate benefit, run each individual bit to attribute the effect.
Retain negative and failed experiments. No speedup claim from code size alone.

Implemented and evaluated twice. No replicated qualifying gain; keep disabled
and retain as experimental draft. See [REPORT.md](REPORT.md) and evidence.
