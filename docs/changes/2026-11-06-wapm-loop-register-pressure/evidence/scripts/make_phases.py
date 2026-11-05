from pathlib import Path
import subprocess,hashlib,json
root=Path('work/wapm-followup');text=Path('work/shortcase/pi.wat').read_text()
pos=text.index(' (global ');text=text[:pos]+' (import "wasi_unstable" "clock_time_get" (func $phase_clock (param i32 i64 i32) (result i32)))\n (global $phase_last (mut i64) (i64.const 0))\n (global $phase_kernel (mut i64) (i64.const 0))\n (global $phase_prime (mut i64) (i64.const 0))\n'+text[pos:]
a=text.index(' (func $2 ');b=text.index('\n (func ',a+2);body=text[a:b]
for needle,mark,after in [('    (loop $label$5\n',0,True),('     (loop $label$38\n',1,False),('     (br_if $label$5\n',2,False)]:
 assert body.count(needle)==1,(needle,body.count(needle));call='     (call $phase_tick (i32.const '+str(mark)+'))\n';body=body.replace(needle,needle+call if after else call+needle)
needle='   (drop\n    (call $18\n';assert body.count(needle)==1;body=body.replace(needle,'   (call $phase_finish)\n'+needle);text=text[:a]+body+text[b:]
helper='''
 (func $phase_tick (param $kind i32) (local $now i64)
  (if (call $phase_clock (i32.const 1) (i64.const 1) (i32.const 16)) (then (unreachable)))
  (local.set $now (i64.load (i32.const 16)))
  (if (i32.eq (local.get $kind) (i32.const 1))
   (then (global.set $phase_kernel (i64.add (global.get $phase_kernel) (i64.sub (local.get $now) (global.get $phase_last))))))
  (if (i32.eq (local.get $kind) (i32.const 2))
   (then (global.set $phase_prime (i64.add (global.get $phase_prime) (i64.sub (local.get $now) (global.get $phase_last))))))
  (global.set $phase_last (local.get $now)))
 (func $phase_finish
  (i64.store (i32.const 16) (global.get $phase_kernel))
  (i64.store (i32.const 24) (global.get $phase_prime))
  (i32.store (i32.const 32) (i32.const 16))
  (i32.store (i32.const 36) (i32.const 16))
  (if (call $fimport$10 (i32.const 2) (i32.const 32) (i32.const 1) (i32.const 48)) (then (unreachable))))
'''
text=text[:text.rfind(')')]+helper+text[text.rfind(')'):];p=root/'pi-phases.wat';p.write_text(text);subprocess.run(['wasm-as',str(p),'-o',str(p.with_suffix('.wasm'))],check=True)
(root/'phase-input.json').write_text(json.dumps({'diagnostic_only':True,'source':'work/shortcase/pi.wat','source_sha256':hashlib.sha256(Path('work/shortcase/pi.wat').read_bytes()).hexdigest(),'output_sha256':hashlib.sha256(p.with_suffix('.wasm').read_bytes()).hexdigest(),'scratch_range':[16,52],'boundaries':['outer prime contribution: modular arithmetic and fmod','find next prime: square root and divisibility loop'],'note':'Clock calls per outer iteration; helper compilation included in initial intervals. Excludes parsing, initial log and printing. Never pool with canonical end-to-end timings.'},indent=2))
