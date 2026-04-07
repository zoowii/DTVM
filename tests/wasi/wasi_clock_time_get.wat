;; WASI clock_time_get test
;; Tests that clock_time_get returns success (errno=0)
;; Uses CLOCK_REALTIME (id=0) with 1ms precision
(module
  (import "wasi_snapshot_preview1" "clock_time_get"
    (func $clock_time_get (param i32 i64 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    ;; clock_time_get(clockid=0, precision=1000000, timestamp_ptr=0)
    i32.const 0
    i64.const 1000000
    i32.const 0
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
