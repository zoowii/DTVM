;; Wasm addressing: wrap32(base) first, then unbounded memarg offset.
;; Folding i32.add x, C into [zext(x) + (N+C)] is not equivalent:
;;   extra OOB when x+C wraps to an in-bounds address;
;;   missed OOB if C+N is combined as a wrapping i32 address.
;; Scale stays 1 (see getMemoryLocation). No CGIR [base+disp] fold.

(module
  (memory 1)
  (data (i32.const 0) "\aa")
  (data (i32.const 16) "\bb")

  ;; wrap(0xfffffff0 + 0x10) = 0; load byte 0. A 64-bit add fold would OOB-trap.
  (func (export "wrap_add_to_zero") (result i32)
    (i32.load8_u offset=0
      (i32.add (i32.const 0xfffffff0) (i32.const 0x10))))

  (func (export "wrap_add_to_zero_dyn") (param i32) (result i32)
    (i32.load8_u offset=0
      (i32.add (local.get 0) (i32.const 0x10))))

  ;; wrap(0xfffffff0 + 0x20) = 0x10; load byte 16.
  (func (export "wrap_add_to_sixteen_dyn") (param i32) (result i32)
    (i32.load8_u offset=0
      (i32.add (local.get 0) (i32.const 0x20))))

  ;; wrap(0xfffffff0+0x8)=0xfffffff8, + offset 0x10 = 0x100000008 → OOB.
  ;; Combining C+N as a wrapping i32 address would yield 0x8 and wrongly load.
  (func (export "add_imm_then_offset_oob") (result i32)
    (i32.load offset=0x10
      (i32.add (i32.const 0xfffffff0) (i32.const 0x8))))

  (func (export "add_imm_then_offset_oob_dyn") (param i32) (result i32)
    (i32.load offset=0x10
      (i32.add (local.get 0) (i32.const 0x8))))

  ;; No wrap: addend 12 + offset 4 = address 16. Safe-looking fold candidate.
  (func (export "no_wrap_add_imm") (param i32) (result i32)
    (i32.load8_u offset=4
      (i32.add (local.get 0) (i32.const 12))))

  ;; Store through a wrapping add must hit address 0, not 2^32.
  (func (export "wrap_store_to_zero") (param i32)
    (i32.store8 offset=0
      (i32.add (local.get 0) (i32.const 0x10))
      (i32.const 0xcc)))

  (func (export "load0") (result i32)
    (i32.load8_u (i32.const 0)))
)

(assert_return (invoke "wrap_add_to_zero") (i32.const 0xaa))
(assert_return (invoke "wrap_add_to_zero_dyn" (i32.const 0xfffffff0)) (i32.const 0xaa))
(assert_return (invoke "wrap_add_to_sixteen_dyn" (i32.const 0xfffffff0)) (i32.const 0xbb))
(assert_trap (invoke "add_imm_then_offset_oob") "out of bounds memory access")
(assert_trap (invoke "add_imm_then_offset_oob_dyn" (i32.const 0xfffffff0)) "out of bounds memory access")
(assert_return (invoke "no_wrap_add_imm" (i32.const 0)) (i32.const 0xbb))
(assert_return (invoke "wrap_store_to_zero" (i32.const 0xfffffff0)))
(assert_return (invoke "load0") (i32.const 0xcc))
