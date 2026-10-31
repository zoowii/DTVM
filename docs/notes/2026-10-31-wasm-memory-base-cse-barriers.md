# WASM linear-memory base: CSE / hoist across BBs (stop)

Follow-up from the jacobi E3 dump: multipass `main` / `function_2`
reloaded the instance field at MIR `offset = MemoryBaseOffset` (4536 in
that module layout) about 11 times in one function. Question: is a
small, alias-safe CSE or hoist of that load across basic blocks
landable?

**Verdict: stop.** Do not add a MIR GVN/CSE or CGIR hoist of this load.
The frontend already caches the pointer in a function-local variable.
The extra instance-field loads are the required post-call /
post-`memory.grow` barriers. Hoisting across those points is incorrect.
CSE inside a call-free region is a no-op for this field.

Skipped on purpose (already decided elsewhere):

- `add(dyn, imm)` → load/store displacement (rejected; wasm wrap32 EA)
- FP const hoist and cmp→jcc (landed in zoowii/DTVM#18)

No performance percentage is claimed.

## What offset 4536 is

It is **not** a wasm `memarg` displacement. It is the host pointer to
linear memory, loaded from the instance object:

```
MemoryBaseOffset = MemoryInstanceOffset + offsetof(MemoryInstance, MemBase)
```

See `Module::InstanceLayout::compute()` in `src/runtime/instance.cpp`.
The absolute number is module-dependent (function/global/table counts).
4536 is a plausible value for a jacobi binary with libc. MIR prints it
as `load (base = $0, offset = 4536)` because `MInstruction::print` emits
`offset = N` for a non-zero `LoadInstruction` displacement.

The same field is `ABI.getMemoryBaseReg()` (x86 R13 / a64 X26) in
singlepass.

## What the frontend already does

WASM multipass does **not** emit a fresh instance load at every
`i32.load` / `f64.store`. It caches the pointer once per function:

| Site | File | Behavior |
|------|------|----------|
| Function entry | `FunctionMirBuilder::loadWASMInstanceAttr` | If `CodeEntry::Stats & SF_memory`, `dassign $MemoryBaseIdx = load($0, MemoryBaseOffset)` |
| Every wasm load/store | `FunctionMirBuilder::getMemoryLocation` | `dread $MemoryBaseIdx` then `inttoptr` (not a new instance load) |
| After every call | `FunctionMirBuilder::handleCallBase` | `updateMemoryBaseAndSize()` |
| After `memory.grow` | `FunctionMirBuilder::handleMemoryGrow` | `updateMemoryBaseAndSize()` |

`updateMemoryBaseAndSize` (`src/compiler/wasm_frontend/wasm_mir_compiler.cpp`)
re-issues `getMemoryBase()` / `getMemorySize()` and dassigns the cached
variables. Direct internal calls, import `icall`, and indirect calls all
go through `handleCallBase`, so all of them reload.

So a function with memory access and **N calls** has **1 + N** MIR loads
of `MemoryBaseOffset` (plus one more per `memory.grow`). Nested-loop
stencils with **no calls** have a **single** instance load at entry;
later BBs only `dread` the variable. ~11 reloads in `main` / `function_2`
matches "about ten call sites", not "the inner stencil reloads the heap
base every block."

Lowering does not re-materialize the instance load either:

- `lowerDassignStmt` copies the load into the variable vreg.
- `lowerDreadExpr` reuses that vreg.
- Trivial remat (`LLVMWorkaround::isReallyTriviallyReMaterializableGeneric`)
  refuses the load because it uses a virtual (or later physical)
  instance-pointer register. FastRA `reloadAtBegin` reloads from a
  **stack slot**, not from `[instance+MemoryBaseOffset]`.

## Barriers (do not hoist across)

`MemBase` is written by `Instance::growLinearMemory`
(`src/runtime/instance.cpp`). JIT `memory.grow` is
`Instance::growInstanceMemoryOnJIT`. Host modules do not assign `MemBase`
today, but a host import can re-enter wasm that then grows.

A cached `MemoryBaseIdx` is therefore **invalid** after any of:

1. **`memory.grow` in this function** — `handleMemoryGrow` already
   reloads after the grow icall. The grow icall itself is also a call
   barrier.
2. **Any wasm `call` / `call_indirect` / import `icall`** — the callee
   (or a function it calls, or a host callback back into wasm) may grow
   memory. Multipass keeps the pointer in a **caller-local vreg**, which
   the callee cannot update. The caller must reload from the instance.
3. **A store to the instance field at `MemoryBaseOffset`** — only the
   runtime grow path writes it; treat any instance store as a
   conservative clobber.

`enlargeWasmMemory` (`src/runtime/memory.cpp`) may keep the same host
pointer when a mmap bucket still has room, or it may realloc. A stale
base is therefore a **use-after-realloc** when the allocator moves the
buffer, and a silent correctness bug that in-place mmap grow will not
catch. Execution tests that grow one page and store into the new page
can pass with a stale pointer on the mmap-bucket path. They are not a
proof that CSE across a call is safe.

### Why singlepass looks different

Singlepass pins the heap base in R13/X26 and updates that register
inside the grow sequence. Multipass has no pinned heap register: after a
call, the caller's `MemoryBaseIdx` vreg still holds the pre-call
pointer. Skipping `updateMemoryBaseAndSize` after internal calls would
need an ABI where the callee publishes the new base (singlepass-style
pin) or interprocedural "this callee cannot grow." Neither is a small
MIR peep.

Skipping the reload only when the module contains no `memory.grow`
opcode is still not high-confidence: host re-entry and future bulk-memory
ops are easy to miss, and the win is one mov per call site.

## Why a small CSE pass is not landable

A local CSE of `load($0, MemoryBaseOffset)` that stops at call / grow /
instance-store would be **correct** and also **useless** for this dump:

- Inside a call-free region the frontend already emits one load.
- Across a call the second load is the barrier and must stay.

A pass that CSEs those loads across BBs without a call-clobber check is
**incorrect**. A broad GVN of all instance-field loads (globals, gas,
exception word, table size, …) is out of scope and has different alias
rules (`global.set`, host calls, and linear-memory stores do not all
clobber the same offsets).

`MIRPeephole::isPureExpr` already refuses to discard loads. That is the
right default.

## If this is revisited

Only consider a change if a **MIR dump** of a call-free kernel shows more
than one `load (base = $0, offset = MemoryBaseOffset)` (a frontend bug),
or if someone is willing to pin a heap register like singlepass. A
counted `[instance+disp]` in **assembly** after FastRA may be a stack
reload of `MemoryBaseIdx`, which is an RA problem, not missing CSE of
the instance field.

File pointers:

- Cache + barrier: `src/compiler/wasm_frontend/wasm_mir_compiler.cpp`
  (`loadWASMInstanceAttr`, `getMemoryLocation`, `handleMemoryGrow`,
  `updateMemoryBaseAndSize`)
- Call barrier: `src/compiler/wasm_frontend/wasm_mir_compiler.h`
  (`handleCallBase`)
- Layout: `src/runtime/instance.cpp` (`InstanceLayout::compute`)
- Grow / realloc: `src/runtime/instance.cpp` (`growLinearMemory`),
  `src/runtime/memory.cpp` (`enlargeWasmMemory`)
- Remat / FastRA: `src/compiler/common/llvm_workaround.cpp`,
  `src/compiler/cgir/pass/fast_ra.cpp` (`reloadAtBegin`)
- Execution lock: `tests/wast/multipass/memory_base_barrier.wast`
- Contract: `docs/modules/compiler/spec.md` (WASM MemoryBase cache)
- This stop: `docs/changes/2026-10-31-wasm-memory-base-cse/README.md`
