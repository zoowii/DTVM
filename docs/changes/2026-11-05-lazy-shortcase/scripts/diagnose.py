# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
import importlib.util,json,subprocess,os,time
from pathlib import Path
root=Path.cwd();sp=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(sp);sp.loader.exec_module(h)
out=root/'work/shortcase/diagnostics';out.mkdir(exist_ok=True);rows=[]
for c in h.load_cases(h.read_json(h.CATALOG_PATH)):
 if c['id'] not in ['echo','md5','pi','base64cli','cowsay','tpl','fib_iter_dev']:continue
 for mode in ['lazy-G-MT','lazy-F-ST']:
  folder=out/(c['id']+'.'+mode);folder.mkdir(exist_ok=True);cmd=['taskset','-c','0']+h.dtvm_cmd(root/'work/shortcase/dtvm-trace',c,mode,False)
  env=os.environ.copy();env['DTVM_TRACE_DIR']=str(folder);start=time.perf_counter_ns();r=subprocess.run(cmd,cwd=h.case_cwd(c),input=c.get('stdin'),text=True,capture_output=True,env=env,timeout=30);end=time.perf_counter_ns();assert r.returncode==0,(c['id'],mode,r.stderr[-100:]);(folder/'stderr').write_text(r.stderr);(folder/'stdout').write_text(r.stdout)
  phases={};ra=[];front=[];funcs=[]
  for l in r.stderr.splitlines():
   if l.startswith('SHORT_PHASE '):_,k,t=l.split();phases[k]=int(t)
   elif l.startswith('SHORT_RA '):ra.append(list(map(int,l.split()[1:])))
   elif l.startswith('SHORT_FRONT '):front.append(list(map(int,l.split()[1:])))
   elif l.startswith('SHORT_COMPILE '):v=l.split()[1:];funcs.append([*map(int,v[:-1]),v[-1]])
  row={'case':c['id'],'mode':mode,'exit':r.returncode,'cmd':cmd,'wall_ms':(end-start)/1e6,'phases_ns':phases,'ra':ra,'front':front,'compile':funcs};rows.append(row)
  vals=list(phases.items());d={k:round((t-(vals[i-1][1] if i else start))/1e6,3) for i,(k,t) in enumerate(vals)}
  print(c['id'],mode,d,'FG',sum(f[1] for f in funcs),'BG',sum(not f[1] for f in funcs),flush=True)
(out/'samples.json').write_text(json.dumps(rows,indent=2))
