;; Single-internal-function iterative Fibonacci. Used as the lazy-Greedy
;; on-demand litmus: FastRA spills loop-carried locals; Greedy does not.
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
)
