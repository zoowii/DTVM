;; testcase for too deep nested blocks(nested block > 1024)

(assert_invalid
(module
  (func (export "test") (result i32)
        (local i32)
        (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block
            (block (drop (i32.add (local.get 0) (i32.const 1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

        (i32.const 1))
)
 "error_code: 10050\nerror_msg: WasmBlockNestedTooDeep")

