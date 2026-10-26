# DTVM Agent Guide

Instructions for AI assistants working in this repo.

## Project Snapshot

- DTVM is a deterministic VM with EVM ABI compatibility; most core code is C/C++ in `src/`.
- Preserve determinism and avoid host-specific, non-deterministic behavior.
- Prefer touching `third_party/` only when explicitly required.

## Repository Map

- `src/`: core runtime, compiler, execution engines
- `tests/`: WAST spec tests (`tests/wast`), EVM spec tests (`tests/evm_spec_test`), dMIR tests (`tests/mir`)
- `docs/`: build and usage guides (`docs/start.md`, `docs/user-guide.md`)
- `evmc/`: EVM compatibility components
- `rust_crate/`: Rust bindings
- `tools/`: helper scripts and utilities
- `docs/`: documentation, module specifications, change proposals, and feature specs

## Build (CMake)

- Default interpreter build:
  - `cmake -B build -DCMAKE_BUILD_TYPE=Debug`
  - `cmake --build build`
- Singlepass JIT:
  - `cmake -B build -DCMAKE_BUILD_TYPE=Debug -DZEN_ENABLE_SINGLEPASS_JIT=ON`
- Multipass JIT (LLVM 15 required; x86-64 only):
  - `cmake -B build -DCMAKE_BUILD_TYPE=Debug -DZEN_ENABLE_MULTIPASS_JIT=ON -DLLVM_DIR=<llvm>/lib/cmake/llvm`
- Common flags: `ZEN_ENABLE_SPEC_TEST`, `ZEN_ENABLE_ASAN`, `ZEN_ENABLE_JIT_LOGGING`, `ZEN_ENABLE_JIT_BOUND_CHECK`

## Tests

- Spec tests require `ZEN_ENABLE_SPEC_TEST` at build time.
- Run from build output:
  - `ctest --verbose`
  - `./build/specUnitTests -m <mode>` where mode is `interpreter` (or `0`), `singlepass` (or `1`), or `multipass` (or `2`)
  - `./build/specUnitTests <case> -m <mode>` for a single `.wast` case (omit suffix; default category is `core`)
- WAST test sources live under `tests/wast` (see `src/tests/CMakeLists.txt` for categories). `wast2json` runs at build time, so `wabt` must be installed and `tests/wast/spec` must be checked out with `tests/wast/spec.patch` applied.
- MIR tests live in `tests/mir` and need LLVM's `lit` (the `lit.llvm` module and `--no-indirectly-run-check`). Put `ircompiler` and `FileCheck` on `PATH`, then `cd tests/mir && lit add.ir --no-indirectly-run-check`. Debug builds print compiler logs on stdout, which makes `peep-algebra.ir` fail FileCheck.

## Change Discipline

- Keep edits minimal and localized; follow existing patterns.
- Update or add tests when behavior changes; call out if tests were not run.
- When asked to commit, follow `docs/COMMIT_CONVENTION.md`.

## Workflow

Use the `dev-workflow` skill for feature development. It covers the full cycle: propose, plan, implement, verify, and archive.

For archiving completed features, use the standalone `archive` skill.

## Change Decision Tree

```
New requirement?
├─ Bug fix (restore intended behavior)? -> Fix directly
├─ Formatting/comments/typos?           -> Fix directly
├─ New feature/capability?              -> Create change proposal in docs/changes/
├─ Breaking change?                     -> Create change proposal in docs/changes/
├─ Architecture change?                 -> Create change proposal in docs/changes/
└─ Uncertain?                           -> Create change proposal (safer)
```

## Change Proposals

New changes go in `docs/changes/YYYY-MM-DD-<slug>/README.md`.

Choose a tier:
- **Full**: architecture changes, cross-module impact, new capabilities
- **Light**: single-module improvements, well-scoped enhancements

See `docs/changes/README.md` for naming conventions and status definitions.

## Module Consultation

Before modifying code in a module, consult `docs/modules/<module>/spec.md` for boundaries, API contracts, and invariants.

## General Guidelines

- Do not duplicate module SSOT content in change proposals; use references
- When code conflicts with specifications, code takes precedence, but update specs to stay in sync
- Follow `docs/COMMIT_CONVENTION.md` for commit conventions
- Maintain determinism: avoid introducing host-specific non-deterministic behavior
- Prefer modifying code within `src/`; only modify `third_party/` when explicitly required

## Agent Skills

Skills are defined in `.agents/skills/` (single source of truth). `.claude/skills/` contains auto-generated mirrors for Claude Code; do not edit mirrors directly. After modifying any skill, regenerate mirrors:

```bash
python3 .agents/tooling/generate_skill_mirrors.py
```

## Documentation Pointers

- Overview: `README.md`
- Build/testing: `docs/start.md`
- Usage details: `docs/user-guide.md`

## Cursor Cloud specific instructions

`/etc/profile.d/dtvm-dev.sh` is installed for login shells. Non-login shells should export the same variables before configure:

```sh
export CC=gcc
export CXX=g++
export LLVM_SYS_150_PREFIX=/usr/lib/llvm-15
export LLVM_DIR=/usr/lib/llvm-15/lib/cmake/llvm
export PATH="/usr/lib/llvm-15/bin:${PATH}"
export FETCHCONTENT_BASE_DIR="${HOME}/.cache/cmake-fetchcontent"
```

The base image points `cc`/`c++` at Clang. That Clang selects the GCC 14 library directory, which has no `libstdc++.so`. The install script switches the alternatives to GCC 13. Keep `CC`/`CXX` set to `gcc`/`g++`.

LLVM 15 comes from Ubuntu (`llvm-15-dev`). `FETCHCONTENT_BASE_DIR` is prefetched for the default Debug configure (`ZEN_ENABLE_SINGLEPASS_JIT=ON`, `ZEN_ENABLE_SPEC_TEST=ON`). CMake's singlepass option defaults to ON, so a configure with no JIT flags still builds singlepass. Multipass needs `-DZEN_ENABLE_MULTIPASS_JIT=ON` and `LLVM_DIR`.

`/usr/local/bin/lit` runs LLVM 15's `lit.py`. Do not `pip install lit`; the PyPI package has no `lit.llvm` and rejects `--no-indirectly-run-check`.

There is no dev server. Initialize submodules before a spec-test or EVM build (`evmc` is required only when `ZEN_ENABLE_EVM=ON`):

```sh
git submodule update --init
git -C tests/wast/spec apply --check ../spec.patch && git -C tests/wast/spec apply ../spec.patch || true
```

A verified build and hello-world:

```sh
cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Debug \
  -DZEN_ENABLE_SINGLEPASS_JIT=ON -DZEN_ENABLE_MULTIPASS_JIT=ON \
  -DZEN_ENABLE_SPEC_TEST=ON -DLLVM_DIR="${LLVM_DIR}"
cmake --build build
wat2wasm add.wat -o /tmp/add.wasm
./build/dtvm -m interpreter -f add /tmp/add.wasm --args 2 3
./build/specUnitTests i32 -m interpreter
```

`dtvm -m interpreter`, `-m singlepass`, and `-m multipass` on an exported `add(i32,i32)->i32` with args `2 3` each print `0x5:i32`. `specUnitTests i32` passes in all three modes. Limit `cmake --build` parallelism on smaller VMs (`-j 2`).
