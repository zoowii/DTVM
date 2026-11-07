# Change: Reuse single-mapping reservations during Wasm memory growth

- **Status**: Implemented
- **Date**: 2026-11-07
- **Tier**: Light

## Problem and plan

After a bucket item crosses 32 MiB it becomes SINGLE_MMAP. Its allocation reserves
8 GiB, but enlargeWasmMemory still checks the allocator's 32 MiB bucket limit.
Every subsequent growth therefore reallocates and copies the entire old memory.
Select the growth capacity from the actual backing type instead. Keep the first
bucket-to-single transition, zero initialization, guard protections and bounds.
Consult [runtime contracts](../../modules/runtime/spec.md).

Validation: randomized fresh-process main/PR644/candidate/Wasmtime45 controls
around the 512-page boundary, varying growth counts, with/without old-page writes;
internal growth and full-process times separately. Confirm mapping/copy behavior
with strace separately. Check stable SINGLE base, existing bytes, new zero bytes,
failed/zero growth and OOB with runtime tests. Repeat real WAPM/PolyBench controls
before making workload claims. No profiling/building during formal timings.

## Completed validation

- [x] Backing-type capacity selection and independent code review
- [x] Repeated SINGLE growth/prefix/zero/failure/OOB regression
- [x] 24 Release and24 ASan tests,97 WAST cases in each of four modes
- [x] Boundary/growth-count screen plus independent31-round controls
- [x] WAPM20-case screen and independent15-round irb repeat
- [x] Five WAPM31-round follow-ups and six selected PolyBench controls
- [x] Wasmtime45 source/native-runtime and syscall comparison

[Full report, limitations, statistics and raw evidence](REPORT.md).
The constant-remainder prototype is archived unapplied, not included in runtime.
This branch depends on PR644; review its incremental change against3c9780d.
