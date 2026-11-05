import argparse,json,subprocess
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('count',type=int);a=p.parse_args();n=a.count
out=Path('work/iteration');name=f'hot{n}';wat=out/f'{name}.wat';wasm=out/f'{name}.wasm'
s='(module (memory 1) '+ '\n'.join(f'(func $f{i} (result i32) (i32.const 1))' for i in range(n))+'\n(func (export "_start") (local $s i32)\n '+ '\n'.join(f'(local.set $s (i32.add (local.get $s) (call $f{i})))' for i in range(n))+f'\n (i32.store (i32.const 0) (local.get $s))\n (if (i32.ne (i32.load (i32.const 0)) (i32.const {n})) (then (unreachable)))))\n'
wat.write_text(s);subprocess.run(['wat2wasm',str(wat),'-o',str(wasm)],check=True)
(out/f'{name}-catalog.json').write_text(json.dumps([{'id':name,'wasm':str(wasm.resolve()),'kind':'wasi-main','suite':'synthetic','fairness':'same-wasm'}],indent=2)+'\n')
