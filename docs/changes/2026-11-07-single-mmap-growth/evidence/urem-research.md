# Read-only follow-up: unsigned constant remainder

No production code changed, no benchmark or build was run for this candidate.

## Evidence and mechanism

DTVM f57fa7e still only strength-reduces non-power-of-two unsigned i32 division:
`src/compiler/mir/pass/peephole.cpp:661` (`foldU32MagicUDiv`). Non-pow2 `OP_urem`
reaches `src/compiler/target/x86/x86lowering.cpp:202` and hardware DIV.
Previous bicg native evidence includes `%1900` at 0x11f, `%2100` at0x160,
and `%20` at0x317/0x3d2. WT45 has magic MULX/SHR/IMUL/SUB instead.
Matrix initialization's existing `udiv2100` is ALREADY strength-reduced in DTVM;
do not claim the matrix loop still uses hardware DIV. Its native IMUL constant
is materialized inside the loop, and changing that needs a separate experiment.

Wasmtime v45.0.0 source snapshots and URLs/hashes are in
`wasmtime45-source/manifest.json`:
- `opts/arithmetic.isle:156-162` recognizes constant nonzero/nonpow2 Urem.
- `prelude_opt.isle:273-347` computes a magic quotient and finishes Urem as
  `numerator - quotient * divisor` (specifically343-347).
- `opts/div_const.rs` computes the signed/unsigned32/64 magic parameters.
- `isa/x64/lower.isle:2698-2707,2731-2740` separately shows sinkable floating
  load folding. DTVM uses separate loads; this is a different possible feature.

## Smallest conservative implementation

Add `foldU32MagicURem`, called after existing algebra folding. Match i32,
constant RHS through current-block constant lookup, nonzero/nonpow2 divisor.
Require `isNontrappingPureExpr(LHS)` to avoid duplicating an arbitrary direct
MIR tree. Reuse the existing magic quotient builder, then construct
`sub(LHS, mul(quotient, const.i32 divisor))`. Refactor a shared quotient helper
if needed, without adding feature flags, host-dependent semantics or a new
heuristic. Existing pow2/one/zero rules remain the authority.

Wasm frontend `handleIDiv` already materializes the dividend with
`makeReusableValue` (`wasm_mir_compiler.h:401,810`): a dassign followed by dread.
Therefore even an effectful source-level dividend becomes safe to reference
multiple times after its single evaluation. Direct raw-MIR call/load/trapping
expression trees can remain unoptimized. There is no need to insert a new
statement from this local peephole. Dread lowering reuses the assigned register
(`cgir/lowering.h:286`). Existing magic division handles both IsAdd and !IsAdd.

## Static candidate inventory

`scan_const_urem.py` reproducibly scans the exact catalog50 Wasm files with
WABT stack-syntax output. `const-urem-static.json` has all input hashes,
function identities, literal divisors, line numbers and lexical loop depth.
The scan matches only an immediately preceding `i32.const`, so this is a
syntactic lower-bound inventory, not complete constant propagation.

- PolyBench:30/30 modules,48 syntactic nonpow2 constant-i32-rem sites.
- WAPM:15/20 modules,244 sites.
- base64cli26, suggest26, uuid24, viu31, irb125, qr2text1.
- Most repeated %10 sites are shared formatting/runtime code; do not count
  repeated libc across modules as independent evidence or assume they execute.
- qr2text's `%255` is inside `qrcode::QrCode::new` at lexical loop depth3.
- suggest's `%24` and `%20` are in `alloc::slice::merge_sort` at depth2.
- viu's `%12` is in `alloc::slice::merge_sort` at depth2.
- irb has27 `%7`,13 `%10`,40 `%20`, etc.; static counts alone do not show hotness.

## Tests and falsifiable experiments

Test IsAdd=true (7) and false (3,10,20,1900,2100,65521,UINT32_MAX),
UINT_MAX,0,divisor-1/divisor/divisor+1, quotient boundaries k*d+-1,
deterministic randomized inputs. Preserve /0 trap, old pow2/one folding,
raw call/load/trapping-MIR rejection, source-level side-effect count1,
nested div0/OOB/NaN-conversion traps. Exercise Fast/Greedy/lazy/eager.

First obtain function-level hot evidence for qr2text, suggest, viu and irb,
then compare identical-Wasm microbenches and real-case process totals against
main, PR644, candidate and WT45 in randomized fresh-process paired rounds.
Separate compilation, first result, warm compute and output; count8 warm
calls should produce one per-process statistic. A long no-I/O microbench may
verify the transform but cannot establish realistic gains. Reject if real
cases do not reproduce benefits or compile/code-size overhead offsets them.
Use held-out repeat cohorts for screen-selected cases and retain negatives.

## Other candidate ordering

Highest certainty runtime candidate is backing-type-aware single-mmap growth:
`memory.cpp:537-538` uses allocator-wide32MiB bucket limit after fallback to
SINGLE_MMAP (which actually reserves8GiB). Repeated >32MiB growth then copies
the entire old memory into a fresh mapping. WT45 `memory/mmap.rs:156-214`
compares new accessible size to actual current capacity; within capacity it
only makes the newly exposed difference accessible. This is a directly
identifiable source-path problem; real benefit still needs controlled tests.

Warm bicg's remaining ~5% kernel gap should not be attributed just to static
instruction counts. WT45 folds two mul inputs into memory operands and uses
AVX scalar operations. DTVM's compiler/context.cpp excludes AVX deliberately;
turning it on globally risks preserve-all FXSAVE assumptions and is a larger
change. First isolate memory-folding vs encoding vs address arithmetic; the
previous LEA experiment already removed3 static instructions without reliable
performance benefit. Do not repackage that rejected experiment as a result.

## Reviewable, unapplied prototype

`urem-prototype.patch` contains the32-line runtime-neutral peephole addition,
5 unit litmus tests,237-line WAST boundary/effect/trap suite and Proposed light
change document. `git apply --check` passed against the shared checkout at
creation. This checks patch applicability only, not compilation or correctness.
No source files were edited, no build/benchmark run. `make_urem_prototype.py`
regenerates the patch from the currently checked-out source; inspect before use.

Existing native-code study helpers (local paths, diagnostic only):
- `work/pr643-research/capture_diagnostic.py`: DTVM diagnostic native function
  byte dumps and objdump; currently hardcodes atax/bicg/off/on and a diagnostic
  executable. Adapt paths/function selection rather than running blindly.
- `work/pr643-research/capture_wt.py`: WT45 live perfmap function extraction
  from our own child `/proc/PID/mem`, matching canonical stderr; hardcodes cases.
- `work/pr643-research/count_fresh_native.py`: counts named native loop regions
  against explicit byte offsets; offsets must be rediscovered after changes.
- `docs/changes/2026-11-07-anonymous-grown-pages/evidence/diagnostic.patch`:
  existing native dump instrumentation, not part of production baseline.

Prefer isolated untimed diagnostic artifacts; never time instrumentation or mix
these profiles with formal fresh-process measurements. For urem, target the
static-inventory function containing the operator; entry `main` alone misses
formatter, qrcode and merge_sort helpers. Confirm exact bytecode function map,
allocator tier and identical output first. Counts are static, not retired ops.
