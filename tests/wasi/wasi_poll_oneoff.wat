;; wasi_poll_oneoff.wat – poll_oneoff with one CLOCK_REALTIME subscription
;; Subscription layout (48 bytes) at offset 0:
;;   [0..8)  : userdata = 42
;;   [8]     : tag = 0 (CLOCK)
;;   [9..16) : padding
;;   [16..20): clockid = 0 (CLOCK_REALTIME)
;;   [20..24): padding
;;   [24..32): timeout = 1_000_000 ns (1 ms, relative)
;;   [32..40): precision = 0
;;   [40..42): flags = 0
;;   [42..48): padding
;; Events output at offset 256; nevents output at offset 512
(module
  (import "wasi_snapshot_preview1" "poll_oneoff"
    (func $poll_oneoff (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit"
    (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  ;; Subscription data initialised at runtime via data segment
  (func (export "_start") (local $errno i32)
    i32.const 0    ;; in_ptr  (subscription)
    i32.const 256  ;; out_ptr (events)
    i32.const 1    ;; nsubscriptions
    i32.const 512  ;; nevents_ptr
    call $poll_oneoff
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
