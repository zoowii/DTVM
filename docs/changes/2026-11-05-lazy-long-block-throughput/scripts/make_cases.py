"""Regenerate checksum-checked inputs with wat2wasm; run from repository root."""
import hashlib,json,subprocess
from pathlib import Path
out=Path('work/pr-complete');out.mkdir(parents=True,exist_ok=True);cases=[]
for name,n,helpers in [('hot1000',1000,1000),('hot5000',5000,5000),('hot10000',10000,10000),('call10000',10000,1)]:
 text='(module (memory 1)\n'+'\n'.join(f'(func $f{i} (result i32) (i32.const 1))' for i in range(helpers))+'\n(func (export "_start") (local $s i32)\n'+'\n'.join(f'(local.set $s (i32.add (local.get $s) (call $f{i%helpers})))' for i in range(n))+f'\n(i32.store (i32.const 0) (local.get $s))\n(if (i32.ne (i32.load (i32.const 0)) (i32.const {n})) (then (unreachable)))))\n'
 wat=out/(name+'.wat');wasm=out/(name+'.wasm');wat.write_text(text);subprocess.run(['wat2wasm',str(wat),'-o',str(wasm)],check=True);cases.append({'id':name,'wasm':str(wasm.resolve()),'kind':'wasi-main','suite':'synthetic','fairness':'same-wasm'});print(name,hashlib.sha256(wasm.read_bytes()).hexdigest())
(out/'regenerated-catalog.json').write_text(json.dumps(cases,indent=2)+'\n')
