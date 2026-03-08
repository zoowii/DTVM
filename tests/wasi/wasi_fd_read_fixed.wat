;; wasi_fd_read_fixed.wat – fd_read(fd=0, iovs, 1, nread) with a 32-byte buffer
;; iovec at offset 8: {buf_ptr=64, buf_len=32}; nread output at offset 4
;; Errno is ignored: stdin may not be readable in a headless test environment.
(module
  (import "wasi_snapshot_preview1" "fd_read"
    (func $fd_read (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (data (i32.const 8) "\40\00\00\00\20\00\00\00") ;; iovec: {buf=64, len=32}
  (func (export "_start")
    i32.const 0   ;; fd = stdin
    i32.const 8   ;; iovs_ptr
    i32.const 1   ;; iovs_len
    i32.const 4   ;; nread_ptr
    call $fd_read
    drop          ;; ignore errno (EAGAIN/ENOTSUP acceptable)
    i32.const 0
    call $proc_exit
  )
)
