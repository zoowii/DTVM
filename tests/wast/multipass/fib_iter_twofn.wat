;; Two-internal-function control: lazy-MT must still create the background
;; Greedy pool (tiering retained). `id` exists only to make NumInternalFunctions
;; > 1; `fib` matches fib_iter_onefn.wat.
(module
  (func (export "fib") (param $n i32) (result i32)
    (local $i i32)
    (local $a i32)
    (local $b i32)
    (local $t i32)
    (if (i32.lt_s (local.get $n) (i32.const 2))
        (then (return (local.get $n))))
    (local.set $a (i32.const 0))
    (local.set $b (i32.const 1))
    (local.set $i (i32.const 1))
    (loop $loop
      (local.set $t (i32.add (local.get $a) (local.get $b)))
      (local.set $a (local.get $b))
      (local.set $b (local.get $t))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $loop (i32.lt_s (local.get $i) (local.get $n)))
    )
    (local.get $b)
  )
  (func (export "id") (param $x i32) (result i32)
    (local.get $x)
  )
)
