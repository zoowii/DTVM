#!/usr/bin/env python3
"""Fresh-process randomized screen; execute only after builds/validation finish."""
import argparse, hashlib, json, os, random, resource, statistics, subprocess, time
from pathlib import Path
p=argparse.ArgumentParser(); p.add_argument('--main',type=Path,required=True); p.add_argument('--candidate',type=Path,required=True); p.add_argument('--main-runner',type=Path,required=True); p.add_argument('--runner',type=Path,required=True); p.add_argument('--wasmtime',type=Path,required=True); p.add_argument('--out',type=Path,required=True); p.add_argument('--rounds',type=int,default=31); p.add_argument('--seed',type=int,default=6521603); p.add_argument('--cpu',type=int,default=0); p.add_argument('--ablate',action='store_true'); a=p.parse_args()
root=Path(__file__).resolve().parents[3]; a.out.mkdir(parents=True,exist_ok=False)
rng=random.Random(a.seed); env={k:v for k,v in os.environ.items() if not k.startswith('DTVM_RESEARCH_')}; env['LC_ALL']='C'
sha=lambda path:hashlib.sha256(Path(path).read_bytes()).hexdigest()
manifest={'seed':a.seed,'rounds':a.rounds,'cpu':a.cpu,'warmups':2,'git':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'diff_sha256':hashlib.sha256(subprocess.check_output(['git','diff'])).hexdigest(),'binaries':{str(x):sha(x) for x in [a.main,a.candidate,a.runner,a.main_runner,a.wasmtime]},'commands':{},'boundary':'fresh process spawn to exit; includes startup, compile, execute, teardown; not steady-state nor pure TTFT','controls':'same candidate inode for off/aa/both and individual bits; separate frozen main; WT45 cache disabled; sequential pinned processes; no concurrent builds or instrumentation'}
rows=[]
for case in ['tickmath','rpow','merkle-c','nft','bicg','atax','md5','base64cli']:
 contract=case in ['tickmath','rpow','merkle-c','nft']
 if contract:
  names={'tickmath':'uniswap_v3_tickmath_pilot','rpow':'rpow_pilot','merkle-c':'merkle_valid','nft':'generative_nft'}
  wasm=root/'benchmarks/paper/harness/contracts/build'/f'{names[case]}.wasm'
  calldata='8903c5a2' if case=='merkle-c' else '4a7dd523'+(1).to_bytes(32,'big').hex()
  cmd=lambda binary,mode:[str(binary),mode,str(wasm),calldata]
  cmds={'main':cmd(a.main_runner,'dtvm-lazy'),'single':cmd(a.main_runner,'dtvm-singlepass'),'wt45':cmd(a.main_runner,'wasmtime')}
  variants={v:cmd(a.runner,'dtvm-lazy') for v in ['off','aa','both','remat','cache']}
 else:
  suite='polybenchc' if case in ['bicg','atax'] else 'wapm'; wasm=root/f'benchmarks/paper/benchmarks/{suite}/{case}.wasm'
  args=['helloworld'] if case=='md5' else ([] if case!='base64cli' else ['encode','helloworld'])
  cmd=lambda binary,mode:[str(binary),'-m',mode,*(['--enable-multipass-lazy'] if mode=='multipass' else []),str(wasm),*(['--args',*args] if args else [])]
  cmds={'main':cmd(a.main,'multipass'),'single':cmd(a.main,'singlepass'),'wt45':[str(a.wasmtime),'run','-C','cache=n',str(wasm),*args]}
  variants={v:cmd(a.candidate,'multipass') for v in ['off','aa','both','remat','cache']}
 cmds.update({k:v for k,v in variants.items() if a.ablate or k in ['off','aa','both']})
 manifest['commands'][case]={'input_sha256':sha(wasm),'commands':cmds}
 (a.out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
 reference=None
 for rnd in range(-2,a.rounds):
  order=list(cmds); rng.shuffle(order)
  for v in order:
   mask={'both':3,'remat':1,'cache':2}.get(v,0)
   before=resource.getrusage(resource.RUSAGE_CHILDREN); start=time.perf_counter_ns()
   r=subprocess.run(['taskset','-c',str(a.cpu),*cmds[v]],env={**env,'DTVM_RESEARCH_COMPILER_MASK':str(mask)},capture_output=True,timeout=180)
   wall=(time.perf_counter_ns()-start)/1e6; after=resource.getrusage(resource.RUSAGE_CHILDREN)
   if r.returncode: raise RuntimeError((case,v,r.returncode,r.stderr))
   signature=(r.stdout,r.stderr)
   if reference is None: reference=signature
   if signature!=reference: raise RuntimeError((case,v,'output mismatch',signature,reference))
   row={'case':case,'round':rnd,'variant':v,'wall_ms':wall,'cpu_ms':1000*(after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime),'stdout_sha256':hashlib.sha256(r.stdout).hexdigest(),'stderr_sha256':hashlib.sha256(r.stderr).hexdigest()}; rows.append(row)
   with (a.out/'samples.jsonl').open('a') as f:f.write(json.dumps(row)+'\n')
 print(case,'complete',flush=True)
 (a.out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
summary={}
for case in manifest['commands']:
 vals=lambda v:[r['wall_ms'] for r in rows if r['case']==case and r['round']>=0 and r['variant']==v]
 variants=manifest['commands'][case]['commands']; result={'medians_ms':{v:statistics.median(vals(v)) for v in variants},'paired_ratios':{}}
 for v in ['aa','both']+(['remat','cache'] if a.ablate else []):
  ratios=[x/y for x,y in zip(vals(v),vals('off'))]; boot=sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000))
  result['paired_ratios'][v+'/off']={'median':statistics.median(ratios),'ci95':[boot[250],boot[9750]]}
 summary[case]=result
(a.out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n'); print(json.dumps(summary,indent=2))
