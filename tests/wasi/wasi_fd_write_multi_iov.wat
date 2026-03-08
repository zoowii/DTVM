;; wasi_fd_write_multi_iov.wat – fd_write with 2 iovecs: "hello " + "world\n"
;; "hello " at offset 0 (6 bytes)
;; "world\n" at offset 8 (6 bytes)
;; iovec1 at offset 16: {buf=0, len=6}
;; iovec2 at offset 24: {buf=8, len=6}
;; nwritten at offset 32
(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (data (i32.const 0)  "hello ")
  (data (i32.const 8)  "world\n")
  (data (i32.const 16) "\00\00\00\00\06\00\00\00") ;; iovec1: {buf=0, len=6}
  (data (i32.const 24) "\08\00\00\00\06\00\00\00") ;; iovec2: {buf=8, len=6}
  (func (export "_start") (local $errno i32)
    i32.const 1   ;; fd = stdout
    i32.const 16  ;; iovs_ptr
    i32.const 2   ;; iovs_len
    i32.const 32  ;; nwritten_ptr
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
