import json,os,subprocess,time
from pathlib import Path
root=Path.cwd();wt=root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'
for case in ['floyd-warshall','nussinov']:
 out=root/'work/pr642'/('wt-word-live-'+case);out.mkdir(exist_ok=True)
 with (out/'stderr.txt').open('wb') as err:
  p=subprocess.Popen(['taskset','-c','0',str(wt),'run','-C','cache=n','--profile=perfmap',str(root/f'benchmarks/paper/benchmarks/polybenchc/{case}.wasm')],stdout=subprocess.DEVNULL,stderr=err)
  captured=False;mapping=Path('/tmp')/f'perf-{p.pid}.map'
  while p.poll() is None:
   if mapping.exists() and not captured:
    text=mapping.read_text();lines=text.splitlines()
    if any('main' in s for s in lines):
     (out/'perf.map').write_text(text);entries=[]
     with Path(f'/proc/{p.pid}/mem').open('rb',buffering=0) as memory:
      for n,line in enumerate(lines):
       addr,size,name=line.split(' ',2)
       if 'main' in name:
        address=int(addr,16);length=int(size,16);memory.seek(address);data=memory.read(length)
        path=out/f'code-{n}.bin';path.write_bytes(data);entries.append({'address':addr,'size':length,'name':name,'file':path.name})
     (out/'captures.json').write_text(json.dumps(entries,indent=2));captured=True
   time.sleep(.01)
  assert p.wait()==0
 assert captured
 import gzip,hashlib
 content=(out/'stderr.txt').read_bytes()
 with gzip.open(out/'stderr.gz','wb') as z:z.write(content)
 (out/'stderr.txt').unlink()
 print(case,'live code captured',captured,'matrix_sha256',hashlib.sha256(content).hexdigest(),flush=True)
