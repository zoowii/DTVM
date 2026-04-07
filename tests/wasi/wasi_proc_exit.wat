;; WASI proc_exit test
;; Tests that proc_exit terminates the module with exit code 0
(module
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (func (export "_start")
    i32.const 0
    call $proc_exit
  )
)
