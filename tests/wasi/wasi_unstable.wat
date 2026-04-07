;; wasi_unstable.wat – test legacy module name aliasing
;; Imports proc_exit from "wasi_unstable" instead of "wasi_snapshot_preview1".
;; DTVM maps wasi_unstable -> wasi_snapshot_preview1 at runtime.
(module
  (import "wasi_unstable" "proc_exit" (func $proc_exit (param i32)))
  (func (export "_start")
    i32.const 0
    call $proc_exit
  )
)
