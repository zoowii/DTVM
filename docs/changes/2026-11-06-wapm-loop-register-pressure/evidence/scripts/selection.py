import importlib.util,json,os,subprocess
from pathlib import Path
root=Path.cwd();sp=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(sp);sp.loader.exec_module(h);out=root/'work/wapm-followup/selection';out.mkdir(exist_ok=True);rows=[]
for c in h.load_cases(h.read_json(h.CATALOG_PATH)):
 if c['id'] not in ['pi','echo','md5','base64cli','cowsay','fortune','tpl','fib_iter_dev']:continue
 env={**os.environ,'DTVM_RESEARCH_PURE_LOOP_GREEDY':'1','DTVM_RESEARCH_SELECTION_LOG':'1'};cmd=['taskset','-c','0']+h.dtvm_cmd(root/'work/wapm-followup/dtvm-pure-loop',c,'lazy-G-MT',False);r=subprocess.run(cmd,cwd=h.case_cwd(c),input=c.get('stdin'),text=True,capture_output=True,env=env,timeout=30);assert r.returncode==0,(c['id'],r.stderr);(out/(c['id']+'.stderr')).write_text(r.stderr);selected=[]
 for l in r.stderr.splitlines():
  if l.startswith('PURE_LOOP_GREEDY '):_,idx,size,blocks=l.split();selected.append({'internal_function_index':int(idx),'bytecode_size_without_locals':int(size),'MIR_blocks':int(blocks)})
 rows.append({'case':c['id'],'selected':selected})
(out/'summary.json').write_text(json.dumps(rows,indent=2));print(json.dumps(rows,indent=2))
