import importlib.util,json,subprocess,hashlib,os
from pathlib import Path
root=Path.cwd();s=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(s);s.loader.exec_module(h)
ids=['amirali','chkfont','code-stock','dice','figlet','irb','pkg1','qr2text','suggest'];cases=[c for c in h.load_cases(h.read_json(h.CATALOG_PATH)) if c['id'] in ids];variants={'main':(root/'work/link-iteration/dtvm-main','lazy-G-MT'),'previous':(root/'work/pr-complete/dtvm-previous','lazy-G-MT'),'candidate':(root/'work/pr-complete/dtvm-candidate','lazy-G-MT'),'wt45':(root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime',None),'wt49':(root/'work/wasmtime49/wasmtime-v49.0.5-x86_64-linux/wasmtime',None)};out={}
for c in cases:
 rows={}
 for v,(binary,mode) in variants.items():
  cmd=['taskset','-c','0']+(h.dtvm_cmd(binary,c,mode,False) if mode else h.wasmtime_cmd(binary,c))
  try:
   r=subprocess.run(cmd,cwd=h.case_cwd(c),input=c.get('stdin'),capture_output=True,text=True,timeout=30,env={**os.environ,'LC_ALL':'C','WASMTIME_CACHE':'0'});rows[v]={'exit':r.returncode,'stdout':r.stdout,'stderr':r.stderr}
  except subprocess.TimeoutExpired:rows[v]={'timeout':True}
 out[c['id']]=rows;Path('work/pr-complete/inventory.json').write_text(json.dumps(out,indent=2)+'\n');print(c['id'],{v:r.get('exit','timeout') for v,r in rows.items()},flush=True)
