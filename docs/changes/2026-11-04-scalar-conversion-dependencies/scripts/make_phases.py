# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
import subprocess,hashlib,json
out=Path('work/bottleneck'); out.mkdir(parents=True,exist_ok=True); info={}
for name in ['atax','bicg']:
 source=Path('work',name+'.wat'); source.parent.mkdir(exist_ok=True)
 subprocess.run(['wasm-dis',str(Path('benchmarks/paper/benchmarks/polybenchc')/(name+'.wasm')),'-o',str(source)],check=True)
 text=source.read_text()
 imp=' (import "wasi_snapshot_preview1" "clock_time_get" (func $research_clock (param i32 i64 i32) (result i32)))\n'
 pos=text.index(' (global '); text=text[:pos]+imp+text[pos:]
 a=text.index(' (func $main ');b=text.index('\n (func ',a+2); body=text[a:b]
 # Names refer to original Binaryen disassembly; assert every boundary unique.
 marks=[('  (global.set $global$0',16),('  (local.set $12\n   (i32.const 0)',24)]
 # Output begins with fwrite after the numeric kernel; both modules use this.
 dump='  (drop\n   (call $fwrite\n    (i32.const 1024)'
 marks.append((dump,32))
 for needle,addr in marks:
  assert body.count(needle)==(2 if addr==16 else 1),(name,needle,body.count(needle))
  body=body.replace(needle,f'  (call $research_mark (i32.const {addr}))\n'+needle,1)
 end='  (i32.const 0)\n )';assert body.endswith(end+'\n') or body.endswith(end)
 idx=body.rfind(end);body=body[:idx]+'  (call $research_finish)\n'+body[idx:]
 text=text[:a]+body+text[b:]
 helper='''
 (func $research_mark (param $p i32)
  (if (call $research_clock (i32.const 1) (i64.const 1) (local.get $p))
   (then (unreachable))))
 (func $research_finish
  (call $research_mark (i32.const 40))
  (i32.store (i32.const 48) (i32.const 16))
  (i32.store (i32.const 52) (i32.const 32))
  (if (call $__wasi_fd_write (i32.const 1) (i32.const 48) (i32.const 1) (i32.const 56))
   (then (unreachable))))
'''
 text=text[:text.rfind(')')]+helper+text[text.rfind(')'):]
 wat=out/(name+'-phases.wat'); wasm=wat.with_suffix('.wasm');wat.write_text(text)
 subprocess.run(['wasm-as',str(wat),'-o',str(wasm)],check=True)
 info[name]={'source_wat_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'diagnostic_sha256':hashlib.sha256(wasm.read_bytes()).hexdigest(),'scratch_bytes':[16,60],'boundaries':['main entry','allocation and initialization complete','numeric kernel complete','printing and free complete'],'note':'Derived diagnostic input with extra WASI clock import. Not canonical end-to-end evidence.'}
(out/'phase-inputs.json').write_text(json.dumps(info,indent=2))
