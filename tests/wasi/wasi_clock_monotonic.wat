;; wasi_clock_monotonic.wat – clock_time_get(CLOCK_MONOTONIC=1, precision=0)
(module
  (import "wasi_snapshot_preview1" "clock_time_get"
    (func $clock_time_get (param i32 i64 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    i32.const 1   ;; clockid = CLOCK_MONOTONIC
    i64.const 0   ;; precision = 0
    i32.const 0   ;; timestamp output ptr
    call $clock_time_get
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
