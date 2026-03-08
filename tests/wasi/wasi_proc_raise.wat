;; wasi_proc_raise.wat – calls proc_raise(SIGTERM=15)
;; Execution terminates with a WASIProcRaise error (not a clean proc_exit).
(module
  (import "wasi_snapshot_preview1" "proc_raise"
    (func $proc_raise (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (func (export "_start")
    i32.const 15  ;; SIGTERM
    call $proc_raise
    drop
    ;; Should not be reached – proc_raise terminates execution
    i32.const 1
    call $proc_exit
  )
)
