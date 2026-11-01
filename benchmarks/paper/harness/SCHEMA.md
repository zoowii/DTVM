# Paper-bench JSON schema (`paper-bench-v1`)

One schema for **wall** and **TTFI**. Mode names are the Phase 1.5 set;
older TTFI/xlsx profile strings are aliases. Wasmtime/Wasmer columns are
omitted or marked `skipped` when the binary is missing — **never filled
with invented numbers**.

`phase15-v1` (wall-only) is superseded by this document. Existing wall
fields (`samples_s`, `median_s`, …) are unchanged.

## Top-level

| Field | Meaning |
|-------|---------|
| `schema_version` | `paper-bench-v1` |
| `generated_utc` | UTC stamp `YYYYMMDDTHHMMSSZ` |
| `host` | `uname`, `cpu_model`, `cpu_mhz`, `governor`, `no_turbo` |
| `config` | preset, scale, **metric**, CPU pin, binaries, `skipped_runtimes`, `mode_aliases` |
| `fairness_notes` | copied from `catalog.json` |
| `runs` | one object per (bench, runtime, mode) cell |

## `config.metric`

| Value | What is primary | DTVM `--enable-statistics` |
|-------|-----------------|----------------------------|
| `wall` (default) | process wall seconds | only if `--stats` |
| `ttfi` | compile-to-first-invoke ms | **on** (needed for the stats estimate) |
| `both` | both fields populated | on |

Wall **must not** be copied into `ttfi.ttfi_ms`. If the binary does not
print `Total compilation time` and DTVM stats cannot form the lazy
estimate, `ttfi_ms` is `null` and `ttfi_unavailable` explains why
(`not-instrumented`, `wasmtime-not-found`, …).

## Canonical modes

| Canonical | Runtime | CLI / meaning | Aliases (old scripts) |
|-----------|---------|---------------|------------------------|
| `interp` | DTVM | `-m interpreter` | `interpreter` |
| `singlepass` | DTVM | `-m singlepass` | `sp` |
| `multipass-G-ST` | DTVM | multipass GreedyRA, **serial** | `multipass-g-st` |
| `lazy-F-ST` | DTVM | lazy FastRA serial | `lazy`, `dtvm multipass + lazy` |
| `multipass-F-ST` | DTVM | paper xlsx "dtvm multipass" (FastRA serial eager) | `multipass` |
| `lazy-G-ST` | DTVM | lazy GreedyRA serial | |
| `multipass-G-MT` | DTVM | greedy + multithread **on** | `multipass_greedy_mt` |
| `lazy-G-MT` | DTVM | lazy + greedy + MT on | `lazy_greedy_mt` |
| `cranelift-nocache` | Wasmtime | `wasmtime run -C cache=n` + `WASMTIME_CACHE=0` | `default`, `wasmtime`, `cranelift`, `nocache` |

`--dtvm-modes lazy,multipass` is accepted and stored as `lazy-F-ST`,
`multipass-F-ST`.

## TTFI sources (no wall fallback)

| `ttfi_source` | How `ttfi_ms` is filled |
|---------------|-------------------------|
| `total-compilation-time` | `Total compilation time: N ms (X μs)` → `X/1000` (same as `avg_compile_time.py`) |
| `dtvm-stats-est` | `load + precompile + instantiation + (fg_total / fg_count)` |
| `null` | not available; do not invent |

Stock Wasmtime 45 **without** the paper `ttfi-report` patch has no compile
line: wall comparison is still valid; TTFI stays `null`.

## `runs[]` (wall fields plus)

| Field | Meaning |
|-------|---------|
| `skipped` | `true` if the cell was not run |
| `skip_reason` | e.g. `wasmtime-not-found` |
| `median_s` / `samples_s` | wall seconds; **`null` / `[]` when skipped** |
| `ttfi` | `{ttfi_ms, ttfi_source, compile_ms, execution_ms, ttfi_unavailable}` |
| `statistics` | DTVM stats medians in ms, or `null` |

Markdown tables print `skip` for skipped cells, `fail` for real failures,
never a placeholder millisecond.

## Fairness (unchanged)

| Label | Wasmtime? |
|-------|-----------|
| `same-wasm` | yes, if a Wasmtime binary exists |
| `dtvm-hostapi-only` | no |
| `different-wasm` | Wasmtime-only overflow modules (opcode `0xfc`) |

## Optional Wasmtime runner

`run.py` looks at `--wasmtime`, `$WASMTIME`, `PATH`, then
`runtimes/wasmtime-45.0.0/out/wasmtime`. If none is executable:

- default: skip Wasmtime cells, record `skipped_runtimes`, exit 0 if DTVM ran
- `--require-wasmtime`: exit 2

Wasmer is **not** timed by this harness. If `--runtimes wasmer` is passed
and the binary is missing, that is recorded as `wasmer-not-found` with no
numbers. If a Wasmer binary exists, the harness still does not emit Wasmer
ms (`wasmer-runner-not-in-this-harness`) rather than guessing.

## Example skipped Wasmtime cell

```json
{
  "bench": "atax",
  "runtime": "wasmtime",
  "mode": "cranelift-nocache",
  "fairness": "same-wasm",
  "skipped": true,
  "skip_reason": "wasmtime-not-found",
  "median_s": null,
  "samples_s": [],
  "ttfi": {
    "ttfi_ms": null,
    "ttfi_unavailable": "wasmtime-not-found"
  }
}
```
