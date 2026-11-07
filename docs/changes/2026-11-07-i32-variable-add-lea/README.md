# Change: Variable i32 addition with three-address LEA

- **Status**: Proposed
- **Date**: 2026-11-07
- **Tier**: Light

User-authorized parallel optimization study, isolated from PR643. Extend the
existing wrap-safe i32 immediate LEA lowering to variable+variable addition.
Hypothesis: remove two-address copies in bicg/atax address formation. Retain
32-bit wrap before separate Wasm memory offsets. Keep i64 ADD/ADC carry chains
and variable subtraction unchanged. Preserve left-to-right operand evaluation.

Consult [compiler contracts](../../modules/compiler/spec.md). Validate lowering,
aliases, overflow and load-offset traps before comparing main, frozen PR643,
prototype and Wasmtime45. Measure fresh-process startup and instrumented first
versus repeated execution separately with identical inputs per engine. Reject
if effects do not reproduce; static instruction counts alone are insufficient.

- [ ] Build and correctness tests
- [ ] Native-code inspection
- [ ] Paired process and phase measurements, including negative controls

No claimed performance benefit yet. This proposal is not part of PR643.
