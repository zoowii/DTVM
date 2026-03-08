;; WASI environ_sizes_get test
;; Tests that environ_sizes_get returns success (errno=0)
(module
  (import "wasi_snapshot_preview1" "environ_sizes_get"
    (func $environ_sizes_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    ;; environ_sizes_get(environ_count_ptr=0, environ_buf_size_ptr=4)
    i32.const 0
    i32.const 4
    call $environ_sizes_get
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
