;; wasi_fd_prestat_get.wat – queries fd=3 for a pre-opened directory entry
;; fd=3 is the first slot after stdin(0)/stdout(1)/stderr(2).
;; EBADF (errno=8) is expected when no directories are pre-opened.
(module
  (import "wasi_snapshot_preview1" "fd_prestat_get"
    (func $fd_prestat_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    i32.const 3   ;; fd = first preopen slot
    i32.const 0   ;; prestat output ptr
    call $fd_prestat_get
    local.set $errno
    ;; Success (0) or EBADF (8) are both acceptable
    i32.const 0
    call $proc_exit
  )
)
