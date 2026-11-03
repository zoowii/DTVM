#!/usr/bin/env python3
# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
"""Paired cold-process / same-instance private-promotion experiment.

Requires Binaryen wasm-dis/wasm-as and hydrated archived PolyBench inputs.
The guest repeats its original _start in ONE instance. It does not use the
CLI's --num-extra-executions (which creates new instances).
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import random
import re
import shutil
import statistics
import subprocess

import run as harness


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def wrap_start(source: Path, dest: Path, counts: list[int]) -> None:
    """Add repeat exports without optimizing the original workload."""
    wat = dest.with_suffix('.wat')
    subprocess.run(['wasm-dis', str(source), '-o', str(wat)], check=True)
    text = wat.read_text()
    start = re.search(r'\(export "_start" \(func ([^\s)]+)\)\)', text)
    if not start or re.search(r'^\s*\(start\s', text, re.MULTILINE):
        raise ValueError('requires a WASI _start export and no Wasm start section')
    if '"repeat_' in text:
        raise ValueError('input already contains benchmark repeat exports')
    # Keep the standard exports even for a subset run, so 1/5/30-call samples
    # use exactly the same module and background export-seeding workload.
    extra = ''
    for count in sorted(set([1, 5, 30] + counts)):
        extra += f'''
 (func (export "repeat_{count}") (local $remaining i32)
  (local.set $remaining (i32.const {count}))
  (loop $repeat
   (call {start.group(1)})
   (local.set $remaining (i32.sub (local.get $remaining) (i32.const 1)))
   (br_if $repeat (local.get $remaining))
  )
 )
'''
    end = text.rfind(')')
    wat.write_text(text[:end] + extra + text[end:])
    subprocess.run(['wasm-as', str(wat), '-o', str(dest)], check=True)


def main() -> int:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--dtvm', required=True)
    p.add_argument('--wasmtime', help='optional explicit Wasmtime comparison')
    p.add_argument('--cases', nargs='+', choices=['atax', 'bicg'],
                   default=['atax', 'bicg'])
    p.add_argument('--counts', nargs='+', type=int, default=[1, 5, 30])
    p.add_argument('--controls', nargs='*', choices=['echo', 'md5', 'pi'],
                   default=['echo', 'md5', 'pi'])
    p.add_argument('--threshold', type=int, default=8)
    p.add_argument('--max-functions', type=int, default=32)
    p.add_argument('--max-bytes', type=int, default=65536)
    p.add_argument('--max-function-bytes', type=int, default=1024)
    p.add_argument('--budget-ms', type=int, default=100)
    p.add_argument('--repeats', type=int, default=15)
    p.add_argument('--warmup', type=int, default=1)
    p.add_argument('--cpu', type=int, default=0)
    p.add_argument('--timeout', type=float, default=120)
    p.add_argument('--seed', type=int, default=20261104)
    p.add_argument('--out', required=True)
    a = p.parse_args()
    if (min(a.counts) < 1 or a.threshold < 1 or a.repeats < 1 or a.warmup < 0
            or a.timeout <= 0 or min(a.max_functions, a.max_bytes,
                                    a.max_function_bytes, a.budget_ms) < 0):
        p.error('counts/threshold/repeats/timeout must be positive; budgets nonnegative')
    a.counts = list(dict.fromkeys(a.counts))
    a.cases = list(dict.fromkeys(a.cases))
    a.controls = list(dict.fromkeys(a.controls))
    for tool in ['wasm-dis', 'wasm-as']:
        if not shutil.which(tool):
            p.error(f'{tool} is required (Binaryen)')
    dtvm = harness.resolve_dtvm(a.dtvm)
    wt = harness.find_wasmtime(a.wasmtime) if a.wasmtime else None
    if a.wasmtime and not wt:
        p.error('explicit Wasmtime executable is unavailable')
    out = Path(a.out).resolve()
    out.mkdir(parents=True, exist_ok=True)
    cases = []
    inputs = {}
    for name in a.cases:
        source = harness.paper_join(f'benchmarks/polybenchc/{name}.wasm')
        harness.require_wasm(source)
        dest = out / f'{name}-repeat.wasm'
        wrap_start(source, dest, a.counts)
        inputs[name] = {'original_sha256': digest(source),
                        'wrapped_sha256': digest(dest)}
        for count in a.counts:
            cases.append({'id': f'{name}_repeat_{count}', 'wasm': str(dest),
                          'kind': 'reactor', 'function': f'repeat_{count}'})
    catalog = harness.load_cases(harness.read_json(harness.CATALOG_PATH))
    cases.extend(c for c in catalog if c['id'] in a.controls)
    enabled = ['--enable-lazy-demand-promotion',
               '--lazy-promotion-call-threshold', str(a.threshold),
               '--lazy-promotion-max-functions', str(a.max_functions),
               '--lazy-promotion-max-bytes', str(a.max_bytes),
               '--lazy-promotion-max-function-bytes', str(a.max_function_bytes),
               '--lazy-promotion-budget-ms', str(a.budget_ms)]
    variants = {'off': [], 'budgeted': enabled}
    if wt:
        variants['wasmtime'] = []
    manifest = {'started_utc': datetime.now(timezone.utc).isoformat(),
                'boundary': 'pre-spawn through exit; repeat exports share one instance',
                'arguments': vars(a), 'dtvm_sha256': digest(dtvm),
                'wasmtime_sha256': digest(wt) if wt else None,
                'wasmtime_cache': 'disabled', 'inputs': inputs,
                'binaryen': subprocess.check_output(['wasm-as', '--version'], text=True).strip(),
                'commands': {}}
    for case in cases:
        commands = {}
        for variant in variants:
            if variant == 'wasmtime':
                cmd = harness.wasmtime_cmd(wt, case)
            else:
                cmd = harness.dtvm_cmd(dtvm, case, 'lazy-G-MT', False)
                cmd[1:1] = variants[variant]
            commands[variant] = harness.pin_prefix(a.cpu if a.cpu >= 0 else None) + cmd
        manifest['commands'][case['id']] = commands
    harness.write_json(out / 'manifest.json', manifest)
    rng = random.Random(a.seed)
    samples = []
    with (out / 'samples.jsonl').open('w', buffering=1) as stream:
        for case in cases:
            for rnd in range(-a.warmup, a.repeats):
                order = list(variants)
                rng.shuffle(order)
                for variant in order:
                    result = harness.time_once(manifest['commands'][case['id']][variant],
                                               harness.case_cwd(case), case.get('stdin'),
                                               a.timeout, {'WASMTIME_CACHE': '0', 'LC_ALL': 'C'})
                    row = {'case': case['id'], 'variant': variant, 'round': rnd,
                           'wall_ms': result['wall_s'] * 1000,
                           'exit': result['exit'], 'timeout': result['timeout'],
                           'ok': result['ok'],
                           'output_sha256': hashlib.sha256(result['output'].encode()).hexdigest()}
                    stream.write(json.dumps(row) + '\n')
                    samples.append(row)
                    (out / f"{case['id']}.{variant}.log").write_text(result['output'])
    failed = any(not r['ok'] for r in samples)
    for case in cases:
        rows = [r for r in samples if r['case'] == case['id'] and r['round'] >= 0]
        if any(not r['ok'] for r in rows):
            print('FAILED:', case['id'], [(r['variant'], r['exit']) for r in rows if not r['ok']])
            continue
        hashes = {r['output_sha256'] for r in rows if r['ok']}
        if len(hashes) != 1:
            print('OUTPUT MISMATCH:', case['id'])
            failed = True
        medians = {v: statistics.median(r['wall_ms'] for r in rows if r['variant'] == v)
                   for v in variants}
        print(case['id'], medians)
    harness.write_json(out / 'samples.json', samples)
    return 1 if failed else 0


if __name__ == '__main__':
    raise SystemExit(main())
