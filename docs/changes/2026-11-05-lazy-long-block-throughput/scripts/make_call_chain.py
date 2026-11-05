from pathlib import Path
import json,subprocess
out=Path('work/pr-complete');n=10000
s='(module (memory 1) (func $one (result i32) i32.const 1) (func (export "_start") (local $s i32)\n'+ '(local.set $s (i32.add (local.get $s) (call $one)))\n'*n+f'(i32.store (i32.const 0) (local.get $s)) (if (i32.ne (i32.load (i32.const 0)) (i32.const {n})) (then unreachable))))\n'
wat=out/'call10000.wat';wasm=out/'call10000.wasm';wat.write_text(s);subprocess.run(['wat2wasm',str(wat),'-o',str(wasm)],check=True)
cases=json.loads(Path('work/iteration/stress-catalog.json').read_text());cases+=json.loads(Path('work/iteration/hot5000-catalog.json').read_text());cases.append({'id':'call10000','wasm':str(wasm.resolve()),'kind':'wasi-main','suite':'synthetic','fairness':'same-wasm'});(out/'synthetic-catalog.json').write_text(json.dumps(cases,indent=2)+'\n')
