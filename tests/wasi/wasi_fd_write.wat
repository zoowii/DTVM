;; WASI fd_write test
;; Tests writing "hello\n" to stdout (fd=1) using fd_write
(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  ;; "hello\n" stored at offset 0 (6 bytes)
  (data (i32.const 0) "hello\n")
  ;; iovec at offset 8: buf_ptr=0, buf_len=6
  (data (i32.const 8) "\00\00\00\00\06\00\00\00")
  (func (export "_start") (local $errno i32)
    ;; fd_write(stdout=1, iovs=8, iovs_len=1, nwritten=20)
    i32.const 1
    i32.const 8
    i32.const 1
    i32.const 20
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
