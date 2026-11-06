import gzip,hashlib,importlib.util,json,os,re,subprocess
from pathlib import Path
s=importlib.util.spec_from_file_location('h','benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(s);s.loader.exec_module(h);base=Path('work/pr642').resolve();cs=h.load_cases(h.read_json(h.CATALOG_PATH));records=[]
for name in ['floyd-warshall','nussinov']:
 c=next(c for c in cs if c['id']==name)
 for mode in ['off','on']:
  out=base/f'word-native-{name}-{mode}';out.mkdir(exist_ok=False);env=os.environ.copy();env['DTVM_PR642_TRACE_DIR']=str(out)
  if mode=='off':env['DTVM_PR642_DISABLE_SELECTION']='1'
  else:env.pop('DTVM_PR642_DISABLE_SELECTION',None)
  cmd=['taskset','-c','0']+h.dtvm_cmd(base/'dtvm-word-diagnostic',c,'lazy-G-MT',True)
  r=subprocess.run(cmd,cwd=h.case_cwd(c),capture_output=True,env=env,check=True)
  with gzip.open(out/'stderr.gz','wb') as f:f.write(r.stderr)
  (out/'stdout.txt').write_bytes(r.stdout)
  trace=re.findall(rb'WORDTRACE func=\d+ selected=\d+ loops=\d+ calls=\d+ code=\d+\n',r.stderr)
  (out/'trace.txt').write_bytes(b''.join(trace))
  rows={'case':name,'mode':mode,'cmd':cmd,'trace':[x.decode().strip() for x in trace],'exit':r.returncode,'stdout_sha256':hashlib.sha256(r.stdout).hexdigest()};records.append(rows)
  for p in out.glob('func-2-*.bin'):
   q=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64',str(p)],capture_output=True,check=True);p.with_suffix('.asm').write_bytes(q.stdout)
  print(name,mode,[x.decode().strip() for x in trace if b'func=2 ' in x],flush=True)
(base/'word-native.json').write_text(json.dumps(records,indent=2)+'\n')
