from pathlib import Path
import json,os,subprocess,random,struct,time,hashlib,statistics
root=Path.cwd();out=root/'work/wapm-followup/phases-r7';out.mkdir(exist_ok=True);wasm=root/'work/wapm-followup/pi-phases.wasm';main=root/'work/wapm-followup/dtvm-main';exp=root/'work/wapm-followup/dtvm-intervention';wt=root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'
vs={'main':(main,None),'fmod-greedy':(exp,'51'),'main-fmod-greedy':(exp,'2,51'),'wt45':(wt,None)};rng=random.Random(2026110604);rows=[]
with (out/'samples.jsonl').open('w',buffering=1) as f:
 for rnd in range(-1,7):
  order=list(vs);rng.shuffle(order)
  for v in order:
   b,ids=vs[v];env={**os.environ,'LC_ALL':'C'};env.pop('DTVM_TRACE_DIR',None);env.pop('DTVM_RESEARCH_GREEDY_FUNCTIONS',None)
   if ids:env['DTVM_RESEARCH_GREEDY_FUNCTIONS']=ids
   cmd=['taskset','-c','0',str(b)]+(['run','-C','cache=n',str(wasm),'1000'] if v=='wt45' else ['-m','multipass','--enable-multipass-lazy',str(wasm),'--args','1000'])
   t=time.perf_counter_ns();r=subprocess.run(cmd,env=env,capture_output=True,timeout=30);wall=(time.perf_counter_ns()-t)/1e6;assert r.returncode==0,(v,r.stderr);assert len(r.stderr)==16,(v,r.stderr)
   kernel,prime=struct.unpack('<QQ',r.stderr);row={'variant':v,'round':rnd,'wall_ms':wall,'kernel_ms':kernel/1e6,'prime_ms':prime/1e6,'stdout_sha256':hashlib.sha256(r.stdout).hexdigest(),'exit':r.returncode};rows.append(row);f.write(json.dumps(row)+'\n')
assert len({r['stdout_sha256'] for r in rows})==1
for v in vs:print(v,{k:round(statistics.median(r[k] for r in rows if r['variant']==v and r['round']>=0),3) for k in ['wall_ms','kernel_ms','prime_ms']})
(out/'manifest.json').write_text(json.dumps({'seed':2026110604,'rounds':7,'warmup':-1,'diagnostic_only':True,'case':'pi(1000) derived clock-instrumented module; not canonical input','input_sha256':hashlib.sha256(wasm.read_bytes()).hexdigest(),'cpu':0,'binaries':{v:{'sha256':hashlib.sha256(b.read_bytes()).hexdigest(),'research_greedy_ids':ids} for v,(b,ids) in vs.items()}},indent=2))
