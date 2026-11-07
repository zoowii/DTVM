#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Static candidate inventory, not a dynamic frequency or speed estimate."""
import argparse, collections, hashlib, importlib.util, json, re, subprocess
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument("--out", required=True)
a = p.parse_args()
s = importlib.util.spec_from_file_location("h", "benchmarks/paper/harness/run.py")
h = importlib.util.module_from_spec(s)
s.loader.exec_module(h)
rows = []
for c in h.load_cases(h.read_json(h.CATALOG_PATH)):
    if c["suite"] not in ("wapm", "polybench"):
        continue
    path = h.paper_join(c["wasm"])
    result = subprocess.run(
        ["wasm2wat", str(path)], capture_output=True, text=True, check=True, timeout=30
    )
    lines = result.stdout.splitlines()
    stack = []
    function = None
    sites = []
    for i, line in enumerate(lines):
        m = re.match(r"\s*\(func\s+(\$[^\s()]+|\(;(\d+);\))", line)
        if m:
            function = int(m.group(2)) if m.group(2) else m.group(1)
            stack = []
        fields = line.strip().split()
        if not fields:
            continue
        opcode = fields[0]
        if opcode in ("block", "loop", "if"):
            stack.append(opcode)
        elif opcode == "end" and stack:
            stack.pop()
        if opcode != "i32.rem_u":
            continue
        prev = lines[i - 1].strip().split()
        if len(prev) != 2 or prev[0] != "i32.const":
            continue
        divisor = int(prev[1]) & 0xFFFFFFFF
        if divisor == 0 or (divisor & (divisor - 1)) == 0:
            continue
        sites.append(
            {
                "function": function,
                "wat_line": i + 1,
                "divisor": divisor,
                "lexical_loop_depth": stack.count("loop"),
            }
        )
    rows.append(
        {
            "suite": c["suite"],
            "case": c["id"],
            "wasm": str(path),
            "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "sites": sites,
        }
    )
out = Path(a.out)
out.write_text(
    json.dumps(
        {
            "method": "WABT wasm2wat stack syntax; immediately preceding i32.const only. This is a lower-bound syntactic site inventory, not function coverage, dynamic frequency, or independent statistical observations. Loop depth is lexical only; duplicated libc sites across modules are not independent evidence.",
            "cases": rows,
        },
        indent=2,
    )
    + "\n"
)
for suite in ("polybench", "wapm"):
    rr = [r for r in rows if r["suite"] == suite]
    print(
        suite,
        "cases",
        len(rr),
        "with_sites",
        sum(bool(r["sites"]) for r in rr),
        "sites",
        sum(len(r["sites"]) for r in rr),
    )
print("deeper urem sites:")
for r in rows:
    deep = [s for s in r["sites"] if s["lexical_loop_depth"] >= 2]
    if deep:
        print(r["suite"], r["case"], deep[:15])
