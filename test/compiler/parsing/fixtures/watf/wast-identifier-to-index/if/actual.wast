(func $dummy)

(func (export "multi") (param i32) (result i32)
  (if (get_local 0) (then (call $dummy) (call $dummy) (call $dummy)))
  (if (get_local 0) (then) (else (call $dummy) (call $dummy) (call $dummy)))
  (if (result i32) (get_local 0)
    (then (call $dummy) (call $dummy) (i32.const 8))
    (else (call $dummy) (call $dummy) (i32.const 9))
  )
)
