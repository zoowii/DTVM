;; wasi_fd_fdstat_get.wat – calls fd_fdstat_get(fd=1 stdout, stat_ptr=0)
(module
  (import "wasi_snapshot_preview1" "fd_fdstat_get"
    (func $fd_fdstat_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    i32.const 1   ;; fd = stdout
    i32.const 0   ;; stat_ptr
    call $fd_fdstat_get
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
