# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
import subprocess
out=Path('work/bottleneck')
text='''(module
 (memory 1)
 (func (export "conversion_division") (local $i i32) (local $v f64)
  (loop $l
   (local.set $v (f64.div (f64.convert_i32_s (local.get $i)) (f64.const 9500)))
   (f64.store (i32.const 0) (local.get $v))
   (br_if $l (i32.lt_u (local.tee $i (i32.add (local.get $i) (i32.const 1))) (i32.const 10000000)))))
 (func (export "division_control") (local $i i32)
  (loop $l
   (f64.store (i32.const 0) (f64.div (f64.load (i32.const 8)) (f64.const 9500)))
   (br_if $l (i32.lt_u (local.tee $i (i32.add (local.get $i) (i32.const 1))) (i32.const 10000000)))))
)'''
p=out/'convert-micro.wat';p.write_text(text);subprocess.run(['wasm-as',str(p),'-o',str(p.with_suffix('.wasm'))],check=True)
for name in ['atax','bicg']:
 for phase in [False,True]:
  source=out/(name+'-phases.wat') if phase else Path('work',name+'.wat')
  text=source.read_text();extra='''
 (func (export "repeat") (param $n i32)
  (loop $l
   (call $_start)
   (br_if $l (local.tee $n (i32.sub (local.get $n) (i32.const 1))))))
'''
  text=text[:text.rfind(')')]+extra+text[text.rfind(')'):]
  p=out/(name+('-phase-repeat' if phase else '-param-repeat')+'.wat');p.write_text(text)
  subprocess.run(['wasm-as',str(p),'-o',str(p.with_suffix('.wasm'))],check=True)
