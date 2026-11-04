# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
import subprocess,struct,random,time,json,hashlib,statistics
root=Path.cwd();out=root/'work/bottleneck/fine';rng=random.Random(20261104);rows=[];commands={}
for case in ['atax','bicg']:
 p=out/(case+'-phases.wasm')
 cmds={'baseline':['work/dtvm-budgeted-promotion','-m','multipass','--disable-multipass-multithread',str(p)],'zero':['work/bottleneck/dtvm-zero-convert','-m','multipass','--disable-multipass-multithread',str(p)],'wasmtime':['benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime','run','-C','cache=n',str(p)]}
 commands[case]=cmds
 for rnd in range(-1,9):
  order=list(cmds);rng.shuffle(order)
  for v in order:
   t=time.perf_counter_ns();r=subprocess.run(['taskset','-c','0']+cmds[v],capture_output=True,timeout=30);wall=(time.perf_counter_ns()-t)/1e6
   assert r.returncode==0 and len(r.stdout)==48,(case,v,r.returncode,r.stdout,r.stderr[-100:])
   stamps=struct.unpack('<6Q',r.stdout);row={'case':case,'round':rnd,'variant':v,'wall_ms':wall,'stages_ms':[(y-x)/1e6 for x,y in zip(stamps,stamps[1:])],'stderr_sha256':hashlib.sha256(r.stderr).hexdigest(),'exit':r.returncode};rows.append(row)
 print(case,{v:[round(statistics.median(r['stages_ms'][i] for r in rows if r['case']==case and r['variant']==v and r['round']>=0),3) for i in range(5)] for v in cmds},flush=True)
(out/'samples.json').write_text(json.dumps(rows,indent=2));(out/'commands.json').write_text(json.dumps(commands,indent=2))
