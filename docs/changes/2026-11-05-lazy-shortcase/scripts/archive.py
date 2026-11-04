# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
import json,statistics,random,hashlib,re
root=Path('work/shortcase');out=Path('docs/changes/2026-11-05-lazy-shortcase');data={'base_commit':'d9dd7b5','machine':'AMD EPYC 9V74; 3 visible CPUs; cgroup CPU quota 2 cores; 8 GiB RAM','method':'Fresh process, CPU0 affinity inherited by threads, warm page cache, randomized interleaved rounds, pre-spawn through process exit including cleanup, Wasmtime module cache disabled. Independent process is the sampling unit.','phases':{},'diagnostics':json.loads((root/'diagnostics/samples.json').read_text()),'coverage':json.loads((root/'compile-coverage.json').read_text()),'causal_timing':json.loads((root/'causal-timing.json').read_text()),'native_equivalence':json.loads((root/'native-equivalence.json').read_text())};summary={}
for phase in ['matrix-r7','candidates-r7','thread-confirm-r15','synthetic-r15','candidate-confirm-r15','hybrid-confirm-r15']:
 rs=[json.loads(l) for l in (root/phase/'samples.jsonl').read_text().splitlines()];assert all(r['exit']==0 for r in rs);m=json.loads((root/phase/'manifest.json').read_text());m.pop('uname',None);m.pop('git_diff',None)
 pairs={}
 for r in rs:
  key=r['case'];pairs.setdefault(key,set()).add((r['stdout_sha256'],r['stderr_sha256']))
 for case,p in pairs.items():
  if case not in ['fortune','dice','uuid','fib_iter_dev']:assert len(p)==1,(phase,case,len(p))
 cols=['case','variant','mode','round','wall_ms','cpu_ms','exit'];cols=[c for c in cols if any(c in r for r in rs)]
 extra={'random_output_cases':['fortune','dice','uuid'],'reactor_normalization':{'fib_iter_dev':{'dtvm':'0xcb228:i64','wasmtime':'832040','numeric_result':832040}}}
 data['phases'][phase]={'manifest':m,'columns':cols,'samples':[[r.get(c) for c in cols] for r in rs],'output_hashes':{k:list(sorted(v)) for k,v in pairs.items()},'output_rules':extra}
 for r in rs:
  if phase=='matrix-r7':r['variant']=r['variant']+'/'+r['mode']
 cells=[]
 for case in sorted({r['case'] for r in rs}):
  rows=[r for r in rs if r['case']==case and r['round']>=0];med={v:statistics.median(r['wall_ms'] for r in rows if r['variant']==v) for v in sorted({r['variant'] for r in rows})};before='baseline/lazy-G-MT' if phase=='matrix-r7' else 'base';comps=[]
  for after in sorted(med):
   if after==before:continue
   av={r['round']:r['wall_ms'] for r in rows if r['variant']==before};bv={r['round']:r['wall_ms'] for r in rows if r['variant']==after};assert av.keys()==bv.keys();rng=random.Random(20261105);boot=[];rounds=sorted(av)
   for _ in range(10000):
    ii=rng.choices(rounds,k=len(rounds));boot.append(100*(statistics.median(bv[i] for i in ii)/statistics.median(av[i] for i in ii)-1))
   boot.sort();comps.append({'before':before,'after':after,'change_pct':100*(med[after]/med[before]-1),'paired_bootstrap_95_pct':[boot[250],boot[9749]]})
  cells.append({'case':case,'medians_ms':med,'comparisons':comps})
 summary[phase]=cells
for r in data['diagnostics']:
 for c in r['compile']:c.pop() # native address is not needed for timing analysis
 datafields={'ra':['internal','disable_greedy','pre_ra_ns','ra_ns'],'front':['internal','disable_greedy','init_reinit_ns','frontend_ns'],'compile':['internal','disable_greedy','pipeline_ns','object_link_ns','native_bytes']};r['columns']=datafields
for r in data['causal_timing'].values():r['SHORT_COMPILE']=r['SHORT_COMPILE'][:-1]
data['checks']={k:(root/f).read_text().splitlines()[-5:] for k,f in [('ctest','ctest-final.log'),('greedy_spec','spec-greedy-final.log'),('fast_spec','spec-fast-final.log'),('python','harness-tests.log')]};data['checks']['format_empty']=(root/'format.log').stat().st_size==0;data['checks']['asan']='not run'
data['hybrid_source_sha256']={p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in ['src/compiler/mir/pass/peephole.cpp','src/compiler/mir/pass/peephole.h']}
(out/'measurements.json').write_text(json.dumps(data,separators=(',',':'))+'\n');(out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print('Archived',sum(len(v['samples']) for v in data['phases'].values()),'processes; measured',sum(sum(s[v['columns'].index('round')]>=0 for s in v['samples']) for v in data['phases'].values()))
