;; wasi_fd_write.wat – writes "hello\n" to stdout, exits 0 on success
;; Memory layout:
;;   [0..6)  : "hello\n"
;;   [8..16) : iovec = {buf_ptr=0, buf_len=6}
;;   [20]    : nwritten output
(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (data (i32.const 0) "hello\n")
  (data (i32.const 8) "\00\00\00\00\06\00\00\00")  ;; iovec: {buf=0, len=6}
  (func (export "_start") (local $errno i32)
    i32.const 1   ;; fd = stdout
    i32.const 8   ;; iovs_ptr
    i32.const 1   ;; iovs_len
    i32.const 20  ;; nwritten_ptr
    call $fd_write
    local.set $errno
    local.get $errno
    if
      i32.const 1
      call $proc_exit
    end
    i32.const 0
    call $proc_exit
  )
)
