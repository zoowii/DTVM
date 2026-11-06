from pathlib import Path
s=''';; Mutable versions must survive non-selected side exits and join/backedges.
(module
 (func $clobber (param i64) (result i64) (i64.add (local.get 0) (i64.const 100)))
 (func (export "side_exit") (param $take i32) (result i64)
  (local $x i64) (local $y i64)
  (local.set $x (i64.const 11)) (local.set $y (i64.const 19))
  (block $exit
   (br_if $exit (local.get $take))
   (local.set $x (i64.const 37)) (local.set $y (i64.const 59)))
  (call $clobber (i64.add (i64.mul (local.get $x) (i64.const 3)) (i64.mul (local.get $y) (i64.const 5)))))
 (func (export "loop") (param $n i32) (result i64)
  (local $i i32) (local $x i64) (local $s i64)
  (local.set $x (i64.const 11))
  (loop $again
   (block $skip
    (br_if $skip (i32.and (local.get $i) (i32.const 1)))
    (local.set $x (i64.add (i64.mul (local.get $x) (i64.const 3)) (i64.const 1))))
   (local.set $s (i64.add (local.get $s) (local.get $x)))
   (br_if $again (i32.lt_u (local.tee $i (i32.add (local.get $i) (i32.const 1))) (local.get $n))))
  (call $clobber (local.get $s)))
 (func (export "alias") (param $x i64) (param $y i32) (result i64)
  (local $a i64) (local $b i32)
  (local.set $a (local.get $x))
  (block $skip
   (br_if $skip (i32.eqz (local.get $y)))
   (local.set $b (i32.add (local.get $y) (i32.const -1))))
  (i64.add (local.get $a) (i64.extend_i32_u (local.get $b))))
)
(assert_return (invoke "side_exit" (i32.const 0)) (i64.const 506))
(assert_return (invoke "side_exit" (i32.const 1)) (i64.const 228))
(assert_return (invoke "side_exit" (i32.const -1)) (i64.const 228))
'''
for n in [1,2,3,16,100]:
 x=11;total=0
 for i in range(n):
  if i%2==0:x=(x*3+1)&((1<<64)-1)
  total=(total+x)&((1<<64)-1)
 total=(total+100)&((1<<64)-1)
 if total>=(1<<63):total-=1<<64
 s+=f'(assert_return (invoke "loop" (i32.const {n})) (i64.const {total}))\n'
for x in [-1,0,4294967296,9223372036854775807]:
 for y in [-1,0,1,2147483647]:
  result=(x+(0 if y==0 else (y-1)&0xffffffff))&((1<<64)-1)
  if result>=1<<63:result-=1<<64
  s+=f'(assert_return (invoke "alias" (i64.const {x}) (i32.const {y})) (i64.const {result}))\n'
Path('tests/wast/multipass/fast_ra_regions.wast').write_text(s)
