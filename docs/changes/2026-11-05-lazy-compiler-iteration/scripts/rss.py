import importlib.util,json,os,resource,time,random,tempfile
from pathlib import Path
root=Path.cwd();sp=importlib.util.spec_from_file_location('h',root/'benchmarks/paper/harness/run.py');h=importlib.util.module_from_spec(sp);sp.loader.exec_module(h)
cs=h.load_cases(h.read_json(h.CATALOG_PATH))+json.loads((root/'work/shortcase/synthetic-catalog.json').read_text());cs=[c for c in cs if c['id'] in ['echo','tpl','hot1000']];rng=random.Random(20261112);rows=[]
for c in cs:
 for rnd in range(-1,9):
  order=['base','reuse-safe'];rng.shuffle(order)
  for v in order:
   b=root/'work/iteration'/('dtvm-'+v);cmd=['taskset','-c','0']+h.dtvm_cmd(b,c,'lazy-G-MT',False)
   with tempfile.TemporaryFile() as input_file:
    input_file.write((c.get('stdin') or '').encode());input_file.seek(0);start=time.perf_counter_ns();pid=os.fork()
    if pid==0:
     os.chdir(h.case_cwd(c));os.dup2(input_file.fileno(),0);fd=os.open(os.devnull,os.O_WRONLY);os.dup2(fd,1);os.dup2(fd,2);os.execvp(cmd[0],cmd)
    _,status,usage=os.wait4(pid,0);code=os.waitstatus_to_exitcode(status);assert code==0,(c['id'],v,code)
    rows.append({'case':c['id'],'variant':v,'round':rnd,'maxrss_kib':usage.ru_maxrss,'wall_ms':(time.perf_counter_ns()-start)/1e6,'exit':code})
(root/'work/iteration/rss.json').write_text(json.dumps(rows,indent=2))
