#!/usr/bin/env python3
"""Check mixed ABI arguments, indirect calls and traps against the integer oracle."""
import argparse
import os
from pathlib import Path
import subprocess
import tempfile
import random

parser = argparse.ArgumentParser(description='Validate constant argument deferral at the ABI boundary')
parser.add_argument('dtvm')
parser.add_argument('wasmtime')
args = parser.parse_args()
mask = (1 << 64) - 1
rng = random.Random(6531904)
types = ['i32', 'i64', 'f64'] * 9
body = '(i64.const 0)'
call_args = []
for index, typ in enumerate(types):
    value = f'(local.get {index})'
    if typ == 'i32':
        value = f'(i64.extend_i32_u {value})'
    elif typ == 'f64':
        value = f'(i64.trunc_f64_u {value})'
    body = f'(i64.xor (i64.mul {body} (i64.const 16777619)) {value})'
    if index % 2 == 0:
        literal = [4294901760 + index, 0x123456789abcde + index, 100 + index][index % 3]
        call_args.append(f'({typ}.const {literal})')
    else:
        value = '(local.get $x)'
        if typ == 'i32':
            value = f'(i32.wrap_i64 {value})'
        elif typ == 'f64':
            value = f'(f64.convert_i64_u {value})'
        call_args.append(value)
params = ' '.join(types)
values = '\n      '.join(call_args)
trap_values = list(call_args)
trap_values[0] = '(i32.load (i32.const 65536))'
trap_values = '\n      '.join(trap_values)
wat = f"""(module
  (type $sig (func (param {params}) (result i64)))
  (table 1 funcref)
  (elem (i32.const 0) $mix)
  (memory 1)
  (func $mix (type $sig) {body})
  (func (export "direct") (param $x i64) (result i64)
    (call $mix {values}))
  (func (export "indirect") (param $x i64) (result i64)
    (call_indirect (type $sig) {values} (i32.const 0)))
  (func (export "trap_arg") (param $x i64) (result i64)
    (call $mix {trap_values}))
)
"""
def expected(x):
    result = 0
    for i, typ in enumerate(types):
        literal = [4294901760 + i, 0x123456789abcde + i, 100 + i][i % 3]
        v = literal if i % 2 == 0 else x
        if typ == 'i32':
            v &= 0xffffffff
        result = ((result * 16777619) & mask) ^ v
    return result

def get_result(command, env, want):
    result = subprocess.run(['taskset','-c','0',*command], env=env, capture_output=True, text=True, timeout=30)
    if want is None:
        assert result.returncode and 'out of bounds' in (result.stdout + result.stderr).lower(), (command,result)
    else:
        assert result.returncode == 0, (command,result)
        assert int(result.stdout.strip().split(':')[0],0)&mask == want, (command,result,want)

with tempfile.TemporaryDirectory() as directory:
    wasm = Path(directory)/'mixed.wasm'
    subprocess.run(['wat2wasm','-','-o',str(wasm)],input=wat,text=True,check=True)
    base = {k:v for k,v in os.environ.items() if not k.startswith('DTVM_RESEARCH_')}
    modes = [
        ['-m','multipass','--disable-multipass-multithread'],
        ['-m','multipass','--enable-multipass-lazy','--disable-multipass-greedyra','--disable-multipass-multithread'],
    ]
    count=0
    for name in ['direct','indirect','trap_arg']:
        xs = [0,1,4294967295,4294967296,*[rng.randrange(1<<42) for _ in range(10)]] if name!='trap_arg' else [1]
        for x in xs:
            want = None if name=='trap_arg' else expected(x)
            get_result([args.wasmtime,'run','-C','cache=n','--invoke',name,str(wasm),str(x)],base,want)
            count+=1
            for mode in modes:
                for policy in ['0','4','5','7']:
                    env = {**base,'DTVM_RESEARCH_COMPILER_MASK':policy}
                    get_result([args.dtvm,*mode,'-f',name,str(wasm),'--args',str(x)],env,want)
                    count+=1
    print(count,'mixed ABI/direct/indirect and trap executions passed')
