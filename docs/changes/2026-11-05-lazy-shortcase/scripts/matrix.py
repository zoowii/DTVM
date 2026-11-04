# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
import argparse,importlib.util,json,hashlib,os,random,subprocess,time,resource,platform,statistics
from pathlib import Path
ROOT=Path.cwd()
s=importlib.util.spec_from_file_location('h',ROOT/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(s);s.loader.exec_module(h)
p=argparse.ArgumentParser();p.add_argument('--wasmtime');p.add_argument('--extra-catalog');p.add_argument('--suites');p.add_argument('--dtvm',required=True);p.add_argument('--candidate');p.add_argument('--cases',default='atax,bicg,floyd-warshall,gemm,gemver,gesummv,jacobi-2d,mvt,md5,pi,echo,figlet,cowsay,fortune,fib_iter_dev');p.add_argument('--repeats',type=int,default=5);p.add_argument('--modes',default='singlepass,multipass-G-ST,lazy-G-MT');p.add_argument('--out',required=True);p.add_argument('--cpu',default='0');p.add_argument('--timeout',type=float,default=60);p.add_argument('--extra',default='');a=p.parse_args()
out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
cs=h.load_cases(h.read_json(h.CATALOG_PATH));cs.extend(json.loads(Path(a.extra_catalog).read_text()) if a.extra_catalog else []);wanted=a.cases.split(',');cases=[c for c in cs if c['id'] in wanted] if a.cases!='all' else [c for c in cs if c['suite'] in ('polybench','wapm')]
assert a.cases=='all' or len(cases)==len(wanted)
if a.suites: cases=[c for c in cases if c['suite'] in a.suites.split(',')]
wt=Path(a.wasmtime) if a.wasmtime else ROOT/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
variants=[('baseline',Path(a.dtvm))]+([('candidate',Path(a.candidate))] if a.candidate else [])
meta={'source':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),'git_diff':subprocess.check_output(['git','diff'],cwd=ROOT,text=True),'uname':platform.uname()._asdict(),'cpu':a.cpu,'repeats':a.repeats,'seed':20261103,'boundary':'parent pre-spawn through child exit; fresh process; page cache warm; Wasmtime cache off; no timing instrumentation','binaries':{n:{'path':str(b),'sha256':sha(b)} for n,b in variants+[('wasmtime',wt)]},'inputs':{c['id']:sha(h.paper_join(c['wasm'])) for c in cases}}
(out/'manifest.json').write_text(json.dumps(meta,indent=2))
rng=random.Random(20261103);records=[];f=(out/'samples.jsonl').open('w',buffering=1)
for c in cases:
 jobs=[]
 for n,b in variants:
  for mode in a.modes.split(','):
   jobs.append((n,mode,h.dtvm_cmd(b,c,mode,False)+a.extra.split()))
 jobs.append(('wasmtime','cranelift-nocache',h.wasmtime_cmd(wt,c)))
 # One independent warm-up process per variant; rotate order every measured round.
 for rnd in range(-1,a.repeats):
  ordered=jobs[:];rng.shuffle(ordered)
  for n,mode,cmd in ordered:
   for name in c.get('output_files',[]):
    (h.case_cwd(c)/name).unlink(missing_ok=True)
   full=['taskset','-c',a.cpu]+cmd
   env=os.environ.copy();env['WASMTIME_CACHE']='0';env['LC_ALL']='C'
   usage=resource.getrusage(resource.RUSAGE_CHILDREN);t0=time.perf_counter_ns()
   try:
    r=subprocess.run(full,cwd=h.case_cwd(c),input=c.get('stdin'),capture_output=True,text=True,errors='replace',timeout=a.timeout,env=env);status=r.returncode;stdout=r.stdout;stderr=r.stderr
   except subprocess.TimeoutExpired as e:
    status=124;stdout=str(e.stdout or '');stderr=str(e.stderr or '')
   elapsed=(time.perf_counter_ns()-t0)/1e6;after=resource.getrusage(resource.RUSAGE_CHILDREN)
   row={'case':c['id'],'suite':c['suite'],'round':rnd,'variant':n,'mode':mode,'wall_ms':elapsed,'cpu_ms':1000*((after.ru_utime+after.ru_stime)-(usage.ru_utime+usage.ru_stime)),'exit':status,'cmd':full,'stdout_sha256':hashlib.sha256(stdout.encode()).hexdigest(),'stderr_sha256':hashlib.sha256(stderr.encode()).hexdigest()}
   (out/f"{c['id']}.{n}.{mode}.stdout").write_text(stdout);(out/f"{c['id']}.{n}.{mode}.stderr").write_text(stderr)
   
   if c.get('output_files'):
    row['output_files']={name:sha(h.case_cwd(c)/name) if (h.case_cwd(c)/name).is_file() else None for name in c['output_files']}
   f.write(json.dumps(row)+'\n');records.append(row)
   if status:print('FAIL',c['id'],n,mode,status,stderr[-160:],flush=True)
 group={}
 for r in records:
  if r['case']==c['id'] and r['round']>=0:group.setdefault(r['variant']+'/'+r['mode'],[]).append(r['wall_ms'])
 print(c['id'],{k:round(statistics.median(v),3) for k,v in group.items()},flush=True)
f.close();(out/'samples.json').write_text(json.dumps(records,indent=2))
