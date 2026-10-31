;; Barrier for the WASM linear-memory base pointer cached in
;; FunctionMirBuilder::$MemoryBaseIdx.
;;
;; After a callee memory.grow the caller must not keep using a pre-call
;; host pointer. Multipass reloads MemoryBaseOffset in handleCallBase.
;; (Mmap-bucket grow may keep the same pointer, so this is a semantic
;; lock, not a proof that CSE across the call was skipped.)
;;
;; See docs/notes/2026-10-31-wasm-memory-base-cse-barriers.md.

(module
  (memory 1)

  (func $grow_one (result i32)
    (memory.grow (i32.const 1)))

  ;; Store/load in the page the callee just added (offset 65536).
  (func (export "store_after_callee_grow") (result i32)
    (drop (call $grow_one))
    (i32.store (i32.const 65536) (i32.const 42))
    (i32.load (i32.const 65536)))
)

(assert_return (invoke "store_after_callee_grow") (i32.const 42))

(module
  (memory 1)

  ;; Same-function grow is a separate reload in handleMemoryGrow.
  (func (export "store_after_self_grow") (result i32)
    (drop (memory.grow (i32.const 1)))
    (i32.store (i32.const 65536) (i32.const 7))
    (i32.load (i32.const 65536)))
)

(assert_return (invoke "store_after_self_grow") (i32.const 7))

(module
  (memory 1)

  ;; Call-free nested loads: one entry cache, then dread across BBs.
  (func (export "loop_loads") (param $n i32) (result i32)
    (local $i i32)
    (local $acc i32)
    (i32.store (i32.const 0) (i32.const 1))
    (loop $l
      (local.set $acc
        (i32.add (local.get $acc) (i32.load (i32.const 0))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n))))
    (local.get $acc))
)

(assert_return (invoke "loop_loads" (i32.const 4)) (i32.const 4))
