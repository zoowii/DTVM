;; Fixture for eager multipass compile-trim.
;; Function indices (no imports):
;;   0 helper         — direct callee of `used`
;;   1 used           — exported
;;   2 dead           — neither exported, started, nor table/elem
;;   3 table_target   — elem[0]; call_indirect target
;;   4 indirect       — exported; call_indirect to table_target
;;   5 boot           — start function
(module
  (type $t (func (param i32) (result i32)))
  (func $helper (type $t) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $used (export "used") (type $t) (param i32) (result i32)
    local.get 0
    call $helper)
  (func $dead (type $t) (param i32) (result i32)
    local.get 0
    i32.const 99
    i32.add)
  (func $table_target (type $t) (param i32) (result i32)
    local.get 0
    i32.const 7
    i32.add)
  (func $indirect (export "indirect") (type $t) (param i32) (result i32)
    local.get 0
    i32.const 0
    call_indirect (type $t))
  (func $boot
    nop)
  (start $boot)
  (table 1 funcref)
  (elem (i32.const 0) $table_target)
  (memory 1)
)
