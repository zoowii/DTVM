# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
import argparse,json,random,subprocess,time,hashlib,statistics,resource,struct
from pathlib import Path
ROOT=Path.cwd()
p=argparse.ArgumentParser();p.add_argument('--variants',default='off,budgeted,zero-off,zero-budgeted,wasmtime');p.add_argument('--phase',action='store_true');p.add_argument('--micro',action='store_true');p.add_argument('--cases',default='atax,bicg');p.add_argument('--counts',default='1,30');p.add_argument('--repeats',type=int,default=7);p.add_argument('--out',required=True);a=p.parse_args()
out=Path(a.out);out.mkdir(exist_ok=True,parents=True)
old=ROOT/'work/dtvm-budgeted-promotion';new=ROOT/'work/bottleneck/dtvm-zero-convert';wt=ROOT/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'
policy=['--enable-lazy-demand-promotion','--lazy-promotion-call-threshold','8','--lazy-promotion-max-functions','32','--lazy-promotion-max-bytes','65536','--lazy-promotion-max-function-bytes','1024','--lazy-promotion-budget-ms','100']
variants={'off':(old,[]),'budgeted':(old,policy),'zero-off':(new,[]),'zero-budgeted':(new,policy),'wasmtime':(wt,[])}
variants={v:variants[v] for v in a.variants.split(',')}
jobs=[]
for case in a.cases.split(',') if not a.micro else ['conversion_division','division_control']:
 for count in map(int,a.counts.split(',')) if not a.micro else [1]:
  path=ROOT/'work/bottleneck'/('convert-micro.wasm' if a.micro else case+('-phase-repeat' if a.phase else '-param-repeat')+'.wasm')
  variants_used=variants if not a.micro else {k:variants[k] for k in ['off','zero-off','wasmtime']}
  cmds={}
  for v,(binary,flags) in variants_used.items():
   if v=='wasmtime': cmd=[str(binary),'run','-C','cache=n','--invoke',case if a.micro else 'repeat',str(path)]+([] if a.micro else [str(count)])
   else: cmd=[str(binary),'-m','multipass', '--disable-multipass-multithread' if a.micro else '--enable-multipass-lazy']+flags+['-f',case if a.micro else 'repeat',str(path)]+([] if a.micro else ['--args',str(count)])
   cmds[v]=['taskset','-c','0']+cmd
  jobs.append((case,count,path,cmds))
sha=lambda b:hashlib.sha256(b).hexdigest()
manifest={'seed':20261104,'repeats':a.repeats,'phase_instrumentation':a.phase,'cpu':0,'boundary':'Fresh-process pre-spawn through exit. Parametric repeat calls original _start in same instance. Warm page cache. Wasmtime cache disabled.','binary_hashes':{v:sha(b.read_bytes()) for v,(b,f) in variants.items()},'jobs':[{'case':c,'count':n,'input_sha256':sha(p.read_bytes()),'commands':cmds} for c,n,p,cmds in jobs]}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2));rng=random.Random(20261104);rows=[]
with (out/'samples.jsonl').open('w',buffering=1) as stream:
 for c,n,path,cmds in jobs:
  for rnd in range(-1,a.repeats):
   order=list(cmds);rng.shuffle(order)
   for v in order:
    usage=resource.getrusage(resource.RUSAGE_CHILDREN);t=time.perf_counter_ns();r=subprocess.run(cmds[v],capture_output=True,timeout=120);wall=(time.perf_counter_ns()-t)/1e6;after=resource.getrusage(resource.RUSAGE_CHILDREN)
    guest=r.stderr[r.stderr.index(b'==BEGIN DUMP_ARRAYS=='):] if b'==BEGIN DUMP_ARRAYS==' in r.stderr else r.stderr
    row={'case':c,'count':n,'variant':v,'round':rnd,'wall_ms':wall,'cpu_ms':1000*(after.ru_utime+after.ru_stime-usage.ru_utime-usage.ru_stime),'exit':r.returncode,'stdout_sha256':sha(r.stdout),'guest_stderr_sha256':sha(guest),'raw_stderr_sha256':sha(r.stderr)}
    if a.phase:
     assert len(r.stdout)==32*n,(c,v,r.returncode,r.stdout[:100],r.stderr[:200])
     stamps=[struct.unpack('<4Q',r.stdout[i:i+32]) for i in range(0,len(r.stdout),32)]
     row['calls']=[{'init_ms':(t[1]-t[0])/1e6,'kernel_ms':(t[2]-t[1])/1e6,'output_free_ms':(t[3]-t[2])/1e6,'main_ms':(t[3]-t[0])/1e6} for t in stamps]
    assert r.returncode==0,(c,v,r.stderr[-500:])
    stream.write(json.dumps(row)+'\n');rows.append(row)
  cells=[r for r in rows if r['case']==c and r['count']==n and r['round']>=0]
  if not a.micro:
   assert len({r['guest_stderr_sha256'] for r in cells})==1
   if not a.phase: assert len({r['stdout_sha256'] for r in cells})==1
  print(c,n,{v:round(statistics.median(r['wall_ms'] for r in cells if r['variant']==v),3) for v in cmds},flush=True)
