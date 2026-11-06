import argparse,hashlib,importlib.util,json,os,random,resource,statistics,subprocess,time
from pathlib import Path
root=Path.cwd();p=argparse.ArgumentParser();p.add_argument('--out',required=True);p.add_argument('--repeats',type=int,default=7);p.add_argument('--cases',default='pi,pi100,pi1000');p.add_argument('--variants',default='main,control,main-greedy,fmod-greedy,log-greedy,main-fmod-greedy,all-greedy,wt45');a=p.parse_args()
spec=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
base=root/'work/wapm-followup/dtvm-main';candidate=root/'work/wapm-followup/dtvm-intervention';wt=root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'
variants={'main':(base,None),'control':(candidate,''),'main-greedy':(candidate,'2'),'fmod-greedy':(candidate,'51'),'log-greedy':(candidate,'52'),'main-fmod-greedy':(candidate,'2,51'),'all-greedy':(candidate,'all'),'wt45':(wt,None),'pure-loop':(root/'work/wapm-followup/dtvm-pure-loop',None),'pure-control':(root/'work/wapm-followup/dtvm-pure-loop',None),'guard-loop':(root/'work/wapm-followup/dtvm-pure-loop-guard',None),'guard-control':(root/'work/wapm-followup/dtvm-pure-loop-guard',None),'exact':(root/'work/fast-ra-liveout/dtvm-exact',None),'exact-control':(root/'work/fast-ra-liveout/dtvm-exact',None),'forward-control':(root/'work/fast-ra-liveout/dtvm-forward',None),'forward':(root/'work/fast-ra-liveout/dtvm-forward',None),'both':(root/'work/fast-ra-liveout/dtvm-forward',None),'chains':(root/'work/fast-ra-liveout/dtvm-chains',None),'chains-control':(root/'work/fast-ra-liveout/dtvm-chains',None),'flags':(root/'work/fast-ra-liveout/dtvm-flags',None),'flags-control':(root/'work/fast-ra-liveout/dtvm-flags',None)}
variants={v:variants[v] for v in a.variants.split(',')}
cases=h.load_cases(h.read_json(h.CATALOG_PATH))+json.loads((root/'work/wapm-followup/scaled-catalog.json').read_text());cases=[c for c in cases if c['id'] in a.cases.split(',')];assert len(cases)==len(a.cases.split(','))
sha=lambda b:hashlib.sha256(b).hexdigest();out=Path(a.out);out.mkdir(parents=True,exist_ok=True);cmds={c['id']:{v:['taskset','-c','0']+(h.wasmtime_cmd(b,c) if v=='wt45' else h.dtvm_cmd(b,c,'lazy-G-MT',False)) for v,(b,_) in variants.items()} for c in cases}
manifest={'main_commit':'193b8d2e8ddeb54af974bc8a2b9cc52b838de8b2','seed':2026110612,'rounds':a.repeats,'excluded_warmup_round':-1,'boundary':'fresh process pre-spawn through exit; CPU0; warm page cache; Wasmtime cache disabled; diagnostics disabled','hypothesis':'Per-function register allocator intervention, not a production policy or hotness algorithm','variants':{v:{'binary':str(b),'sha256':sha(b.read_bytes()),'research_greedy_function_ids':ids,'research_pure_loop_rule':v in ['pure-loop','guard-loop'],'research_exact_liveout':v in ['exact','both'],'research_forward_spills':v in ['forward','both'],'research_chains':v=='chains','research_reuse_flags':v=='flags'} for v,(b,ids) in variants.items()},'commands':cmds,'inputs':{c['id']:sha(h.paper_join(c['wasm']).read_bytes()) for c in cases}}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2));rng=random.Random(2026110612);rows=[]
with (out/'samples.jsonl').open('w',buffering=1) as f:
 for c in cases:
  for rnd in range(-1,a.repeats):
   order=list(variants);rng.shuffle(order)
   for v in order:
    env={**os.environ,'LC_ALL':'C','WASMTIME_CACHE':'0'};env.pop('DTVM_TRACE_DIR',None);env.pop('DTVM_RESEARCH_GREEDY_FUNCTIONS',None)
    ids=variants[v][1]
    if ids is not None:env['DTVM_RESEARCH_GREEDY_FUNCTIONS']=ids
    if v in ['pure-loop','guard-loop']:env['DTVM_RESEARCH_PURE_LOOP_GREEDY']='1'
    if v in ['exact','both']:env['DTVM_RESEARCH_EXACT_LIVEOUT']='1'
    if v in ['forward','both']:env['DTVM_RESEARCH_FORWARD_SPILLS']='1'
    if v=='chains':env['DTVM_RESEARCH_FAST_RA_CHAINS']='1'
    if v=='flags':env['DTVM_RESEARCH_REUSE_LOGIC_FLAGS']='1'
    before=resource.getrusage(resource.RUSAGE_CHILDREN);t=time.perf_counter_ns();r=subprocess.run(cmds[c['id']][v],cwd=h.case_cwd(c),input=c.get('stdin'),text=True,capture_output=True,env=env,timeout=120);wall=(time.perf_counter_ns()-t)/1e6;after=resource.getrusage(resource.RUSAGE_CHILDREN)
    row={'case':c['id'],'variant':v,'round':rnd,'wall_ms':wall,'cpu_ms':1000*(after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime),'exit':r.returncode,'stdout_sha256':sha(r.stdout.encode()),'stderr_sha256':sha(r.stderr.encode())};assert r.returncode==0,(c['id'],v,r.stderr);rows.append(row);f.write(json.dumps(row)+'\n');(out/(c['id']+'.'+v+'.stdout')).write_text(r.stdout);(out/(c['id']+'.'+v+'.stderr')).write_text(r.stderr)
  if c['id'].startswith('pi'):assert len({r['stdout_sha256'] for r in rows if r['case']==c['id']})==1
  print(c['id'],{v:round(statistics.median(r['wall_ms'] for r in rows if r['case']==c['id'] and r['variant']==v and r['round']>=0),3) for v in variants},flush=True)
