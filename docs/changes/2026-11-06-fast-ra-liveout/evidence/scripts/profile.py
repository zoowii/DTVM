from pathlib import Path
import subprocess,os,re,json,shutil,hashlib,random
root=Path.cwd();out=root/'work/fast-ra-liveout/profiles';vs={'main':(root/'work/wapm-followup/dtvm-trace',{}),'chains':(root/'work/fast-ra-liveout/dtvm-chains',{'DTVM_RESEARCH_FAST_RA_CHAINS':'1'}),'private-greedy':(root/'work/wapm-followup/dtvm-intervention',{'DTVM_RESEARCH_GREEDY_FUNCTIONS':'51'}),'wt45':(root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime',{})};wasm=root/'benchmarks/paper/benchmarks/wapm/pi.wasm';rng=random.Random(2026110611)
for rnd in range(5):
 order=list(vs);rng.shuffle(order)
 for v in order:
  b,flags=vs[v];d=out/(v+'-'+str(rnd));d.mkdir(exist_ok=True)
  env={**os.environ,**flags,'LD_PRELOAD':str(root/'work/fast-ra-liveout/sample_pc.so'),'DTVM_SAMPLE_FILE':str(d/'pc.txt')}
  if v!='wt45':env['DTVM_TRACE_DIR']=str(d)
  cmd=[str(b)]+(['run','--profile','perfmap','-C','cache=n',str(wasm),'1000'] if v=='wt45' else ['-m','multipass','--enable-multipass-lazy',str(wasm),'--args','1000'])
  r=subprocess.run(cmd,capture_output=True,env=env,timeout=30,preexec_fn=lambda:os.sched_setaffinity(0,{0}));assert r.returncode==0,(v,r.stderr[-1000:]);assert r.stdout==b'Decimal digits of pi at position 1000: 938095257\n',(v,r.stdout);(d/'stdout').write_bytes(r.stdout);(d/'stderr').write_bytes(r.stderr)
  if v=='wt45':
   pid=re.search(r'pid=(\d+)',(d/'pc.txt').read_text()).group(1);shutil.copy2('/tmp/perf-'+pid+'.map',d/'symbols.map')
  print(v,rnd,flush=True)
(out/'manifest.json').write_text(json.dumps({'diagnostic_only':True,'period_cpu_us':1000,'seed':2026110611,'runs':5,'input_sha256':hashlib.sha256(wasm.read_bytes()).hexdigest(),'cpu':0,'note':'ITIMER_PROF process CPU sampling. DTVM function ranges from trace; WT perfmap. Excludes all formal timing claims.','binaries':{v:{'sha256':hashlib.sha256(b.read_bytes()).hexdigest(),'flags':flags} for v,(b,flags) in vs.items()}},indent=2))
