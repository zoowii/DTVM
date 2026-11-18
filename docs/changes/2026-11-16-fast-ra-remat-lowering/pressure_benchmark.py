#!/usr/bin/env python3
"""Check and time constant-argument calls in randomized fresh processes."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import random
import resource
import statistics
import subprocess
import time

p = argparse.ArgumentParser()
p.add_argument('--candidate', required=True)
p.add_argument('--main', required=True)
p.add_argument('--wasmtime', required=True)
p.add_argument('--out', required=True)
p.add_argument('--inputs', type=Path, required=True)
p.add_argument('--defer', action='store_true')
p.add_argument('--seed', type=int, required=True)
p.add_argument('--rounds', type=int, default=31)
p.add_argument('--cases', default='large-8:1000000,large-24:1000000,large-48:1000000,large-48:0,small-32:1000000')
args = p.parse_args()
out = Path(args.out)
out.mkdir()
env = {k: v for k, v in os.environ.items() if not k.startswith('DTVM_RESEARCH_')}
env.update(LC_ALL='C')
rng = random.Random(args.seed)
mask64 = 2**64-1
rows = []
manifest = dict(seed=args.seed, rounds=args.rounds, cpu=0, warmups=2, cases={}, binaries={})
for b in (args.main, args.candidate, args.wasmtime):
    manifest['binaries'][b] = hashlib.sha256(Path(b).read_bytes()).hexdigest()
dmode = ['-m','multipass','--enable-multipass-lazy','--disable-multipass-greedyra','--disable-multipass-multithread']
summary = {}
for spec in args.cases.split(','):
    name, times = spec.split(':')
    size, width = name.split('-')
    width = int(width)
    times = int(times)
    wasm = args.inputs.resolve() / f'{name}.wasm'
    values = [123456789+i*83517 if size == 'small' else 0x123456789abcdef+i*329583729514129817 for i in range(width)]
    expected = 123
    for _ in range(times):
        for value in values:
            expected = ((expected * 16777619) & mask64) ^ value
    kernelargs = [str(times),'123']
    cmds = {'main': [args.main,*dmode,'-f','run',str(wasm),'--args',*kernelargs],
            'singlepass': [args.main,'-m','singlepass','-f','run',str(wasm),'--args',*kernelargs],
            'WT45': [args.wasmtime,'run','-C','cache=n','--invoke','run',str(wasm),*kernelargs]}
    variants = {'off':'0','aa':'0','remat':'1','cache':'2','both':'3'}
    if args.defer:
        variants.update(defer='4', remat_defer='5')
    for v in variants:
        cmds[v] = [args.candidate,*dmode,'-f','run',str(wasm),'--args',*kernelargs]
    flags = variants
    manifest['cases'][spec] = dict(expected=expected, input_sha256=hashlib.sha256(wasm.read_bytes()).hexdigest(), commands=cmds, masks={v:flags.get(v,'0') for v in cmds})
    (out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    for rnd in range(-2,args.rounds):
        order = list(cmds)
        rng.shuffle(order)
        for label in order:
            before = resource.getrusage(resource.RUSAGE_CHILDREN)
            t0 = time.perf_counter_ns()
            r = subprocess.run(['taskset','-c','0',*cmds[label]],env={**env,'DTVM_RESEARCH_COMPILER_MASK':flags.get(label,'0')},capture_output=True,text=True,timeout=60)
            elapsed = (time.perf_counter_ns()-t0)/1e6
            after = resource.getrusage(resource.RUSAGE_CHILDREN)
            assert r.returncode == 0, (spec,label,r.stderr)
            actual = int(r.stdout.strip().split(':')[0],0)&mask64
            assert actual == expected, (spec,label,actual,expected)
            row = dict(case=spec, variant=label, round=rnd, wall_ms=elapsed,cpu_ms=1000*(after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime),result=actual)
            rows.append(row)
            with (out/'samples.jsonl').open('a') as stream:
                stream.write(json.dumps(row)+'\n')
    vals = lambda label: [r['wall_ms'] for r in rows if r['case']==spec and r['variant']==label and r['round']>=0]
    pairs = {}
    for label in variants:
        if label == 'off':
            continue
        ratios = [x/y for x,y in zip(vals(label),vals('off'))]
        boots = sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000))
        pairs[label] = dict(ratio=statistics.median(ratios),ci95=[boots[250],boots[9750]])
    summary[spec] = dict(medians_ms={v:statistics.median(vals(v)) for v in cmds}, vs_off=pairs)
    (out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(spec,json.dumps(summary[spec]),flush=True)
