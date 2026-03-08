;; wasi_args_get.wat – calls args_sizes_get then args_get
;; Memory layout: [0]=argc, [4]=buf_size, [16..]=argv_ptrs, [256..]=argv_buf
(module
  (import "wasi_snapshot_preview1" "args_sizes_get"
    (func $args_sizes_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "args_get"
    (func $args_get (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func (export "_start") (local $errno i32)
    ;; args_sizes_get(argc_ptr=0, buf_size_ptr=4)
    i32.const 0
    i32.const 4
    call $args_sizes_get
    local.set $errno
    local.get $errno
    if
      i32.const 1
      call $proc_exit
    end
    ;; args_get(argv_ptrs=16, argv_buf=256)
    i32.const 16
    i32.const 256
    call $args_get
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
