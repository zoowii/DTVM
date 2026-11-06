from pathlib import Path
p=Path('tests/wast/multipass/logic_zero_flags.wast');s=';; Logic flags must match CMP(result, 0), including CF/OF for signed/unsigned predicates.\n(module\n'
ops={'and':lambda a,b:a&b,'or':lambda a,b:a|b,'xor':lambda a,b:a^b};preds=['eq','ne','lt_s','le_s','gt_s','ge_s','lt_u','le_u','gt_u','ge_u'];assertions=[]
for width in [32,64]:
 ty=f'i{width}';mask=(1<<width)-1
 for op,fn in ops.items():
  for pred in preds:
   name=f'{ty}_{op}_{pred}'
   s+=f' (func (export "{name}") (param {ty} {ty}) (result i32)\n  (block $taken (br_if $taken ({ty}.{pred} ({ty}.{op} (local.get 0) (local.get 1)) ({ty}.const 0))) (return (i32.const 19))) (i32.const 37))\n'
   for a,b in [(0,0),(1,1),(-1,-2),(1<<(width-1),-2),((1<<(width-1))-1,17),(-1,1),(5,5)]:
    raw=fn(a&mask,b&mask)&mask;sv=raw-(1<<width) if raw>>(width-1) else raw
    value=sv if pred.endswith('_s') else raw
    cmp={'eq':raw==0,'ne':raw!=0,'lt_s':value<0,'le_s':value<=0,'gt_s':value>0,'ge_s':value>=0,'lt_u':value<0,'le_u':value<=0,'gt_u':value>0,'ge_u':value>=0}[pred]
    assertions.append(f'(assert_return (invoke "{name}" ({ty}.const {a}) ({ty}.const {b})) (i32.const {37 if cmp else 19}))')
s+=''' (func (export "cached") (param $x i32) (param $m i32) (param $n i32) (result i32)
 (local $v i32) (local $noise i32)
 (local.set $v (i32.and (local.get $x) (local.get $m)))
 (local.set $noise (i32.or (local.get $n) (i32.const 16)))
 (i32.add (if (result i32) (i32.eqz (local.get $v)) (then (i32.const 37)) (else (i32.const 19))) (local.get $noise)))
 (func (export "trap") (param i32 i32) (result i32)
 (i32.eqz (i32.and (i32.div_u (local.get 0) (local.get 1)) (i32.const 7)))))
'''
assertions+=['(assert_return (invoke "cached" (i32.const 0) (i32.const 7) (i32.const 1)) (i32.const 54))','(assert_return (invoke "cached" (i32.const 3) (i32.const 7) (i32.const 1)) (i32.const 36))','(assert_trap (invoke "trap" (i32.const 1) (i32.const 0)) "integer divide by zero")']
p.write_text(s+'\n'.join(assertions)+'\n')
