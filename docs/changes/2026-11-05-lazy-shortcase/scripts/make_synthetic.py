# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
"""Generate the measured checksum-guarded synthetic modules; run from repo root."""
import json
from pathlib import Path
import subprocess

root = Path('work/shortcase')
root.mkdir(parents=True, exist_ok=True)
cases = []
for n, hot in [(1, True), (100, False), (100, True), (1000, True)]:
    name = ('hot' if hot else 'cold') + str(n)
    funcs = '\n'.join(f'(func $f{i} (result i32) (i32.const 1))' for i in range(n))
    calls = '\n'.join(f'(local.set $s (i32.add (local.get $s) (call $f{i})))'
                      for i in range(n)) if hot else ''
    expect = n if hot else 0
    text = f'''(module (memory 1) {funcs}
 (func (export "_start") (local $s i32)
 {calls}
 (i32.store (i32.const 0) (local.get $s))
 (if (i32.ne (i32.load (i32.const 0)) (i32.const {expect})) (then (unreachable)))))'''
    wat = root / (name + '.wat')
    wat.write_text(text)
    subprocess.run(['wasm-as', str(wat), '-o', str(wat.with_suffix('.wasm'))], check=True)
    cases.append({'id': name, 'wasm': str(wat.with_suffix('.wasm').resolve()),
                  'kind': 'wasi-main', 'fairness': 'same-wasm', 'suite': 'synthetic'})
(root / 'synthetic-catalog.json').write_text(json.dumps(cases, indent=2))
