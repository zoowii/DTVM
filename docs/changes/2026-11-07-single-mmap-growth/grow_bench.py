#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
import argparse, hashlib, json, os, random, resource, struct, subprocess, time
from pathlib import Path

p = argparse.ArgumentParser()
for k in ["main", "pr644", "candidate", "wasmtime", "out"]:
    p.add_argument("--" + k, required=True)
p.add_argument("--rounds", type=int, default=7)
p.add_argument(
    "--jobs",
    default="511:1:0,512:1:0,513:1:0,511:4:0,512:4:0,513:4:0,511:16:0,512:16:0,513:16:0,511:1:1,512:1:1,513:1:1,511:4:1,512:4:1,513:4:1,511:16:1,512:16:1,513:16:1,1:16:0,1:16:1,768:4:0,768:4:1",
)
a = p.parse_args()
out = Path(a.out)
out.mkdir(parents=True, exist_ok=False)
os.sched_setaffinity(0, {1})
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()
env = {
    k: v
    for k, v in os.environ.items()
    if not k.startswith(("DTVM_PR642_", "DTVM_RESEARCH_")) and k != "DTVM_TRACE_DIR"
}
env.update(LC_ALL="C", WASMTIME_CACHE="0")
bins = {
    k: Path(getattr(a, k)).resolve() for k in ["main", "pr644", "candidate", "wasmtime"]
}
cmds = {
    k: ["taskset", "-c", "0", str(v)]
    + (
        ["run", "-C", "cache=n"]
        if k == "wasmtime"
        else ["-m", "multipass", "--enable-multipass-lazy"]
    )
    for k, v in bins.items()
}
jobs = []
for spec in a.jobs.split(","):
    seed, n, touch = map(int, spec.split(":"))
    name = f"p{seed}-n{n}-t{touch}"
    wat = out / (name + ".wat")
    wasm = wat.with_suffix(".wasm")
    # All measured work is in _start: demand compilation precedes its first clock.
    # Initial transitions/writes and post-interval validation are outside internal stamps.
    fill = (
        f"""(local.set $i (i32.const 1)) (loop $fill
 (i32.store8 (i32.shl (local.get $i) (i32.const 16)) (i32.const 90))
 (local.set $i (i32.add (local.get $i) (i32.const 1)))
 (br_if $fill (i32.lt_u (local.get $i) (i32.const {seed}))))"""
        if touch and seed > 1
        else ""
    )
    check = (
        f"""(local.set $i (i32.const 1)) (loop $check
 (if (i32.ne (i32.load8_u (i32.shl (local.get $i) (i32.const 16))) (i32.const 90)) (then unreachable))
 (local.set $i (i32.add (local.get $i) (i32.const 1)))
 (br_if $check (i32.lt_u (local.get $i) (i32.const {seed}))))"""
        if touch and seed > 1
        else ""
    )
    wat.write_text(
        f"""(module
 (import "wasi_snapshot_preview1" "clock_time_get" (func $clock (param i32 i64 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $write (param i32 i32 i32 i32) (result i32)))
 (memory (export "memory") 1 2048) (data (i32.const 0) "\\2a")
 (func (export "_start") (local $i i32)
 (if (i32.ne (memory.grow (i32.const {seed-1})) (i32.const 1)) (then unreachable))
 {fill}
 (if (call $clock (i32.const 1) (i64.const 1) (i32.const 128)) (then unreachable))
 (local.set $i (i32.const 0))
 (loop $grow
 (if (i32.ne (memory.grow (i32.const 1)) (i32.add (i32.const {seed}) (local.get $i))) (then unreachable))
 (local.set $i (i32.add (local.get $i) (i32.const 1)))
 (br_if $grow (i32.lt_u (local.get $i) (i32.const {n}))))
 (if (call $clock (i32.const 1) (i64.const 1) (i32.const 136)) (then unreachable))
 (if (i32.ne (i32.load8_u (i32.const 0)) (i32.const 42)) (then unreachable))
 {check}
 (local.set $i (i32.const {seed*65536}))
 (loop $zero
 (if (i32.load (local.get $i)) (then unreachable))
 (local.set $i (i32.add (local.get $i) (i32.const 4)))
 (br_if $zero (i32.lt_u (local.get $i) (i32.const {(seed+n)*65536}))))
 (i32.store (i32.const 144) (memory.size))
 (i32.store (i32.const 160) (i32.const 128)) (i32.store (i32.const 164) (i32.const 20))
 (if (call $write (i32.const 1) (i32.const 160) (i32.const 1) (i32.const 176)) (then unreachable))))"""
    )
    subprocess.run(["wat2wasm", str(wat), "-o", str(wasm)], check=True)
    jobs.append(
        {
            "name": name,
            "seed_pages": seed,
            "grows": n,
            "touch": touch,
            "wasm": str(wasm.resolve()),
            "input_sha256": sha(wasm),
        }
    )
manifest = {
    "rounds": a.rounds,
    "seed": 2026110781,
    "excluded_warmup": -1,
    "binaries": {k: {"path": str(v), "sha256": sha(v)} for k, v in bins.items()},
    "commands": cmds,
    "jobs": jobs,
    "boundary": "Fresh processes CPU0 engines/workers, CPU1 collector. Internal WASI stamps surround n one-page grows only; setup and post-growth output checks outside. Initial _start compilation before first stamp; no private helper compile inside. touch=1 writes one old-page byte before stamps; new pages untouched until validated after stamps. Full process includes setup/verification/output/teardown.",
}
(out / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
rng = random.Random(2026110781)
with (out / "samples.jsonl").open("w") as f:
    for job in jobs:
        for rnd in range(-1, a.rounds):
            order = list(bins)
            rng.shuffle(order)
            for k in order:
                before = resource.getrusage(resource.RUSAGE_CHILDREN)
                t = time.perf_counter_ns()
                r = subprocess.run(
                    cmds[k] + [job["wasm"]], capture_output=True, env=env, timeout=120
                )
                end = time.perf_counter_ns()
                after = resource.getrusage(resource.RUSAGE_CHILDREN)
                assert r.returncode == 0 and not r.stderr, (
                    job,
                    k,
                    r.returncode,
                    r.stderr[-500:],
                )
                begin, finish, pages = struct.unpack("<QQI", r.stdout)
                assert finish >= begin and pages == job["seed_pages"] + job["grows"]
                f.write(
                    json.dumps(
                        {
                            "case": job["name"],
                            "engine": k,
                            "round": rnd,
                            "grow_ms": (finish - begin) / 1e6,
                            "wall_ms": (end - t) / 1e6,
                            "minor_faults": after.ru_minflt - before.ru_minflt,
                            "maxrss_kib": after.ru_maxrss,
                            "exit": r.returncode,
                            "pages": pages,
                        }
                    )
                    + "\n"
                )
                f.flush()
        print(job["name"], "complete", flush=True)
