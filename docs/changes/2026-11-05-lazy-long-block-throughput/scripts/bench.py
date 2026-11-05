import argparse,json,hashlib,random,subprocess,time,resource,importlib.util,os,statistics
from pathlib import Path
root=Path.cwd();sp=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(sp);sp.loader.exec_module(h)
p=argparse.ArgumentParser();p.add_argument('--extra-catalog');p.add_argument('--candidate-source',default='uncommitted experiment; see per-phase source patch');p.add_argument('--cases',default='echo,md5,pi,base64cli,cowsay,tpl,atax,mvt,fib_iter_dev');p.add_argument('--variants',default='main,previous,candidate,wt45,wt49');p.add_argument('--repeats',type=int,default=7);p.add_argument('--seed',type=int,default=20261105);p.add_argument('--out',required=True);a=p.parse_args();out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
variants={
 'main':(root/'work/link-iteration/dtvm-main','lazy-G-MT',[]),
 'main-F':(root/'work/link-iteration/dtvm-main','lazy-F-ST',[]),
 'previous':(root/'work/pr-complete/dtvm-previous','lazy-G-MT',[]),
 'previous-F':(root/'work/pr-complete/dtvm-previous','lazy-F-ST',[]),
 'candidate':(root/'work/pr-complete/dtvm-candidate','lazy-G-MT',[]),
 'candidate-F':(root/'work/pr-complete/dtvm-candidate','lazy-F-ST',[]),
 'wt45':(root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime',None,[]),
 'wt49':(root/'work/wasmtime49/wasmtime-v49.0.5-x86_64-linux/wasmtime',None,[])}
selected=a.variants.split(',');assert any(v in selected for v in ['main','main-F']), 'upstream main is required';assert any(v.startswith('wt') for v in selected), 'Wasmtime is required';assert any(v.startswith(('previous','candidate')) for v in selected), 'latest experiment is required'
variants={v:variants[v] for v in selected};cs=h.load_cases(h.read_json(h.CATALOG_PATH));cs.extend(json.loads(Path(a.extra_catalog).read_text()) if a.extra_catalog else []);cs=[c for c in cs if c['id'] in a.cases.split(',')];assert len(cs)==len(a.cases.split(','))
sha=lambda b:hashlib.sha256(b).hexdigest();cmds={}
for c in cs:
 cmds[c['id']]={v:['taskset','-c','0']+((h.dtvm_cmd(binary,c,mode,False)+extra) if mode else h.wasmtime_cmd(binary,c)) for v,(binary,mode,extra) in variants.items()}
manifest={'upstream_main_commit':'f4b85073d2cc9df4fe5eeeb460fdcc3f093ef371','previous_experiment_commit':'28ad2de','candidate_source':a.candidate_source,'seed':a.seed,'repeats':a.repeats,'cpu':0,'boundary':'fresh-process pre-spawn through exit; warm page cache; cache disabled for Wasmtime; no diagnostics','binaries':{v:{'path':str(b),'sha256':sha(b.read_bytes()),'mode':m,'extra':extra} for v,(b,m,extra) in variants.items()},'inputs':{c['id']:sha(h.paper_join(c['wasm']).read_bytes()) for c in cs},'commands':cmds}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2));rows=[];rng=random.Random(a.seed)
with (out/'samples.jsonl').open('w',buffering=1) as f:
 for c in cs:
  for rnd in range(-1,a.repeats):
   order=list(variants);rng.shuffle(order)
   for v in order:
    for name in c.get('output_files',[]):(h.case_cwd(c)/name).unlink(missing_ok=True)
    before=resource.getrusage(resource.RUSAGE_CHILDREN);t=time.perf_counter_ns();r=subprocess.run(cmds[c['id']][v],cwd=h.case_cwd(c),input=c.get('stdin'),text=True,capture_output=True,timeout=120,env={**os.environ,'WASMTIME_CACHE':'0','LC_ALL':'C'});end=time.perf_counter_ns();after=resource.getrusage(resource.RUSAGE_CHILDREN)
    row={'case':c['id'],'variant':v,'round':rnd,'wall_ms':(end-t)/1e6,'cpu_ms':1000*(after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime),'exit':r.returncode,'stdout_sha256':sha(r.stdout.encode()),'stderr_sha256':sha(r.stderr.encode())};assert r.returncode==0,(c['id'],v,r.stderr[-300:]);f.write(json.dumps(row)+'\n');rows.append(row);(out/f"{c['id']}.{v}.stdout").write_text(r.stdout);(out/f"{c['id']}.{v}.stderr").write_text(r.stderr)
  print(c['id'],{v:round(statistics.median(r['wall_ms'] for r in rows if r['case']==c['id'] and r['variant']==v and r['round']>=0),3) for v in variants},flush=True)
