;; WASI clock_res_get test
;; Tests that clock_res_get returns success (errno=0) for CLOCK_REALTIME
(module
  (import "wasi_snapshot_preview1" "clock_res_get"
    (func $clock_res_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    ;; clock_res_get(clockid=0 (CLOCK_REALTIME), resolution_ptr=0)
    i32.const 0
    i32.const 0
    call $clock_res_get
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
