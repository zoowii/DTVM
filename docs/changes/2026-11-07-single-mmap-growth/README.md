# Change: Reuse single-mapping reservations during Wasm memory growth

- **Status**: Proposed
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
