#!/usr/bin/env python3
"""Generate Wasm callers that span the FastRA register-pressure threshold."""
import subprocess
import argparse
from pathlib import Path

parser = argparse.ArgumentParser(description='Build the constant-argument pressure fixtures')
parser.add_argument('out', type=Path)
out = parser.parse_args().out
out.mkdir(parents=True, exist_ok=True)
for width in [8, 12, 16, 24, 32, 48]:
    for size in ['small', 'large']:
        values = [
            123_456_789 + i * 83_517
            if size == "small"
            else 0x123456789ABCDEF + i * 329_583_729_514_129_817
            for i in range(width)
        ]
        p = out / f'{size}-{width}'
        inputs = ' '.join(f'(i64.const {v})' for v in values)
        expr = '(local.get 0)'
        for i in range(1, width+1):
            expr = f'(i64.xor (i64.mul {expr} (i64.const 16777619)) (local.get {i}))'
        wat = f"""(module
  (func $step (param {'i64 ' * (width+1)}) (result i64)
    {expr})
  (func (export "run") (param $n i32) (param $seed i64) (result i64)
    (block $done
      (loop $loop
        (br_if $done (i32.eqz (local.get $n)))
        (local.set $seed (call $step (local.get $seed) {inputs}))
        (local.set $n (i32.sub (local.get $n) (i32.const 1)))
        (br $loop)))
    (local.get $seed)))
"""
        p.with_suffix('.wat').write_text(wat)
        subprocess.run(
            ['wat2wasm', str(p.with_suffix('.wat')), '-o', str(p.with_suffix('.wasm'))],
            check=True,
        )
