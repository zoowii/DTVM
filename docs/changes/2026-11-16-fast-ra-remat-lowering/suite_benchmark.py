#!/usr/bin/env python3
"""Canonical catalog screen. No concurrent compilation/profiling during timings."""
import argparse,hashlib,json,os,random,resource,statistics,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'benchmarks/paper/harness'))
import run as harness
p=argparse.ArgumentParser();p.add_argument('--main',type=Path,required=True);p.add_argument('--candidate',type=Path,required=True);p.add_argument('--wasmtime',type=Path,required=True);p.add_argument('--out',type=Path,required=True);p.add_argument('--cases');p.add_argument('--variants');p.add_argument('--controls',action='store_true');p.add_argument('--seed',type=int,default=6531701);p.add_argument('--rounds',type=int,default=7);p.add_argument('--long-rounds',type=int,default=3);p.add_argument('--timeout',type=float,default=60);p.add_argument('--cpu',type=int,default=0);a=p.parse_args()
ids=(a.cases or 'base64cli,chkfont,code-stock,cowsay,dice,echo,erdtree,figlet,fortune,md5,pi,pkg1,qr2text,suggest,tpl,uuid,viu,atax,bicg,deriche,durbin,gemver,gesummv,jacobi_1d,mvt,trisolv,adi,gemm,2mm').split(',')
catalog={c['id']:c for c in harness.load_cases(harness.read_json(harness.CATALOG_PATH))};a.out.mkdir(parents=True,exist_ok=False)
sha=lambda x:hashlib.sha256(Path(x).read_bytes()).hexdigest()
env={k:v for k,v in os.environ.items() if not k.startswith('DTVM_RESEARCH_')};env['LC_ALL']='C'
manifest={'git':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'seed':a.seed,'cpu':a.cpu,'rounds_short':a.rounds,'rounds_long':a.long_rounds,'long_threshold_s':1,'timeout_s':a.timeout,'warmups':1,'boundary':'fresh process wall/CPU including startup, compilation, execution and teardown; cache warm; not steady-state or TTFT','binaries':{str(b):sha(b) for b in [a.main,a.candidate,a.wasmtime]},'cases':{},'modes':{'F':'lazy-F-ST, explicit FastRA and single-thread compile','D':'lazy-G-MT, default lazy strategy'},'validation':'exit status and output hashes retained; deterministic PolyBench output checked exactly; WAPM output may contain random/time/path-dependent content, so record hashes without claiming independent semantic validation'}
rng=random.Random(a.seed);rows=[]
for cid in ids:
 case=catalog[cid];harness.require_wasm(harness.paper_join(case['wasm']))
 configs={'main-SP':(a.main,'singlepass',0),'both-SP':(a.candidate,'singlepass',3),'main-F':(a.main,'lazy-F-ST',0),'off-F':(a.candidate,'lazy-F-ST',0),'both-F':(a.candidate,'lazy-F-ST',3),'main-D':(a.main,'lazy-G-MT',0),'both-D':(a.candidate,'lazy-G-MT',3)}
 if a.controls:
  configs.update({'aa-F':(a.candidate,'lazy-F-ST',0),'off-D':(a.candidate,'lazy-G-MT',0),'aa-D':(a.candidate,'lazy-G-MT',0)})
 commands={k:harness.dtvm_cmd(b,case,m,False) for k,(b,m,_) in configs.items()};commands['WT45']=harness.wasmtime_cmd(a.wasmtime,case)
 masks={k:t[2] for k,t in configs.items()};masks['WT45']=0
 if a.variants:
  chosen=a.variants.split(',')
  commands={k:commands[k] for k in chosen};masks={k:masks[k] for k in chosen}
 manifest['cases'][cid]={'suite':case['suite'],'input_sha256':sha(harness.paper_join(case['wasm'])),'commands':commands,'cwd':str(harness.case_cwd(case)),'stdin':case.get('stdin'),'masks':masks}
 (a.out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
 warm={};disabled=set();reference=None
 def execute(v,rnd):
  global reference
  before=resource.getrusage(resource.RUSAGE_CHILDREN);start=time.perf_counter_ns();out=b'';err=b'';exitcode=None;timeout=False
  try:
   r=subprocess.run(['taskset','-c',str(a.cpu),*commands[v]],cwd=harness.case_cwd(case),input=(case.get('stdin') or '').encode(),env={**env,'DTVM_RESEARCH_COMPILER_MASK':str(masks[v])},capture_output=True,timeout=a.timeout)
   exitcode=r.returncode;out=r.stdout;err=r.stderr
  except subprocess.TimeoutExpired as e:
   timeout=True;out=e.stdout or b'';err=e.stderr or b''
  wall=(time.perf_counter_ns()-start)/1e6;after=resource.getrusage(resource.RUSAGE_CHILDREN)
  sig=(hashlib.sha256(out).hexdigest(),hashlib.sha256(err).hexdigest());matched=None
  if case['suite']=='polybench' and exitcode==0:
   if reference is None:reference=sig
   matched=sig==reference
  row={'case':cid,'suite':case['suite'],'variant':v,'round':rnd,'wall_ms':wall,'cpu_ms':1000*(after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime),'exit':exitcode,'timeout':timeout,'stdout_sha256':sig[0],'stderr_sha256':sig[1],'deterministic_output_match':matched,'ok':exitcode==0 and matched is not False}
  rows.append(row)
  with (a.out/'samples.jsonl').open('a') as f:f.write(json.dumps(row)+'\n')
  if not row['ok']:
   (a.out/f'{cid}-{v}-round{rnd}-failure.txt').write_bytes(out+b'\nSTDERR:\n'+err)
  return row
 order=list(commands);rng.shuffle(order)
 for v in order:
  r=execute(v,-1);warm[v]=r
  if not r['ok']:disabled.add(v)
 count=a.long_rounds if max(r['wall_ms'] for r in warm.values())>1000 else a.rounds
 manifest['cases'][cid]['measured_rounds']=count
 for rnd in range(count):
  order=list(commands);rng.shuffle(order)
  for v in order:
   if v not in disabled:execute(v,rnd)
 print(cid,'complete',count,'rounds','warmup failures='+str(sorted(disabled)),flush=True)
 (a.out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
summary={}
for cid in ids:
 cr=[r for r in rows if r['case']==cid];expected=manifest['cases'][cid]['measured_rounds'];d={'suite':catalog[cid]['suite'],'rounds':expected,'medians_ms':{},'pairs':{},'failures':{}}
 vals=lambda v:[r['wall_ms'] for r in cr if r['variant']==v and r['round']>=0 and r['ok']]
 for v in commands:
  n=len(vals(v));d['medians_ms'][v]=statistics.median(vals(v)) if n==expected else None
  failures=[r for r in cr if r['variant']==v and not r['ok']]
  if failures:d['failures'][v]={'count':len(failures),'exits':[r['exit'] for r in failures],'timeout':any(r['timeout'] for r in failures)}
 pairs=[('both-SP','main-SP'),('both-F','main-F'),('both-F','off-F'),('off-F','main-F'),('both-D','main-D')]
 if a.controls:pairs.extend([('aa-F','off-F'),('both-D','off-D'),('aa-D','off-D'),('off-D','main-D')])
 for x,y in pairs:
  if x not in d['medians_ms'] or y not in d['medians_ms']:continue
  if d['medians_ms'][x] is None or d['medians_ms'][y] is None:continue
  ratios=[x/y for x,y in zip(vals(x),vals(y))];boots=sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000));d['pairs'][x+'/'+y]={'ratio':statistics.median(ratios),'ci95':[boots[250],boots[9750]]}
 summary[cid]=d
(a.out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
