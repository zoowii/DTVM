;; i32.div_u by a non-zero non-pow2 constant: magic-multiply strength reduction.
;; Pow2 and divisor-0 stay as udiv (trap / #626).

(module
  (func (export "div20") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 20)))
  (func (export "div10") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 10)))
  (func (export "div7") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 7)))
  (func (export "div3") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 3)))
  (func (export "div100") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 100)))
  (func (export "div_m1") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 0xffffffff)))
  (func (export "div8") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 8)))
  (func (export "div0") (param i32) (result i32)
    (i32.div_u (local.get 0) (i32.const 0)))
  (func (export "const_div20") (result i32)
    (i32.div_u (i32.const 123456) (i32.const 20)))
)

(assert_return (invoke "div20" (i32.const 0)) (i32.const 0))
(assert_return (invoke "div20" (i32.const 19)) (i32.const 0))
(assert_return (invoke "div20" (i32.const 20)) (i32.const 1))
(assert_return (invoke "div20" (i32.const 21)) (i32.const 1))
(assert_return (invoke "div20" (i32.const 399)) (i32.const 19))
(assert_return (invoke "div20" (i32.const 400)) (i32.const 20))
(assert_return (invoke "div20" (i32.const -1)) (i32.const 214748364))
(assert_return (invoke "div20" (i32.const 0x80000000)) (i32.const 107374182))

(assert_return (invoke "div10" (i32.const 0)) (i32.const 0))
(assert_return (invoke "div10" (i32.const 9)) (i32.const 0))
(assert_return (invoke "div10" (i32.const 10)) (i32.const 1))
(assert_return (invoke "div10" (i32.const -1)) (i32.const 429496729))

(assert_return (invoke "div7" (i32.const 0)) (i32.const 0))
(assert_return (invoke "div7" (i32.const 6)) (i32.const 0))
(assert_return (invoke "div7" (i32.const 7)) (i32.const 1))
(assert_return (invoke "div7" (i32.const 8)) (i32.const 1))
(assert_return (invoke "div7" (i32.const 13)) (i32.const 1))
(assert_return (invoke "div7" (i32.const 14)) (i32.const 2))
(assert_return (invoke "div7" (i32.const -1)) (i32.const 613566756))
(assert_return (invoke "div7" (i32.const 0x80000000)) (i32.const 306783378))

(assert_return (invoke "div3" (i32.const 0)) (i32.const 0))
(assert_return (invoke "div3" (i32.const 2)) (i32.const 0))
(assert_return (invoke "div3" (i32.const 3)) (i32.const 1))
(assert_return (invoke "div3" (i32.const -1)) (i32.const 1431655765))

(assert_return (invoke "div100" (i32.const 999)) (i32.const 9))
(assert_return (invoke "div100" (i32.const 1000)) (i32.const 10))
(assert_return (invoke "div100" (i32.const -1)) (i32.const 42949672))

(assert_return (invoke "div_m1" (i32.const 0)) (i32.const 0))
(assert_return (invoke "div_m1" (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_m1" (i32.const -1)) (i32.const 1))

(assert_return (invoke "div8" (i32.const 8)) (i32.const 1))
(assert_return (invoke "div8" (i32.const 15)) (i32.const 1))
(assert_return (invoke "div8" (i32.const 16)) (i32.const 2))
(assert_return (invoke "div8" (i32.const -1)) (i32.const 0x1fffffff))

(assert_return (invoke "const_div20") (i32.const 6172))

(assert_trap (invoke "div0" (i32.const 1)) "integer divide by zero")
(assert_trap (invoke "div0" (i32.const 0)) "integer divide by zero")
