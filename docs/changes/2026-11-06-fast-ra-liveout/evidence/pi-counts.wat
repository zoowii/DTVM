(module
 (type $0 (func (param i32 i32 i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32) (result i32)))
 (type $3 (func))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i64 i32) (result i64)))
 (type $6 (func (param i32 i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i64 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $9 (func (param i32 i32 i32)))
 (type $10 (func (result i32)))
 (type $11 (func (param f64 i32) (result f64)))
 (type $12 (func (param f64 f64) (result f64)))
 (type $13 (func (param f64) (result f64)))
 (import "wasi_unstable" "fd_prestat_get" (func $fimport$0 (param i32 i32) (result i32)))
 (import "wasi_unstable" "fd_prestat_dir_name" (func $fimport$1 (param i32 i32 i32) (result i32)))
 (import "wasi_unstable" "environ_sizes_get" (func $fimport$2 (param i32 i32) (result i32)))
 (import "wasi_unstable" "environ_get" (func $fimport$3 (param i32 i32) (result i32)))
 (import "wasi_unstable" "args_sizes_get" (func $fimport$4 (param i32 i32) (result i32)))
 (import "wasi_unstable" "args_get" (func $fimport$5 (param i32 i32) (result i32)))
 (import "wasi_unstable" "proc_exit" (func $fimport$6 (param i32)))
 (import "wasi_unstable" "fd_fdstat_get" (func $fimport$7 (param i32 i32) (result i32)))
 (import "wasi_unstable" "fd_close" (func $fimport$8 (param i32) (result i32)))
 (import "wasi_unstable" "fd_seek" (func $fimport$9 (param i32 i64 i32 i32) (result i32)))
 (import "wasi_unstable" "fd_write" (func $fimport$10 (param i32 i32 i32 i32) (result i32)))
 (global $research_calls (mut i64) (i64.const 0))
 (global $research_steps (mut i64) (i64.const 0))
 (global $global$0 (mut i32) (i32.const 70896))
 (memory $0 2)
 (data $0 (i32.const 1024) "Decimal digits of pi at position %d: %09d\n\00This program computes the n\'th decimal digit of \\pi\nusage: pi n , where n is the digit you want\00\00\00\00\00\00\00\19\12D;\02?,G\14=30\n\1b\06FKE7\0fI\0e\17\03@\1d<+6\1fJ-\1c\01 %)!\08\0c\15\16\".\108>\0b41\18/A\t9\11#C2B:\05\04&(\'\r*\1e5\07\1aH\13$L\ff\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00No error information\00\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\00\00\19\00\n\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\t\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\n\19\19\19\03\n\07\00\01\1b\t\0b\18\00\00\t\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\n\r\19\19\19\00\r\00\00\02\00\t\0e\00\00\00\t\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\t\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\t\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\t\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\t\16\00\00\00\00\00\16\00\00\16\00\00Support for formatting long double values is currently disabled.\nTo enable it, add -lc-printscan-long-double to the link command.\n\00\00\00\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00")
 (data $1 (i32.const 3520) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 5112) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\e0\0f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\13\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\03\00\00\00\f8\0f\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00p\14\00\00")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $27 $38 $26 $32)
 (export "memory" (memory $0))
 (export "_start" (func $1))
 (func $0
 )
 (func $1
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (global.set $global$0
   (local.tee $0
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (call $12)
  (local.set $1
   (i32.const 3)
  )
  (block $label$1
   (loop $label$2
    (br_if $label$1
     (i32.gt_u
      (local.tee $2
       (call $fimport$0
        (local.get $1)
        (local.get $0)
       )
      )
      (i32.const 8)
     )
    )
    (block $label$3
     (block $label$4
      (br_table $label$4 $label$1 $label$1 $label$1 $label$1 $label$1 $label$1 $label$1 $label$3 $label$4
       (local.get $2)
      )
     )
     (block $label$5
      (br_if $label$5
       (i32.load8_u
        (local.get $0)
       )
      )
      (br_if $label$1
       (i32.eqz
        (local.tee $2
         (call $3
          (i32.add
           (i32.load offset=4
            (local.get $0)
           )
           (i32.const 1)
          )
         )
        )
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (call $fimport$1
          (local.get $1)
          (local.get $2)
          (i32.load offset=4
           (local.get $0)
          )
         )
        )
       )
       (call $5
        (local.get $2)
       )
       (br $label$1)
      )
      (i32.store8
       (i32.add
        (local.get $2)
        (i32.load offset=4
         (local.get $0)
        )
       )
       (i32.const 0)
      )
      (local.set $3
       (call $13
        (local.get $1)
        (local.get $2)
       )
      )
      (call $5
       (local.get $2)
      )
      (br_if $label$1
       (local.get $3)
      )
     )
     (local.set $3
      (i32.lt_u
       (local.tee $2
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.get $1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br_if $label$2
      (i32.eqz
       (local.get $3)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (block $label$9
      (br_if $label$9
       (call $fimport$2
        (local.get $0)
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
      (i32.store offset=4024
       (i32.const 0)
       (call $3
        (i32.add
         (i32.shl
          (i32.load
           (local.get $0)
          )
          (i32.const 2)
         )
         (i32.const 4)
        )
       )
      )
      (br_if $label$9
       (i32.eqz
        (local.tee $1
         (call $3
          (i32.load offset=12
           (local.get $0)
          )
         )
        )
       )
      )
      (br_if $label$9
       (i32.eqz
        (local.tee $2
         (i32.load offset=4024
          (i32.const 0)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $2)
        (i32.shl
         (i32.load
          (local.get $0)
         )
         (i32.const 2)
        )
       )
       (i32.const 0)
      )
      (br_if $label$9
       (call $fimport$3
        (i32.load offset=4024
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (br_if $label$8
       (call $fimport$4
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
        (local.get $0)
       )
      )
      (block $label$10
       (block $label$11
        (br_if $label$11
         (local.tee $1
          (i32.load offset=12
           (local.get $0)
          )
         )
        )
        (br $label$10)
       )
       (local.set $1
        (call $3
         (i32.add
          (i32.shl
           (local.get $1)
           (i32.const 2)
          )
          (i32.const 4)
         )
        )
       )
       (local.set $2
        (call $3
         (i32.load
          (local.get $0)
         )
        )
       )
       (br_if $label$8
        (i32.eqz
         (local.get $1)
        )
       )
       (br_if $label$8
        (i32.eqz
         (local.get $2)
        )
       )
       (i32.store
        (local.get $1)
        (i32.const 0)
       )
       (br_if $label$8
        (call $fimport$5
         (local.get $1)
         (local.get $2)
        )
       )
      )
      (call $0)
      (local.set $1
       (call $2
        (i32.load offset=12
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (call $16)
      (br_if $label$7
       (local.get $1)
      )
      (global.set $global$0
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
      (return)
     )
     (call $8
      (i32.const 71)
     )
     (unreachable)
    )
    (call $8
     (i32.const 71)
    )
    (unreachable)
   )
   (call $8
    (local.get $1)
   )
   (unreachable)
  )
  (call $8
   (i32.const 71)
  )
  (unreachable)
 )
 (func $2 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (global.set $global$0
   (local.tee $2
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (local.get $0)
     (i32.const 2)
    )
   )
   (br_if $label$1
    (i32.le_s
     (local.tee $3
      (call $47
       (i32.load offset=4
        (local.get $1)
       )
      )
     )
     (i32.const 0)
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (f64.lt
        (f64.abs
         (local.tee $4
          (f64.div
           (f64.mul
            (f64.convert_i32_s
             (i32.add
              (local.get $3)
              (i32.const 20)
             )
            )
            (f64.const 2.302585092994046)
           )
           (f64.const 0.6931471805599453)
          )
         )
        )
        (f64.const 2147483648)
       )
      )
     )
     (local.set $5
      (i32.trunc_f64_s
       (local.get $4)
      )
     )
     (br $label$2)
    )
    (local.set $5
     (i32.const -2147483648)
    )
   )
   (local.set $1
    (i32.const 0)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_s
      (local.get $5)
      (i32.const 2)
     )
    )
    (local.set $6
     (i32.add
      (local.get $3)
      (i32.const -1)
     )
    )
    (local.set $8
     (call $52
      (f64.convert_i32_s
       (local.tee $7
        (i32.shl
         (local.get $5)
         (i32.const 1)
        )
       )
      )
     )
    )
    (local.set $9
     (f64.const 0)
    )
    (local.set $10
     (i32.const 3)
    )
    (loop $label$5
     (block $label$6
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (f64.lt
          (f64.abs
           (local.tee $4
            (f64.div
             (local.get $8)
             (call $52
              (local.tee $11
               (f64.convert_i32_s
                (local.get $10)
               )
              )
             )
            )
           )
          )
          (f64.const 2147483648)
         )
        )
       )
       (local.set $12
        (i32.trunc_f64_s
         (local.get $4)
        )
       )
       (br $label$6)
      )
      (local.set $12
       (i32.const -2147483648)
      )
     )
     (local.set $13
      (i32.const 1)
     )
     (local.set $14
      (i32.const 1)
     )
     (block $label$8
      (br_if $label$8
       (i32.lt_s
        (local.get $12)
        (i32.const 1)
       )
      )
      (local.set $14
       (i32.const 1)
      )
      (local.set $1
       (local.get $12)
      )
      (loop $label$9
       (local.set $14
        (i32.mul
         (local.get $14)
         (local.get $10)
        )
       )
       (br_if $label$9
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const -1)
         )
        )
       )
      )
     )
     (local.set $15
      (f64.convert_i32_s
       (local.get $14)
      )
     )
     (local.set $16
      (i32.const 0)
     )
     (local.set $17
      (i32.const 0)
     )
     (local.set $18
      (i32.const 1)
     )
     (local.set $19
      (i32.const 1)
     )
     (local.set $20
      (i32.const 1)
     )
     (local.set $21
      (i32.const 1)
     )
     (loop $label$10
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i32.ge_s
          (local.get $18)
          (local.get $10)
         )
        )
        (local.set $1
         (local.get $19)
        )
        (br $label$11)
       )
       (local.set $1
        (local.get $19)
       )
       (loop $label$13
        (local.set $17
         (i32.add
          (local.get $17)
          (i32.const -1)
         )
        )
        (br_if $label$13
         (i32.eqz
          (i32.rem_s
           (local.tee $1
            (i32.div_s
             (local.get $1)
             (local.get $10)
            )
           )
           (local.get $10)
          )
         )
        )
       )
       (local.set $18
        (i32.const 0)
       )
      )
      (local.set $0
       (i32.shl
        (local.get $19)
        (i32.const 1)
       )
      )
      (local.set $22
       (i32.lt_s
        (local.get $13)
        (local.get $10)
       )
      )
      (block $label$14
       (block $label$15
        (br_if $label$15
         (i32.eqz
          (f64.lt
           (f64.abs
            (local.tee $4
             (call $51
              (f64.mul
               (f64.convert_i32_s
                (local.get $21)
               )
               (f64.convert_i32_s
                (local.get $1)
               )
              )
              (local.get $15)
             )
            )
           )
           (f64.const 2147483648)
          )
         )
        )
        (local.set $21
         (i32.trunc_f64_s
          (local.get $4)
         )
        )
        (br $label$14)
       )
       (local.set $21
        (i32.const -2147483648)
       )
      )
      (local.set $1
       (i32.add
        (local.get $0)
        (i32.const -1)
       )
      )
      (block $label$16
       (br_if $label$16
        (local.get $22)
       )
       (block $label$17
        (br_if $label$17
         (i32.ne
          (local.get $13)
          (local.get $10)
         )
        )
        (loop $label$18
         (local.set $17
          (i32.add
           (local.get $17)
           (i32.const 1)
          )
         )
         (br_if $label$18
          (i32.eqz
           (i32.rem_s
            (local.tee $1
             (i32.div_s
              (local.get $1)
              (local.get $10)
             )
            )
            (local.get $10)
           )
          )
         )
        )
       )
       (local.set $13
        (i32.sub
         (local.get $13)
         (local.get $10)
        )
       )
      )
      (local.set $0
       (i32.lt_s
        (local.get $17)
        (i32.const 1)
       )
      )
      (block $label$19
       (block $label$20
        (br_if $label$20
         (i32.eqz
          (f64.lt
           (f64.abs
            (local.tee $4
             (call $51
              (f64.mul
               (f64.convert_i32_s
                (local.get $20)
               )
               (f64.convert_i32_s
                (local.get $1)
               )
              )
              (local.get $15)
             )
            )
           )
           (f64.const 2147483648)
          )
         )
        )
        (local.set $20
         (i32.trunc_f64_s
          (local.get $4)
         )
        )
        (br $label$19)
       )
       (local.set $20
        (i32.const -2147483648)
       )
      )
      (block $label$21
       (br_if $label$21
        (local.get $0)
       )
       (local.set $23
        (i32.const 1)
       )
       (local.set $24
        (i32.const 0)
       )
       (local.set $0
        (local.get $14)
       )
       (local.set $1
        (local.get $20)
       )
       (loop $label$22
        (local.set $22
         (i32.sub
          (local.get $0)
          (i32.mul
           (local.tee $25
            (i32.div_s
             (local.get $0)
             (local.get $1)
            )
           )
           (local.get $1)
          )
         )
        )
        (local.set $23
         (i32.sub
          (local.get $24)
          (i32.mul
           (local.get $25)
           (local.tee $26
            (local.get $23)
           )
          )
         )
        )
        (local.set $0
         (local.get $1)
        )
        (local.set $24
         (local.get $26)
        )
        (local.set $1
         (local.get $22)
        )
        (br_if $label$22
         (local.get $22)
        )
       )
       (block $label$23
        (block $label$24
         (br_if $label$24
          (i32.eqz
           (f64.lt
            (f64.abs
             (local.tee $4
              (call $51
               (f64.mul
                (f64.convert_i32_s
                 (local.get $21)
                )
                (f64.convert_i32_s
                 (i32.add
                  (i32.and
                   (i32.shr_s
                    (local.tee $1
                     (i32.rem_s
                      (local.get $26)
                      (local.get $14)
                     )
                    )
                    (i32.const 31)
                   )
                   (local.get $14)
                  )
                  (local.get $1)
                 )
                )
               )
               (local.get $15)
              )
             )
            )
            (f64.const 2147483648)
           )
          )
         )
         (local.set $1
          (i32.trunc_f64_s
           (local.get $4)
          )
         )
         (br $label$23)
        )
        (local.set $1
         (i32.const -2147483648)
        )
       )
       (block $label$25
        (block $label$26
         (br_if $label$26
          (i32.eqz
           (f64.lt
            (f64.abs
             (local.tee $4
              (call $51
               (f64.mul
                (f64.convert_i32_s
                 (local.get $19)
                )
                (f64.convert_i32_s
                 (local.get $1)
                )
               )
               (local.get $15)
              )
             )
            )
            (f64.const 2147483648)
           )
          )
         )
         (local.set $0
          (i32.trunc_f64_s
           (local.get $4)
          )
         )
         (br $label$25)
        )
        (local.set $0
         (i32.const -2147483648)
        )
       )
       (block $label$27
        (br_if $label$27
         (i32.ge_s
          (local.get $17)
          (local.get $12)
         )
        )
        (local.set $1
         (i32.sub
          (local.get $12)
          (local.get $17)
         )
        )
        (loop $label$28
         (local.set $1
          (i32.add
           (local.get $1)
           (i32.const -1)
          )
         )
         (block $label$29
          (block $label$30
           (br_if $label$30
            (i32.eqz
             (f64.lt
              (f64.abs
               (local.tee $4
                (call $51
                 (f64.mul
                  (local.get $11)
                  (f64.convert_i32_s
                   (local.get $0)
                  )
                 )
                 (local.get $15)
                )
               )
              )
              (f64.const 2147483648)
             )
            )
           )
           (local.set $0
            (i32.trunc_f64_s
             (local.get $4)
            )
           )
           (br $label$29)
          )
          (local.set $0
           (i32.const -2147483648)
          )
         )
         (br_if $label$28
          (local.get $1)
         )
        )
       )
       (local.set $16
        (i32.sub
         (local.tee $1
          (i32.add
           (local.get $0)
           (local.get $16)
          )
         )
         (select
          (i32.const 0)
          (local.get $14)
          (i32.lt_s
           (local.get $1)
           (local.get $14)
          )
         )
        )
       )
      )
      (local.set $18
       (i32.add
        (local.get $18)
        (i32.const 1)
       )
      )
      (local.set $13
       (i32.add
        (local.get $13)
        (i32.const 2)
       )
      )
      (local.set $1
       (i32.ne
        (local.get $19)
        (local.get $5)
       )
      )
      (local.set $19
       (i32.add
        (local.get $19)
        (i32.const 1)
       )
      )
      (br_if $label$10
       (local.get $1)
      )
     )
     (local.set $0
      (i32.const 10)
     )
     (local.set $22
      (i32.const 1)
     )
     (local.set $1
      (local.get $6)
     )
     (loop $label$31
      (block $label$32
       (br_if $label$32
        (i32.eqz
         (i32.and
          (local.get $1)
          (i32.const 1)
         )
        )
       )
       (block $label$33
        (br_if $label$33
         (i32.eqz
          (f64.lt
           (f64.abs
            (local.tee $4
             (call $51
              (f64.mul
               (f64.convert_i32_s
                (local.get $22)
               )
               (f64.convert_i32_s
                (local.get $0)
               )
              )
              (local.get $15)
             )
            )
           )
           (f64.const 2147483648)
          )
         )
        )
        (local.set $22
         (i32.trunc_f64_s
          (local.get $4)
         )
        )
        (br $label$32)
       )
       (local.set $22
        (i32.const -2147483648)
       )
      )
      (block $label$34
       (br_if $label$34
        (i32.eqz
         (local.tee $1
          (i32.shr_s
           (local.get $1)
           (i32.const 1)
          )
         )
        )
       )
       (block $label$35
        (br_if $label$35
         (i32.eqz
          (f64.lt
           (f64.abs
            (local.tee $4
             (call $51
              (f64.mul
               (local.tee $4
                (f64.convert_i32_s
                 (local.get $0)
                )
               )
               (local.get $4)
              )
              (local.get $15)
             )
            )
           )
           (f64.const 2147483648)
          )
         )
        )
        (local.set $0
         (i32.trunc_f64_s
          (local.get $4)
         )
        )
        (br $label$31)
       )
       (local.set $0
        (i32.const -2147483648)
       )
       (br $label$31)
      )
     )
     (block $label$36
      (block $label$37
       (br_if $label$37
        (i32.eqz
         (f64.lt
          (f64.abs
           (local.tee $4
            (call $51
             (f64.mul
              (f64.convert_i32_s
               (local.get $16)
              )
              (f64.convert_i32_s
               (local.get $22)
              )
             )
             (local.get $15)
            )
           )
          )
          (f64.const 2147483648)
         )
        )
       )
       (local.set $1
        (i32.trunc_f64_s
         (local.get $4)
        )
       )
       (br $label$36)
      )
      (local.set $1
       (i32.const -2147483648)
      )
     )
     (local.set $9
      (call $51
       (f64.add
        (local.get $9)
        (f64.div
         (f64.convert_i32_s
          (local.get $1)
         )
         (local.get $15)
        )
       )
       (f64.const 1)
      )
     )
     (loop $label$38
      (br_if $label$38
       (i32.eqz
        (i32.and
         (local.tee $10
          (i32.add
           (local.tee $17
            (local.get $10)
           )
           (i32.const 1)
          )
         )
         (i32.const 1)
        )
       )
      )
      (block $label$39
       (block $label$40
        (br_if $label$40
         (i32.eqz
          (f64.lt
           (f64.abs
            (local.tee $4
             (f64.sqrt
              (f64.convert_i32_s
               (local.get $10)
              )
             )
            )
           )
           (f64.const 2147483648)
          )
         )
        )
        (local.set $22
         (i32.trunc_f64_s
          (local.get $4)
         )
        )
        (br $label$39)
       )
       (local.set $22
        (i32.const -2147483648)
       )
      )
      (block $label$41
       (br_if $label$41
        (i32.lt_s
         (local.get $22)
         (i32.const 3)
        )
       )
       (local.set $1
        (i32.const 3)
       )
       (loop $label$42
        (local.set $0
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (br_if $label$38
         (i32.eqz
          (i32.rem_s
           (local.get $10)
           (local.get $1)
          )
         )
        )
        (local.set $1
         (local.get $0)
        )
        (br_if $label$42
         (i32.le_s
          (local.get $0)
          (local.get $22)
         )
        )
       )
      )
     )
     (br_if $label$5
      (i32.lt_s
       (local.get $17)
       (local.get $7)
      )
     )
    )
    (block $label$43
     (br_if $label$43
      (i32.eqz
       (f64.lt
        (f64.abs
         (local.tee $4
          (f64.mul
           (local.get $9)
           (f64.const 1e9)
          )
         )
        )
        (f64.const 2147483648)
       )
      )
     )
     (local.set $1
      (i32.trunc_f64_s
       (local.get $4)
      )
     )
     (br $label$4)
    )
    (local.set $1
     (i32.const -2147483648)
    )
   )
   (i32.store offset=4
    (local.get $2)
    (local.get $1)
   )
   (i32.store
    (local.get $2)
    (local.get $3)
   )
   (call $research_counts_finish)
   (drop
    (call $18
     (i32.const 1024)
     (local.get $2)
    )
   )
   (global.set $global$0
    (i32.add
     (local.get $2)
     (i32.const 16)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $34
    (i32.const 1067)
   )
  )
  (call $17
   (i32.const 1)
  )
  (unreachable)
 )
 (func $3 (param $0 i32) (result i32)
  (call $4
   (local.get $0)
  )
 )
 (func $4 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (global.set $global$0
   (local.tee $1
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (block $label$9
           (block $label$10
            (block $label$11
             (block $label$12
              (br_if $label$12
               (i32.gt_u
                (local.get $0)
                (i32.const 244)
               )
              )
              (block $label$13
               (br_if $label$13
                (i32.eqz
                 (i32.and
                  (local.tee $0
                   (i32.shr_u
                    (local.tee $2
                     (i32.load offset=3520
                      (i32.const 0)
                     )
                    )
                    (local.tee $4
                     (i32.shr_u
                      (local.tee $3
                       (select
                        (i32.const 16)
                        (i32.and
                         (i32.add
                          (local.get $0)
                          (i32.const 11)
                         )
                         (i32.const -8)
                        )
                        (i32.lt_u
                         (local.get $0)
                         (i32.const 11)
                        )
                       )
                      )
                      (i32.const 3)
                     )
                    )
                   )
                  )
                  (i32.const 3)
                 )
                )
               )
               (local.set $0
                (i32.add
                 (local.tee $4
                  (i32.load
                   (i32.add
                    (local.tee $5
                     (i32.shl
                      (local.tee $3
                       (i32.add
                        (i32.and
                         (i32.xor
                          (local.get $0)
                          (i32.const -1)
                         )
                         (i32.const 1)
                        )
                        (local.get $4)
                       )
                      )
                      (i32.const 3)
                     )
                    )
                    (i32.const 3568)
                   )
                  )
                 )
                 (i32.const 8)
                )
               )
               (block $label$14
                (block $label$15
                 (br_if $label$15
                  (i32.ne
                   (local.tee $6
                    (i32.load offset=8
                     (local.get $4)
                    )
                   )
                   (local.tee $5
                    (i32.add
                     (local.get $5)
                     (i32.const 3560)
                    )
                   )
                  )
                 )
                 (i32.store offset=3520
                  (i32.const 0)
                  (i32.and
                   (local.get $2)
                   (i32.rotl
                    (i32.const -2)
                    (local.get $3)
                   )
                  )
                 )
                 (br $label$14)
                )
                (drop
                 (i32.gt_u
                  (i32.load offset=3536
                   (i32.const 0)
                  )
                  (local.get $6)
                 )
                )
                (i32.store offset=8
                 (local.get $5)
                 (local.get $6)
                )
                (i32.store offset=12
                 (local.get $6)
                 (local.get $5)
                )
               )
               (i32.store offset=4
                (local.get $4)
                (i32.or
                 (local.tee $6
                  (i32.shl
                   (local.get $3)
                   (i32.const 3)
                  )
                 )
                 (i32.const 3)
                )
               )
               (i32.store offset=4
                (local.tee $4
                 (i32.add
                  (local.get $4)
                  (local.get $6)
                 )
                )
                (i32.or
                 (i32.load offset=4
                  (local.get $4)
                 )
                 (i32.const 1)
                )
               )
               (br $label$1)
              )
              (br_if $label$11
               (i32.le_u
                (local.get $3)
                (local.tee $7
                 (i32.load offset=3528
                  (i32.const 0)
                 )
                )
               )
              )
              (block $label$16
               (br_if $label$16
                (i32.eqz
                 (local.get $0)
                )
               )
               (block $label$17
                (block $label$18
                 (br_if $label$18
                  (i32.ne
                   (local.tee $0
                    (i32.load offset=8
                     (local.tee $4
                      (i32.load
                       (i32.add
                        (local.tee $5
                         (i32.shl
                          (local.tee $6
                           (i32.add
                            (i32.or
                             (i32.or
                              (i32.or
                               (i32.or
                                (local.tee $6
                                 (i32.and
                                  (i32.shr_u
                                   (local.tee $4
                                    (i32.shr_u
                                     (local.tee $0
                                      (i32.add
                                       (i32.and
                                        (local.tee $0
                                         (i32.and
                                          (i32.shl
                                           (local.get $0)
                                           (local.get $4)
                                          )
                                          (i32.or
                                           (local.tee $0
                                            (i32.shl
                                             (i32.const 2)
                                             (local.get $4)
                                            )
                                           )
                                           (i32.sub
                                            (i32.const 0)
                                            (local.get $0)
                                           )
                                          )
                                         )
                                        )
                                        (i32.sub
                                         (i32.const 0)
                                         (local.get $0)
                                        )
                                       )
                                       (i32.const -1)
                                      )
                                     )
                                     (local.tee $0
                                      (i32.and
                                       (i32.shr_u
                                        (local.get $0)
                                        (i32.const 12)
                                       )
                                       (i32.const 16)
                                      )
                                     )
                                    )
                                   )
                                   (i32.const 5)
                                  )
                                  (i32.const 8)
                                 )
                                )
                                (local.get $0)
                               )
                               (local.tee $4
                                (i32.and
                                 (i32.shr_u
                                  (local.tee $0
                                   (i32.shr_u
                                    (local.get $4)
                                    (local.get $6)
                                   )
                                  )
                                  (i32.const 2)
                                 )
                                 (i32.const 4)
                                )
                               )
                              )
                              (local.tee $4
                               (i32.and
                                (i32.shr_u
                                 (local.tee $0
                                  (i32.shr_u
                                   (local.get $0)
                                   (local.get $4)
                                  )
                                 )
                                 (i32.const 1)
                                )
                                (i32.const 2)
                               )
                              )
                             )
                             (local.tee $4
                              (i32.and
                               (i32.shr_u
                                (local.tee $0
                                 (i32.shr_u
                                  (local.get $0)
                                  (local.get $4)
                                 )
                                )
                                (i32.const 1)
                               )
                               (i32.const 1)
                              )
                             )
                            )
                            (i32.shr_u
                             (local.get $0)
                             (local.get $4)
                            )
                           )
                          )
                          (i32.const 3)
                         )
                        )
                        (i32.const 3568)
                       )
                      )
                     )
                    )
                   )
                   (local.tee $5
                    (i32.add
                     (local.get $5)
                     (i32.const 3560)
                    )
                   )
                  )
                 )
                 (i32.store offset=3520
                  (i32.const 0)
                  (local.tee $2
                   (i32.and
                    (local.get $2)
                    (i32.rotl
                     (i32.const -2)
                     (local.get $6)
                    )
                   )
                  )
                 )
                 (br $label$17)
                )
                (drop
                 (i32.gt_u
                  (i32.load offset=3536
                   (i32.const 0)
                  )
                  (local.get $0)
                 )
                )
                (i32.store offset=8
                 (local.get $5)
                 (local.get $0)
                )
                (i32.store offset=12
                 (local.get $0)
                 (local.get $5)
                )
               )
               (local.set $0
                (i32.add
                 (local.get $4)
                 (i32.const 8)
                )
               )
               (i32.store offset=4
                (local.get $4)
                (i32.or
                 (local.get $3)
                 (i32.const 3)
                )
               )
               (i32.store
                (i32.add
                 (local.get $4)
                 (local.tee $6
                  (i32.shl
                   (local.get $6)
                   (i32.const 3)
                  )
                 )
                )
                (local.tee $6
                 (i32.sub
                  (local.get $6)
                  (local.get $3)
                 )
                )
               )
               (i32.store offset=4
                (local.tee $5
                 (i32.add
                  (local.get $4)
                  (local.get $3)
                 )
                )
                (i32.or
                 (local.get $6)
                 (i32.const 1)
                )
               )
               (block $label$19
                (br_if $label$19
                 (i32.eqz
                  (local.get $7)
                 )
                )
                (local.set $3
                 (i32.add
                  (i32.shl
                   (local.tee $8
                    (i32.shr_u
                     (local.get $7)
                     (i32.const 3)
                    )
                   )
                   (i32.const 3)
                  )
                  (i32.const 3560)
                 )
                )
                (local.set $4
                 (i32.load offset=3540
                  (i32.const 0)
                 )
                )
                (block $label$20
                 (block $label$21
                  (br_if $label$21
                   (i32.and
                    (local.get $2)
                    (local.tee $8
                     (i32.shl
                      (i32.const 1)
                      (local.get $8)
                     )
                    )
                   )
                  )
                  (i32.store offset=3520
                   (i32.const 0)
                   (i32.or
                    (local.get $2)
                    (local.get $8)
                   )
                  )
                  (local.set $8
                   (local.get $3)
                  )
                  (br $label$20)
                 )
                 (local.set $8
                  (i32.load offset=8
                   (local.get $3)
                  )
                 )
                )
                (i32.store offset=12
                 (local.get $8)
                 (local.get $4)
                )
                (i32.store offset=8
                 (local.get $3)
                 (local.get $4)
                )
                (i32.store offset=12
                 (local.get $4)
                 (local.get $3)
                )
                (i32.store offset=8
                 (local.get $4)
                 (local.get $8)
                )
               )
               (i32.store offset=3540
                (i32.const 0)
                (local.get $5)
               )
               (i32.store offset=3528
                (i32.const 0)
                (local.get $6)
               )
               (br $label$1)
              )
              (br_if $label$11
               (i32.eqz
                (local.tee $9
                 (i32.load offset=3524
                  (i32.const 0)
                 )
                )
               )
              )
              (local.set $4
               (i32.sub
                (i32.and
                 (i32.load offset=4
                  (local.tee $5
                   (i32.load
                    (i32.add
                     (i32.shl
                      (i32.add
                       (i32.or
                        (i32.or
                         (i32.or
                          (i32.or
                           (local.tee $6
                            (i32.and
                             (i32.shr_u
                              (local.tee $4
                               (i32.shr_u
                                (local.tee $0
                                 (i32.add
                                  (i32.and
                                   (local.get $9)
                                   (i32.sub
                                    (i32.const 0)
                                    (local.get $9)
                                   )
                                  )
                                  (i32.const -1)
                                 )
                                )
                                (local.tee $0
                                 (i32.and
                                  (i32.shr_u
                                   (local.get $0)
                                   (i32.const 12)
                                  )
                                  (i32.const 16)
                                 )
                                )
                               )
                              )
                              (i32.const 5)
                             )
                             (i32.const 8)
                            )
                           )
                           (local.get $0)
                          )
                          (local.tee $4
                           (i32.and
                            (i32.shr_u
                             (local.tee $0
                              (i32.shr_u
                               (local.get $4)
                               (local.get $6)
                              )
                             )
                             (i32.const 2)
                            )
                            (i32.const 4)
                           )
                          )
                         )
                         (local.tee $4
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $0)
                              (local.get $4)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 2)
                          )
                         )
                        )
                        (local.tee $4
                         (i32.and
                          (i32.shr_u
                           (local.tee $0
                            (i32.shr_u
                             (local.get $0)
                             (local.get $4)
                            )
                           )
                           (i32.const 1)
                          )
                          (i32.const 1)
                         )
                        )
                       )
                       (i32.shr_u
                        (local.get $0)
                        (local.get $4)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.const 3824)
                    )
                   )
                  )
                 )
                 (i32.const -8)
                )
                (local.get $3)
               )
              )
              (local.set $6
               (local.get $5)
              )
              (block $label$22
               (loop $label$23
                (block $label$24
                 (br_if $label$24
                  (local.tee $0
                   (i32.load offset=16
                    (local.get $6)
                   )
                  )
                 )
                 (br_if $label$22
                  (i32.eqz
                   (local.tee $0
                    (i32.load
                     (i32.add
                      (local.get $6)
                      (i32.const 20)
                     )
                    )
                   )
                  )
                 )
                )
                (local.set $4
                 (select
                  (local.tee $6
                   (i32.sub
                    (i32.and
                     (i32.load offset=4
                      (local.get $0)
                     )
                     (i32.const -8)
                    )
                    (local.get $3)
                   )
                  )
                  (local.get $4)
                  (local.tee $6
                   (i32.lt_u
                    (local.get $6)
                    (local.get $4)
                   )
                  )
                 )
                )
                (local.set $5
                 (select
                  (local.get $0)
                  (local.get $5)
                  (local.get $6)
                 )
                )
                (local.set $6
                 (local.get $0)
                )
                (br $label$23)
               )
              )
              (local.set $10
               (i32.load offset=24
                (local.get $5)
               )
              )
              (block $label$25
               (br_if $label$25
                (i32.eq
                 (local.tee $8
                  (i32.load offset=12
                   (local.get $5)
                  )
                 )
                 (local.get $5)
                )
               )
               (block $label$26
                (br_if $label$26
                 (i32.gt_u
                  (i32.load offset=3536
                   (i32.const 0)
                  )
                  (local.tee $0
                   (i32.load offset=8
                    (local.get $5)
                   )
                  )
                 )
                )
                (drop
                 (i32.ne
                  (i32.load offset=12
                   (local.get $0)
                  )
                  (local.get $5)
                 )
                )
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $0)
                (local.get $8)
               )
               (br $label$2)
              )
              (block $label$27
               (br_if $label$27
                (local.tee $0
                 (i32.load
                  (local.tee $6
                   (i32.add
                    (local.get $5)
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (br_if $label$10
                (i32.eqz
                 (local.tee $0
                  (i32.load offset=16
                   (local.get $5)
                  )
                 )
                )
               )
               (local.set $6
                (i32.add
                 (local.get $5)
                 (i32.const 16)
                )
               )
              )
              (loop $label$28
               (local.set $11
                (local.get $6)
               )
               (br_if $label$28
                (local.tee $0
                 (i32.load
                  (local.tee $6
                   (i32.add
                    (local.tee $8
                     (local.get $0)
                    )
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (local.set $6
                (i32.add
                 (local.get $8)
                 (i32.const 16)
                )
               )
               (br_if $label$28
                (local.tee $0
                 (i32.load offset=16
                  (local.get $8)
                 )
                )
               )
              )
              (i32.store
               (local.get $11)
               (i32.const 0)
              )
              (br $label$2)
             )
             (local.set $3
              (i32.const -1)
             )
             (br_if $label$11
              (i32.gt_u
               (local.get $0)
               (i32.const -65)
              )
             )
             (local.set $3
              (i32.and
               (local.tee $0
                (i32.add
                 (local.get $0)
                 (i32.const 11)
                )
               )
               (i32.const -8)
              )
             )
             (br_if $label$11
              (i32.eqz
               (local.tee $7
                (i32.load offset=3524
                 (i32.const 0)
                )
               )
              )
             )
             (local.set $11
              (i32.const 0)
             )
             (block $label$29
              (br_if $label$29
               (i32.eqz
                (local.tee $0
                 (i32.shr_u
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
              (local.set $11
               (i32.const 31)
              )
              (br_if $label$29
               (i32.gt_u
                (local.get $3)
                (i32.const 16777215)
               )
              )
              (local.set $11
               (i32.add
                (i32.or
                 (i32.shl
                  (local.tee $0
                   (i32.sub
                    (i32.shr_u
                     (i32.shl
                      (local.tee $6
                       (i32.shl
                        (local.tee $0
                         (i32.shl
                          (local.get $0)
                          (local.tee $4
                           (i32.and
                            (i32.shr_u
                             (i32.add
                              (local.get $0)
                              (i32.const 1048320)
                             )
                             (i32.const 16)
                            )
                            (i32.const 8)
                           )
                          )
                         )
                        )
                        (local.tee $0
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $0)
                            (i32.const 520192)
                           )
                           (i32.const 16)
                          )
                          (i32.const 4)
                         )
                        )
                       )
                      )
                      (local.tee $6
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.get $6)
                          (i32.const 245760)
                         )
                         (i32.const 16)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                     (i32.const 15)
                    )
                    (i32.or
                     (i32.or
                      (local.get $0)
                      (local.get $4)
                     )
                     (local.get $6)
                    )
                   )
                  )
                  (i32.const 1)
                 )
                 (i32.and
                  (i32.shr_u
                   (local.get $3)
                   (i32.add
                    (local.get $0)
                    (i32.const 21)
                   )
                  )
                  (i32.const 1)
                 )
                )
                (i32.const 28)
               )
              )
             )
             (local.set $6
              (i32.sub
               (i32.const 0)
               (local.get $3)
              )
             )
             (block $label$30
              (block $label$31
               (block $label$32
                (block $label$33
                 (br_if $label$33
                  (local.tee $4
                   (i32.load
                    (i32.add
                     (i32.shl
                      (local.get $11)
                      (i32.const 2)
                     )
                     (i32.const 3824)
                    )
                   )
                  )
                 )
                 (local.set $0
                  (i32.const 0)
                 )
                 (local.set $8
                  (i32.const 0)
                 )
                 (br $label$32)
                )
                (local.set $5
                 (i32.shl
                  (local.get $3)
                  (select
                   (i32.const 0)
                   (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                     (local.get $11)
                     (i32.const 1)
                    )
                   )
                   (i32.eq
                    (local.get $11)
                    (i32.const 31)
                   )
                  )
                 )
                )
                (local.set $0
                 (i32.const 0)
                )
                (local.set $8
                 (i32.const 0)
                )
                (loop $label$34
                 (block $label$35
                  (br_if $label$35
                   (i32.ge_u
                    (local.tee $2
                     (i32.sub
                      (i32.and
                       (i32.load offset=4
                        (local.get $4)
                       )
                       (i32.const -8)
                      )
                      (local.get $3)
                     )
                    )
                    (local.get $6)
                   )
                  )
                  (local.set $6
                   (local.get $2)
                  )
                  (local.set $8
                   (local.get $4)
                  )
                  (br_if $label$35
                   (local.get $2)
                  )
                  (local.set $6
                   (i32.const 0)
                  )
                  (local.set $8
                   (local.get $4)
                  )
                  (local.set $0
                   (local.get $4)
                  )
                  (br $label$31)
                 )
                 (local.set $0
                  (select
                   (select
                    (local.get $0)
                    (local.tee $2
                     (i32.load
                      (i32.add
                       (local.get $4)
                       (i32.const 20)
                      )
                     )
                    )
                    (i32.eq
                     (local.get $2)
                     (local.tee $4
                      (i32.load
                       (i32.add
                        (i32.add
                         (local.get $4)
                         (i32.and
                          (i32.shr_u
                           (local.get $5)
                           (i32.const 29)
                          )
                          (i32.const 4)
                         )
                        )
                        (i32.const 16)
                       )
                      )
                     )
                    )
                   )
                   (local.get $0)
                   (local.get $2)
                  )
                 )
                 (local.set $5
                  (i32.shl
                   (local.get $5)
                   (i32.ne
                    (local.get $4)
                    (i32.const 0)
                   )
                  )
                 )
                 (br_if $label$34
                  (local.get $4)
                 )
                )
               )
               (block $label$36
                (br_if $label$36
                 (i32.or
                  (local.get $0)
                  (local.get $8)
                 )
                )
                (br_if $label$11
                 (i32.eqz
                  (local.tee $0
                   (i32.and
                    (i32.or
                     (local.tee $0
                      (i32.shl
                       (i32.const 2)
                       (local.get $11)
                      )
                     )
                     (i32.sub
                      (i32.const 0)
                      (local.get $0)
                     )
                    )
                    (local.get $7)
                   )
                  )
                 )
                )
                (local.set $0
                 (i32.load
                  (i32.add
                   (i32.shl
                    (i32.add
                     (i32.or
                      (i32.or
                       (i32.or
                        (i32.or
                         (local.tee $5
                          (i32.and
                           (i32.shr_u
                            (local.tee $4
                             (i32.shr_u
                              (local.tee $0
                               (i32.add
                                (i32.and
                                 (local.get $0)
                                 (i32.sub
                                  (i32.const 0)
                                  (local.get $0)
                                 )
                                )
                                (i32.const -1)
                               )
                              )
                              (local.tee $0
                               (i32.and
                                (i32.shr_u
                                 (local.get $0)
                                 (i32.const 12)
                                )
                                (i32.const 16)
                               )
                              )
                             )
                            )
                            (i32.const 5)
                           )
                           (i32.const 8)
                          )
                         )
                         (local.get $0)
                        )
                        (local.tee $4
                         (i32.and
                          (i32.shr_u
                           (local.tee $0
                            (i32.shr_u
                             (local.get $4)
                             (local.get $5)
                            )
                           )
                           (i32.const 2)
                          )
                          (i32.const 4)
                         )
                        )
                       )
                       (local.tee $4
                        (i32.and
                         (i32.shr_u
                          (local.tee $0
                           (i32.shr_u
                            (local.get $0)
                            (local.get $4)
                           )
                          )
                          (i32.const 1)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                      (local.tee $4
                       (i32.and
                        (i32.shr_u
                         (local.tee $0
                          (i32.shr_u
                           (local.get $0)
                           (local.get $4)
                          )
                         )
                         (i32.const 1)
                        )
                        (i32.const 1)
                       )
                      )
                     )
                     (i32.shr_u
                      (local.get $0)
                      (local.get $4)
                     )
                    )
                    (i32.const 2)
                   )
                   (i32.const 3824)
                  )
                 )
                )
               )
               (br_if $label$30
                (i32.eqz
                 (local.get $0)
                )
               )
              )
              (loop $label$37
               (local.set $5
                (i32.lt_u
                 (local.tee $2
                  (i32.sub
                   (i32.and
                    (i32.load offset=4
                     (local.get $0)
                    )
                    (i32.const -8)
                   )
                   (local.get $3)
                  )
                 )
                 (local.get $6)
                )
               )
               (block $label$38
                (br_if $label$38
                 (local.tee $4
                  (i32.load offset=16
                   (local.get $0)
                  )
                 )
                )
                (local.set $4
                 (i32.load
                  (i32.add
                   (local.get $0)
                   (i32.const 20)
                  )
                 )
                )
               )
               (local.set $6
                (select
                 (local.get $2)
                 (local.get $6)
                 (local.get $5)
                )
               )
               (local.set $8
                (select
                 (local.get $0)
                 (local.get $8)
                 (local.get $5)
                )
               )
               (local.set $0
                (local.get $4)
               )
               (br_if $label$37
                (local.get $4)
               )
              )
             )
             (br_if $label$11
              (i32.eqz
               (local.get $8)
              )
             )
             (br_if $label$11
              (i32.ge_u
               (local.get $6)
               (i32.sub
                (i32.load offset=3528
                 (i32.const 0)
                )
                (local.get $3)
               )
              )
             )
             (local.set $11
              (i32.load offset=24
               (local.get $8)
              )
             )
             (block $label$39
              (br_if $label$39
               (i32.eq
                (local.tee $5
                 (i32.load offset=12
                  (local.get $8)
                 )
                )
                (local.get $8)
               )
              )
              (block $label$40
               (br_if $label$40
                (i32.gt_u
                 (i32.load offset=3536
                  (i32.const 0)
                 )
                 (local.tee $0
                  (i32.load offset=8
                   (local.get $8)
                  )
                 )
                )
               )
               (drop
                (i32.ne
                 (i32.load offset=12
                  (local.get $0)
                 )
                 (local.get $8)
                )
               )
              )
              (i32.store offset=8
               (local.get $5)
               (local.get $0)
              )
              (i32.store offset=12
               (local.get $0)
               (local.get $5)
              )
              (br $label$3)
             )
             (block $label$41
              (br_if $label$41
               (local.tee $0
                (i32.load
                 (local.tee $4
                  (i32.add
                   (local.get $8)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (br_if $label$9
               (i32.eqz
                (local.tee $0
                 (i32.load offset=16
                  (local.get $8)
                 )
                )
               )
              )
              (local.set $4
               (i32.add
                (local.get $8)
                (i32.const 16)
               )
              )
             )
             (loop $label$42
              (local.set $2
               (local.get $4)
              )
              (br_if $label$42
               (local.tee $0
                (i32.load
                 (local.tee $4
                  (i32.add
                   (local.tee $5
                    (local.get $0)
                   )
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (local.set $4
               (i32.add
                (local.get $5)
                (i32.const 16)
               )
              )
              (br_if $label$42
               (local.tee $0
                (i32.load offset=16
                 (local.get $5)
                )
               )
              )
             )
             (i32.store
              (local.get $2)
              (i32.const 0)
             )
             (br $label$3)
            )
            (block $label$43
             (br_if $label$43
              (i32.lt_u
               (local.tee $0
                (i32.load offset=3528
                 (i32.const 0)
                )
               )
               (local.get $3)
              )
             )
             (local.set $4
              (i32.load offset=3540
               (i32.const 0)
              )
             )
             (block $label$44
              (block $label$45
               (br_if $label$45
                (i32.lt_u
                 (local.tee $6
                  (i32.sub
                   (local.get $0)
                   (local.get $3)
                  )
                 )
                 (i32.const 16)
                )
               )
               (i32.store offset=4
                (local.tee $5
                 (i32.add
                  (local.get $4)
                  (local.get $3)
                 )
                )
                (i32.or
                 (local.get $6)
                 (i32.const 1)
                )
               )
               (i32.store offset=3528
                (i32.const 0)
                (local.get $6)
               )
               (i32.store offset=3540
                (i32.const 0)
                (local.get $5)
               )
               (i32.store
                (i32.add
                 (local.get $4)
                 (local.get $0)
                )
                (local.get $6)
               )
               (i32.store offset=4
                (local.get $4)
                (i32.or
                 (local.get $3)
                 (i32.const 3)
                )
               )
               (br $label$44)
              )
              (i32.store offset=4
               (local.get $4)
               (i32.or
                (local.get $0)
                (i32.const 3)
               )
              )
              (i32.store offset=4
               (local.tee $0
                (i32.add
                 (local.get $4)
                 (local.get $0)
                )
               )
               (i32.or
                (i32.load offset=4
                 (local.get $0)
                )
                (i32.const 1)
               )
              )
              (i32.store offset=3540
               (i32.const 0)
               (i32.const 0)
              )
              (i32.store offset=3528
               (i32.const 0)
               (i32.const 0)
              )
             )
             (local.set $0
              (i32.add
               (local.get $4)
               (i32.const 8)
              )
             )
             (br $label$1)
            )
            (block $label$46
             (br_if $label$46
              (i32.le_u
               (local.tee $5
                (i32.load offset=3532
                 (i32.const 0)
                )
               )
               (local.get $3)
              )
             )
             (i32.store offset=4
              (local.tee $4
               (i32.add
                (local.tee $0
                 (i32.load offset=3544
                  (i32.const 0)
                 )
                )
                (local.get $3)
               )
              )
              (i32.or
               (local.tee $6
                (i32.sub
                 (local.get $5)
                 (local.get $3)
                )
               )
               (i32.const 1)
              )
             )
             (i32.store offset=3532
              (i32.const 0)
              (local.get $6)
             )
             (i32.store offset=3544
              (i32.const 0)
              (local.get $4)
             )
             (i32.store offset=4
              (local.get $0)
              (i32.or
               (local.get $3)
               (i32.const 3)
              )
             )
             (local.set $0
              (i32.add
               (local.get $0)
               (i32.const 8)
              )
             )
             (br $label$1)
            )
            (block $label$47
             (block $label$48
              (br_if $label$48
               (i32.eqz
                (i32.load offset=3992
                 (i32.const 0)
                )
               )
              )
              (local.set $4
               (i32.load offset=4000
                (i32.const 0)
               )
              )
              (br $label$47)
             )
             (i64.store offset=4004 align=4
              (i32.const 0)
              (i64.const -1)
             )
             (i64.store offset=3996 align=4
              (i32.const 0)
              (i64.const 281474976776192)
             )
             (i32.store offset=3992
              (i32.const 0)
              (i32.xor
               (i32.and
                (i32.add
                 (local.get $1)
                 (i32.const 12)
                )
                (i32.const -16)
               )
               (i32.const 1431655768)
              )
             )
             (i32.store offset=4012
              (i32.const 0)
              (i32.const 0)
             )
             (i32.store offset=3964
              (i32.const 0)
              (i32.const 0)
             )
             (local.set $4
              (i32.const 65536)
             )
            )
            (local.set $0
             (i32.const 0)
            )
            (block $label$49
             (br_if $label$49
              (i32.gt_u
               (local.tee $8
                (i32.and
                 (local.tee $2
                  (i32.add
                   (local.get $4)
                   (local.tee $7
                    (i32.add
                     (local.get $3)
                     (i32.const 47)
                    )
                   )
                  )
                 )
                 (local.tee $11
                  (i32.sub
                   (i32.const 0)
                   (local.get $4)
                  )
                 )
                )
               )
               (local.get $3)
              )
             )
             (i32.store offset=4016
              (i32.const 0)
              (i32.const 48)
             )
             (br $label$1)
            )
            (block $label$50
             (br_if $label$50
              (i32.eqz
               (local.tee $0
                (i32.load offset=3960
                 (i32.const 0)
                )
               )
              )
             )
             (block $label$51
              (br_if $label$51
               (i32.le_u
                (local.tee $6
                 (i32.add
                  (local.tee $4
                   (i32.load offset=3952
                    (i32.const 0)
                   )
                  )
                  (local.get $8)
                 )
                )
                (local.get $4)
               )
              )
              (br_if $label$50
               (i32.le_u
                (local.get $6)
                (local.get $0)
               )
              )
             )
             (local.set $0
              (i32.const 0)
             )
             (i32.store offset=4016
              (i32.const 0)
              (i32.const 48)
             )
             (br $label$1)
            )
            (br_if $label$6
             (i32.and
              (i32.load8_u offset=3964
               (i32.const 0)
              )
              (i32.const 4)
             )
            )
            (block $label$52
             (block $label$53
              (block $label$54
               (br_if $label$54
                (i32.eqz
                 (local.tee $4
                  (i32.load offset=3544
                   (i32.const 0)
                  )
                 )
                )
               )
               (local.set $0
                (i32.const 3968)
               )
               (loop $label$55
                (block $label$56
                 (br_if $label$56
                  (i32.gt_u
                   (local.tee $6
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (local.get $4)
                  )
                 )
                 (br_if $label$53
                  (i32.gt_u
                   (i32.add
                    (local.get $6)
                    (i32.load offset=4
                     (local.get $0)
                    )
                   )
                   (local.get $4)
                  )
                 )
                )
                (br_if $label$55
                 (local.tee $0
                  (i32.load offset=8
                   (local.get $0)
                  )
                 )
                )
               )
              )
              (br_if $label$7
               (i32.eq
                (local.tee $5
                 (call $14
                  (i32.const 0)
                 )
                )
                (i32.const -1)
               )
              )
              (local.set $2
               (local.get $8)
              )
              (block $label$57
               (br_if $label$57
                (i32.eqz
                 (i32.and
                  (local.tee $4
                   (i32.add
                    (local.tee $0
                     (i32.load offset=3996
                      (i32.const 0)
                     )
                    )
                    (i32.const -1)
                   )
                  )
                  (local.get $5)
                 )
                )
               )
               (local.set $2
                (i32.add
                 (i32.sub
                  (local.get $8)
                  (local.get $5)
                 )
                 (i32.and
                  (i32.add
                   (local.get $4)
                   (local.get $5)
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $0)
                  )
                 )
                )
               )
              )
              (br_if $label$7
               (i32.le_u
                (local.get $2)
                (local.get $3)
               )
              )
              (br_if $label$7
               (i32.gt_u
                (local.get $2)
                (i32.const 2147483646)
               )
              )
              (block $label$58
               (br_if $label$58
                (i32.eqz
                 (local.tee $0
                  (i32.load offset=3960
                   (i32.const 0)
                  )
                 )
                )
               )
               (br_if $label$7
                (i32.le_u
                 (local.tee $6
                  (i32.add
                   (local.tee $4
                    (i32.load offset=3952
                     (i32.const 0)
                    )
                   )
                   (local.get $2)
                  )
                 )
                 (local.get $4)
                )
               )
               (br_if $label$7
                (i32.gt_u
                 (local.get $6)
                 (local.get $0)
                )
               )
              )
              (br_if $label$52
               (i32.ne
                (local.tee $0
                 (call $14
                  (local.get $2)
                 )
                )
                (local.get $5)
               )
              )
              (br $label$5)
             )
             (br_if $label$7
              (i32.gt_u
               (local.tee $2
                (i32.and
                 (i32.sub
                  (local.get $2)
                  (local.get $5)
                 )
                 (local.get $11)
                )
               )
               (i32.const 2147483646)
              )
             )
             (br_if $label$8
              (i32.eq
               (local.tee $5
                (call $14
                 (local.get $2)
                )
               )
               (i32.add
                (i32.load
                 (local.get $0)
                )
                (i32.load offset=4
                 (local.get $0)
                )
               )
              )
             )
             (local.set $0
              (local.get $5)
             )
            )
            (local.set $5
             (local.get $0)
            )
            (block $label$59
             (br_if $label$59
              (i32.le_u
               (i32.add
                (local.get $3)
                (i32.const 48)
               )
               (local.get $2)
              )
             )
             (br_if $label$59
              (i32.gt_u
               (local.get $2)
               (i32.const 2147483646)
              )
             )
             (br_if $label$59
              (i32.eq
               (local.get $5)
               (i32.const -1)
              )
             )
             (br_if $label$5
              (i32.gt_u
               (local.tee $0
                (i32.and
                 (i32.add
                  (i32.sub
                   (local.get $7)
                   (local.get $2)
                  )
                  (local.tee $0
                   (i32.load offset=4000
                    (i32.const 0)
                   )
                  )
                 )
                 (i32.sub
                  (i32.const 0)
                  (local.get $0)
                 )
                )
               )
               (i32.const 2147483646)
              )
             )
             (block $label$60
              (br_if $label$60
               (i32.eq
                (call $14
                 (local.get $0)
                )
                (i32.const -1)
               )
              )
              (local.set $2
               (i32.add
                (local.get $0)
                (local.get $2)
               )
              )
              (br $label$5)
             )
             (drop
              (call $14
               (i32.sub
                (i32.const 0)
                (local.get $2)
               )
              )
             )
             (br $label$7)
            )
            (br_if $label$5
             (i32.ne
              (local.get $5)
              (i32.const -1)
             )
            )
            (br $label$7)
           )
           (local.set $8
            (i32.const 0)
           )
           (br $label$2)
          )
          (local.set $5
           (i32.const 0)
          )
          (br $label$3)
         )
         (br_if $label$5
          (i32.ne
           (local.get $5)
           (i32.const -1)
          )
         )
        )
        (i32.store offset=3964
         (i32.const 0)
         (i32.or
          (i32.load offset=3964
           (i32.const 0)
          )
          (i32.const 4)
         )
        )
       )
       (br_if $label$4
        (i32.gt_u
         (local.get $8)
         (i32.const 2147483646)
        )
       )
       (br_if $label$4
        (i32.ge_u
         (local.tee $5
          (call $14
           (local.get $8)
          )
         )
         (local.tee $0
          (call $14
           (i32.const 0)
          )
         )
        )
       )
       (br_if $label$4
        (i32.eq
         (local.get $5)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.eq
         (local.get $0)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.le_u
         (local.tee $2
          (i32.sub
           (local.get $0)
           (local.get $5)
          )
         )
         (i32.add
          (local.get $3)
          (i32.const 40)
         )
        )
       )
      )
      (i32.store offset=3952
       (i32.const 0)
       (local.tee $0
        (i32.add
         (i32.load offset=3952
          (i32.const 0)
         )
         (local.get $2)
        )
       )
      )
      (block $label$61
       (br_if $label$61
        (i32.le_u
         (local.get $0)
         (i32.load offset=3956
          (i32.const 0)
         )
        )
       )
       (i32.store offset=3956
        (i32.const 0)
        (local.get $0)
       )
      )
      (block $label$62
       (block $label$63
        (block $label$64
         (block $label$65
          (br_if $label$65
           (i32.eqz
            (local.tee $4
             (i32.load offset=3544
              (i32.const 0)
             )
            )
           )
          )
          (local.set $0
           (i32.const 3968)
          )
          (loop $label$66
           (br_if $label$64
            (i32.eq
             (local.get $5)
             (i32.add
              (local.tee $6
               (i32.load
                (local.get $0)
               )
              )
              (local.tee $8
               (i32.load offset=4
                (local.get $0)
               )
              )
             )
            )
           )
           (br_if $label$66
            (local.tee $0
             (i32.load offset=8
              (local.get $0)
             )
            )
           )
           (br $label$63)
          )
         )
         (block $label$67
          (block $label$68
           (br_if $label$68
            (i32.eqz
             (local.tee $0
              (i32.load offset=3536
               (i32.const 0)
              )
             )
            )
           )
           (br_if $label$67
            (i32.ge_u
             (local.get $5)
             (local.get $0)
            )
           )
          )
          (i32.store offset=3536
           (i32.const 0)
           (local.get $5)
          )
         )
         (local.set $0
          (i32.const 0)
         )
         (i32.store offset=3972
          (i32.const 0)
          (local.get $2)
         )
         (i32.store offset=3968
          (i32.const 0)
          (local.get $5)
         )
         (i32.store offset=3552
          (i32.const 0)
          (i32.const -1)
         )
         (i32.store offset=3556
          (i32.const 0)
          (i32.load offset=3992
           (i32.const 0)
          )
         )
         (i32.store offset=3980
          (i32.const 0)
          (i32.const 0)
         )
         (loop $label$69
          (i32.store
           (i32.add
            (local.get $0)
            (i32.const 3568)
           )
           (local.tee $4
            (i32.add
             (local.get $0)
             (i32.const 3560)
            )
           )
          )
          (i32.store
           (i32.add
            (local.get $0)
            (i32.const 3572)
           )
           (local.get $4)
          )
          (br_if $label$69
           (i32.ne
            (local.tee $0
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
            (i32.const 256)
           )
          )
         )
         (i32.store offset=4
          (local.tee $4
           (i32.add
            (local.get $5)
            (local.tee $0
             (select
              (i32.and
               (i32.sub
                (i32.const -8)
                (local.get $5)
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (i32.add
                (local.get $5)
                (i32.const 8)
               )
               (i32.const 7)
              )
             )
            )
           )
          )
          (i32.or
           (local.tee $0
            (i32.sub
             (local.tee $6
              (i32.add
               (local.get $2)
               (i32.const -40)
              )
             )
             (local.get $0)
            )
           )
           (i32.const 1)
          )
         )
         (i32.store offset=3548
          (i32.const 0)
          (i32.load offset=4008
           (i32.const 0)
          )
         )
         (i32.store offset=3532
          (i32.const 0)
          (local.get $0)
         )
         (i32.store offset=3544
          (i32.const 0)
          (local.get $4)
         )
         (i32.store offset=4
          (i32.add
           (local.get $5)
           (local.get $6)
          )
          (i32.const 40)
         )
         (br $label$62)
        )
        (br_if $label$63
         (i32.and
          (i32.load8_u offset=12
           (local.get $0)
          )
          (i32.const 8)
         )
        )
        (br_if $label$63
         (i32.le_u
          (local.get $5)
          (local.get $4)
         )
        )
        (br_if $label$63
         (i32.gt_u
          (local.get $6)
          (local.get $4)
         )
        )
        (i32.store offset=4
         (local.tee $5
          (i32.add
           (local.get $4)
           (local.tee $6
            (select
             (i32.and
              (i32.sub
               (i32.const -8)
               (local.get $4)
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (i32.add
               (local.get $4)
               (i32.const 8)
              )
              (i32.const 7)
             )
            )
           )
          )
         )
         (i32.or
          (local.tee $6
           (i32.sub
            (local.tee $11
             (i32.add
              (i32.load offset=3532
               (i32.const 0)
              )
              (local.get $2)
             )
            )
            (local.get $6)
           )
          )
          (i32.const 1)
         )
        )
        (i32.store offset=4
         (local.get $0)
         (i32.add
          (local.get $8)
          (local.get $2)
         )
        )
        (i32.store offset=3548
         (i32.const 0)
         (i32.load offset=4008
          (i32.const 0)
         )
        )
        (i32.store offset=3532
         (i32.const 0)
         (local.get $6)
        )
        (i32.store offset=3544
         (i32.const 0)
         (local.get $5)
        )
        (i32.store offset=4
         (i32.add
          (local.get $4)
          (local.get $11)
         )
         (i32.const 40)
        )
        (br $label$62)
       )
       (block $label$70
        (br_if $label$70
         (i32.ge_u
          (local.get $5)
          (local.tee $8
           (i32.load offset=3536
            (i32.const 0)
           )
          )
         )
        )
        (i32.store offset=3536
         (i32.const 0)
         (local.get $5)
        )
        (local.set $8
         (local.get $5)
        )
       )
       (local.set $6
        (i32.add
         (local.get $5)
         (local.get $2)
        )
       )
       (local.set $0
        (i32.const 3968)
       )
       (block $label$71
        (block $label$72
         (block $label$73
          (block $label$74
           (block $label$75
            (block $label$76
             (block $label$77
              (loop $label$78
               (br_if $label$77
                (i32.eq
                 (i32.load
                  (local.get $0)
                 )
                 (local.get $6)
                )
               )
               (br_if $label$78
                (local.tee $0
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
               )
               (br $label$76)
              )
             )
             (br_if $label$75
              (i32.eqz
               (i32.and
                (i32.load8_u offset=12
                 (local.get $0)
                )
                (i32.const 8)
               )
              )
             )
            )
            (local.set $0
             (i32.const 3968)
            )
            (loop $label$79
             (block $label$80
              (br_if $label$80
               (i32.gt_u
                (local.tee $6
                 (i32.load
                  (local.get $0)
                 )
                )
                (local.get $4)
               )
              )
              (br_if $label$74
               (i32.gt_u
                (local.tee $6
                 (i32.add
                  (local.get $6)
                  (i32.load offset=4
                   (local.get $0)
                  )
                 )
                )
                (local.get $4)
               )
              )
             )
             (local.set $0
              (i32.load offset=8
               (local.get $0)
              )
             )
             (br $label$79)
            )
           )
           (i32.store
            (local.get $0)
            (local.get $5)
           )
           (i32.store offset=4
            (local.get $0)
            (i32.add
             (i32.load offset=4
              (local.get $0)
             )
             (local.get $2)
            )
           )
           (i32.store offset=4
            (local.tee $11
             (i32.add
              (local.get $5)
              (select
               (i32.and
                (i32.sub
                 (i32.const -8)
                 (local.get $5)
                )
                (i32.const 7)
               )
               (i32.const 0)
               (i32.and
                (i32.add
                 (local.get $5)
                 (i32.const 8)
                )
                (i32.const 7)
               )
              )
             )
            )
            (i32.or
             (local.get $3)
             (i32.const 3)
            )
           )
           (local.set $0
            (i32.sub
             (i32.sub
              (local.tee $5
               (i32.add
                (local.get $6)
                (select
                 (i32.and
                  (i32.sub
                   (i32.const -8)
                   (local.get $6)
                  )
                  (i32.const 7)
                 )
                 (i32.const 0)
                 (i32.and
                  (i32.add
                   (local.get $6)
                   (i32.const 8)
                  )
                  (i32.const 7)
                 )
                )
               )
              )
              (local.get $11)
             )
             (local.get $3)
            )
           )
           (local.set $6
            (i32.add
             (local.get $11)
             (local.get $3)
            )
           )
           (block $label$81
            (br_if $label$81
             (i32.ne
              (local.get $4)
              (local.get $5)
             )
            )
            (i32.store offset=3544
             (i32.const 0)
             (local.get $6)
            )
            (i32.store offset=3532
             (i32.const 0)
             (local.tee $0
              (i32.add
               (i32.load offset=3532
                (i32.const 0)
               )
               (local.get $0)
              )
             )
            )
            (i32.store offset=4
             (local.get $6)
             (i32.or
              (local.get $0)
              (i32.const 1)
             )
            )
            (br $label$72)
           )
           (block $label$82
            (br_if $label$82
             (i32.ne
              (i32.load offset=3540
               (i32.const 0)
              )
              (local.get $5)
             )
            )
            (i32.store offset=3540
             (i32.const 0)
             (local.get $6)
            )
            (i32.store offset=3528
             (i32.const 0)
             (local.tee $0
              (i32.add
               (i32.load offset=3528
                (i32.const 0)
               )
               (local.get $0)
              )
             )
            )
            (i32.store offset=4
             (local.get $6)
             (i32.or
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.store
             (i32.add
              (local.get $6)
              (local.get $0)
             )
             (local.get $0)
            )
            (br $label$72)
           )
           (block $label$83
            (br_if $label$83
             (i32.ne
              (i32.and
               (local.tee $4
                (i32.load offset=4
                 (local.get $5)
                )
               )
               (i32.const 3)
              )
              (i32.const 1)
             )
            )
            (local.set $7
             (i32.and
              (local.get $4)
              (i32.const -8)
             )
            )
            (block $label$84
             (block $label$85
              (br_if $label$85
               (i32.gt_u
                (local.get $4)
                (i32.const 255)
               )
              )
              (local.set $3
               (i32.load offset=12
                (local.get $5)
               )
              )
              (block $label$86
               (br_if $label$86
                (i32.eq
                 (local.tee $2
                  (i32.load offset=8
                   (local.get $5)
                  )
                 )
                 (local.tee $4
                  (i32.add
                   (i32.shl
                    (local.tee $9
                     (i32.shr_u
                      (local.get $4)
                      (i32.const 3)
                     )
                    )
                    (i32.const 3)
                   )
                   (i32.const 3560)
                  )
                 )
                )
               )
               (drop
                (i32.gt_u
                 (local.get $8)
                 (local.get $2)
                )
               )
              )
              (block $label$87
               (br_if $label$87
                (i32.ne
                 (local.get $3)
                 (local.get $2)
                )
               )
               (i32.store offset=3520
                (i32.const 0)
                (i32.and
                 (i32.load offset=3520
                  (i32.const 0)
                 )
                 (i32.rotl
                  (i32.const -2)
                  (local.get $9)
                 )
                )
               )
               (br $label$84)
              )
              (block $label$88
               (br_if $label$88
                (i32.eq
                 (local.get $3)
                 (local.get $4)
                )
               )
               (drop
                (i32.gt_u
                 (local.get $8)
                 (local.get $3)
                )
               )
              )
              (i32.store offset=8
               (local.get $3)
               (local.get $2)
              )
              (i32.store offset=12
               (local.get $2)
               (local.get $3)
              )
              (br $label$84)
             )
             (local.set $9
              (i32.load offset=24
               (local.get $5)
              )
             )
             (block $label$89
              (block $label$90
               (br_if $label$90
                (i32.eq
                 (local.tee $2
                  (i32.load offset=12
                   (local.get $5)
                  )
                 )
                 (local.get $5)
                )
               )
               (block $label$91
                (br_if $label$91
                 (i32.gt_u
                  (local.get $8)
                  (local.tee $4
                   (i32.load offset=8
                    (local.get $5)
                   )
                  )
                 )
                )
                (drop
                 (i32.ne
                  (i32.load offset=12
                   (local.get $4)
                  )
                  (local.get $5)
                 )
                )
               )
               (i32.store offset=8
                (local.get $2)
                (local.get $4)
               )
               (i32.store offset=12
                (local.get $4)
                (local.get $2)
               )
               (br $label$89)
              )
              (block $label$92
               (br_if $label$92
                (local.tee $3
                 (i32.load
                  (local.tee $4
                   (i32.add
                    (local.get $5)
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (br_if $label$92
                (local.tee $3
                 (i32.load
                  (local.tee $4
                   (i32.add
                    (local.get $5)
                    (i32.const 16)
                   )
                  )
                 )
                )
               )
               (local.set $2
                (i32.const 0)
               )
               (br $label$89)
              )
              (loop $label$93
               (local.set $8
                (local.get $4)
               )
               (br_if $label$93
                (local.tee $3
                 (i32.load
                  (local.tee $4
                   (i32.add
                    (local.tee $2
                     (local.get $3)
                    )
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (local.set $4
                (i32.add
                 (local.get $2)
                 (i32.const 16)
                )
               )
               (br_if $label$93
                (local.tee $3
                 (i32.load offset=16
                  (local.get $2)
                 )
                )
               )
              )
              (i32.store
               (local.get $8)
               (i32.const 0)
              )
             )
             (br_if $label$84
              (i32.eqz
               (local.get $9)
              )
             )
             (block $label$94
              (block $label$95
               (br_if $label$95
                (i32.ne
                 (i32.load
                  (local.tee $4
                   (i32.add
                    (i32.shl
                     (local.tee $3
                      (i32.load offset=28
                       (local.get $5)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.const 3824)
                   )
                  )
                 )
                 (local.get $5)
                )
               )
               (i32.store
                (local.get $4)
                (local.get $2)
               )
               (br_if $label$94
                (local.get $2)
               )
               (i32.store offset=3524
                (i32.const 0)
                (i32.and
                 (i32.load offset=3524
                  (i32.const 0)
                 )
                 (i32.rotl
                  (i32.const -2)
                  (local.get $3)
                 )
                )
               )
               (br $label$84)
              )
              (i32.store
               (i32.add
                (local.get $9)
                (select
                 (i32.const 16)
                 (i32.const 20)
                 (i32.eq
                  (i32.load offset=16
                   (local.get $9)
                  )
                  (local.get $5)
                 )
                )
               )
               (local.get $2)
              )
              (br_if $label$84
               (i32.eqz
                (local.get $2)
               )
              )
             )
             (i32.store offset=24
              (local.get $2)
              (local.get $9)
             )
             (block $label$96
              (br_if $label$96
               (i32.eqz
                (local.tee $4
                 (i32.load offset=16
                  (local.get $5)
                 )
                )
               )
              )
              (i32.store offset=16
               (local.get $2)
               (local.get $4)
              )
              (i32.store offset=24
               (local.get $4)
               (local.get $2)
              )
             )
             (br_if $label$84
              (i32.eqz
               (local.tee $4
                (i32.load offset=20
                 (local.get $5)
                )
               )
              )
             )
             (i32.store
              (i32.add
               (local.get $2)
               (i32.const 20)
              )
              (local.get $4)
             )
             (i32.store offset=24
              (local.get $4)
              (local.get $2)
             )
            )
            (local.set $0
             (i32.add
              (local.get $7)
              (local.get $0)
             )
            )
            (local.set $5
             (i32.add
              (local.get $5)
              (local.get $7)
             )
            )
           )
           (i32.store offset=4
            (local.get $5)
            (i32.and
             (i32.load offset=4
              (local.get $5)
             )
             (i32.const -2)
            )
           )
           (i32.store
            (i32.add
             (local.get $6)
             (local.get $0)
            )
            (local.get $0)
           )
           (i32.store offset=4
            (local.get $6)
            (i32.or
             (local.get $0)
             (i32.const 1)
            )
           )
           (block $label$97
            (br_if $label$97
             (i32.gt_u
              (local.get $0)
              (i32.const 255)
             )
            )
            (local.set $0
             (i32.add
              (i32.shl
               (local.tee $4
                (i32.shr_u
                 (local.get $0)
                 (i32.const 3)
                )
               )
               (i32.const 3)
              )
              (i32.const 3560)
             )
            )
            (block $label$98
             (block $label$99
              (br_if $label$99
               (i32.and
                (local.tee $3
                 (i32.load offset=3520
                  (i32.const 0)
                 )
                )
                (local.tee $4
                 (i32.shl
                  (i32.const 1)
                  (local.get $4)
                 )
                )
               )
              )
              (i32.store offset=3520
               (i32.const 0)
               (i32.or
                (local.get $3)
                (local.get $4)
               )
              )
              (local.set $4
               (local.get $0)
              )
              (br $label$98)
             )
             (local.set $4
              (i32.load offset=8
               (local.get $0)
              )
             )
            )
            (i32.store offset=12
             (local.get $4)
             (local.get $6)
            )
            (i32.store offset=8
             (local.get $0)
             (local.get $6)
            )
            (i32.store offset=12
             (local.get $6)
             (local.get $0)
            )
            (i32.store offset=8
             (local.get $6)
             (local.get $4)
            )
            (br $label$72)
           )
           (local.set $4
            (i32.const 0)
           )
           (block $label$100
            (br_if $label$100
             (i32.eqz
              (local.tee $3
               (i32.shr_u
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (local.set $4
             (i32.const 31)
            )
            (br_if $label$100
             (i32.gt_u
              (local.get $0)
              (i32.const 16777215)
             )
            )
            (local.set $4
             (i32.add
              (i32.or
               (i32.shl
                (local.tee $4
                 (i32.sub
                  (i32.shr_u
                   (i32.shl
                    (local.tee $5
                     (i32.shl
                      (local.tee $3
                       (i32.shl
                        (local.get $3)
                        (local.tee $4
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $3)
                            (i32.const 1048320)
                           )
                           (i32.const 16)
                          )
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.get $3)
                          (i32.const 520192)
                         )
                         (i32.const 16)
                        )
                        (i32.const 4)
                       )
                      )
                     )
                    )
                    (local.tee $5
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $5)
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                   (i32.const 15)
                  )
                  (i32.or
                   (i32.or
                    (local.get $3)
                    (local.get $4)
                   )
                   (local.get $5)
                  )
                 )
                )
                (i32.const 1)
               )
               (i32.and
                (i32.shr_u
                 (local.get $0)
                 (i32.add
                  (local.get $4)
                  (i32.const 21)
                 )
                )
                (i32.const 1)
               )
              )
              (i32.const 28)
             )
            )
           )
           (i32.store offset=28
            (local.get $6)
            (local.get $4)
           )
           (i64.store offset=16 align=4
            (local.get $6)
            (i64.const 0)
           )
           (local.set $3
            (i32.add
             (i32.shl
              (local.get $4)
              (i32.const 2)
             )
             (i32.const 3824)
            )
           )
           (block $label$101
            (br_if $label$101
             (i32.and
              (local.tee $5
               (i32.load offset=3524
                (i32.const 0)
               )
              )
              (local.tee $8
               (i32.shl
                (i32.const 1)
                (local.get $4)
               )
              )
             )
            )
            (i32.store
             (local.get $3)
             (local.get $6)
            )
            (i32.store offset=3524
             (i32.const 0)
             (i32.or
              (local.get $5)
              (local.get $8)
             )
            )
            (i32.store offset=24
             (local.get $6)
             (local.get $3)
            )
            (i32.store offset=8
             (local.get $6)
             (local.get $6)
            )
            (i32.store offset=12
             (local.get $6)
             (local.get $6)
            )
            (br $label$72)
           )
           (local.set $4
            (i32.shl
             (local.get $0)
             (select
              (i32.const 0)
              (i32.sub
               (i32.const 25)
               (i32.shr_u
                (local.get $4)
                (i32.const 1)
               )
              )
              (i32.eq
               (local.get $4)
               (i32.const 31)
              )
             )
            )
           )
           (local.set $5
            (i32.load
             (local.get $3)
            )
           )
           (loop $label$102
            (br_if $label$73
             (i32.eq
              (i32.and
               (i32.load offset=4
                (local.tee $3
                 (local.get $5)
                )
               )
               (i32.const -8)
              )
              (local.get $0)
             )
            )
            (local.set $5
             (i32.shr_u
              (local.get $4)
              (i32.const 29)
             )
            )
            (local.set $4
             (i32.shl
              (local.get $4)
              (i32.const 1)
             )
            )
            (br_if $label$102
             (local.tee $5
              (i32.load
               (local.tee $8
                (i32.add
                 (i32.add
                  (local.get $3)
                  (i32.and
                   (local.get $5)
                   (i32.const 4)
                  )
                 )
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (i32.store
            (local.get $8)
            (local.get $6)
           )
           (i32.store offset=24
            (local.get $6)
            (local.get $3)
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $6)
           )
           (i32.store offset=8
            (local.get $6)
            (local.get $6)
           )
           (br $label$72)
          )
          (i32.store offset=4
           (local.tee $11
            (i32.add
             (local.get $5)
             (local.tee $0
              (select
               (i32.and
                (i32.sub
                 (i32.const -8)
                 (local.get $5)
                )
                (i32.const 7)
               )
               (i32.const 0)
               (i32.and
                (i32.add
                 (local.get $5)
                 (i32.const 8)
                )
                (i32.const 7)
               )
              )
             )
            )
           )
           (i32.or
            (local.tee $0
             (i32.sub
              (local.tee $8
               (i32.add
                (local.get $2)
                (i32.const -40)
               )
              )
              (local.get $0)
             )
            )
            (i32.const 1)
           )
          )
          (i32.store offset=4
           (i32.add
            (local.get $5)
            (local.get $8)
           )
           (i32.const 40)
          )
          (i32.store offset=4
           (local.tee $8
            (select
             (local.get $4)
             (local.tee $8
              (i32.add
               (i32.add
                (local.get $6)
                (select
                 (i32.and
                  (i32.sub
                   (i32.const 39)
                   (local.get $6)
                  )
                  (i32.const 7)
                 )
                 (i32.const 0)
                 (i32.and
                  (i32.add
                   (local.get $6)
                   (i32.const -39)
                  )
                  (i32.const 7)
                 )
                )
               )
               (i32.const -47)
              )
             )
             (i32.lt_u
              (local.get $8)
              (i32.add
               (local.get $4)
               (i32.const 16)
              )
             )
            )
           )
           (i32.const 27)
          )
          (i32.store offset=3548
           (i32.const 0)
           (i32.load offset=4008
            (i32.const 0)
           )
          )
          (i32.store offset=3532
           (i32.const 0)
           (local.get $0)
          )
          (i32.store offset=3544
           (i32.const 0)
           (local.get $11)
          )
          (i64.store align=4
           (i32.add
            (local.get $8)
            (i32.const 16)
           )
           (i64.load offset=3976 align=4
            (i32.const 0)
           )
          )
          (i64.store offset=8 align=4
           (local.get $8)
           (i64.load offset=3968 align=4
            (i32.const 0)
           )
          )
          (i32.store offset=3976
           (i32.const 0)
           (i32.add
            (local.get $8)
            (i32.const 8)
           )
          )
          (i32.store offset=3972
           (i32.const 0)
           (local.get $2)
          )
          (i32.store offset=3968
           (i32.const 0)
           (local.get $5)
          )
          (i32.store offset=3980
           (i32.const 0)
           (i32.const 0)
          )
          (local.set $0
           (i32.add
            (local.get $8)
            (i32.const 28)
           )
          )
          (loop $label$103
           (i32.store
            (local.get $0)
            (i32.const 7)
           )
           (br_if $label$103
            (i32.lt_u
             (local.tee $0
              (i32.add
               (local.get $0)
               (i32.const 4)
              )
             )
             (local.get $6)
            )
           )
          )
          (br_if $label$62
           (i32.eq
            (local.get $8)
            (local.get $4)
           )
          )
          (i32.store offset=4
           (local.get $8)
           (i32.and
            (i32.load offset=4
             (local.get $8)
            )
            (i32.const -2)
           )
          )
          (i32.store
           (local.get $8)
           (local.tee $2
            (i32.sub
             (local.get $8)
             (local.get $4)
            )
           )
          )
          (i32.store offset=4
           (local.get $4)
           (i32.or
            (local.get $2)
            (i32.const 1)
           )
          )
          (block $label$104
           (br_if $label$104
            (i32.gt_u
             (local.get $2)
             (i32.const 255)
            )
           )
           (local.set $0
            (i32.add
             (i32.shl
              (local.tee $6
               (i32.shr_u
                (local.get $2)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 3560)
            )
           )
           (block $label$105
            (block $label$106
             (br_if $label$106
              (i32.and
               (local.tee $5
                (i32.load offset=3520
                 (i32.const 0)
                )
               )
               (local.tee $6
                (i32.shl
                 (i32.const 1)
                 (local.get $6)
                )
               )
              )
             )
             (i32.store offset=3520
              (i32.const 0)
              (i32.or
               (local.get $5)
               (local.get $6)
              )
             )
             (local.set $6
              (local.get $0)
             )
             (br $label$105)
            )
            (local.set $6
             (i32.load offset=8
              (local.get $0)
             )
            )
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $4)
           )
           (i32.store offset=8
            (local.get $0)
            (local.get $4)
           )
           (i32.store offset=12
            (local.get $4)
            (local.get $0)
           )
           (i32.store offset=8
            (local.get $4)
            (local.get $6)
           )
           (br $label$62)
          )
          (local.set $0
           (i32.const 0)
          )
          (block $label$107
           (br_if $label$107
            (i32.eqz
             (local.tee $6
              (i32.shr_u
               (local.get $2)
               (i32.const 8)
              )
             )
            )
           )
           (local.set $0
            (i32.const 31)
           )
           (br_if $label$107
            (i32.gt_u
             (local.get $2)
             (i32.const 16777215)
            )
           )
           (local.set $0
            (i32.add
             (i32.or
              (i32.shl
               (local.tee $0
                (i32.sub
                 (i32.shr_u
                  (i32.shl
                   (local.tee $5
                    (i32.shl
                     (local.tee $6
                      (i32.shl
                       (local.get $6)
                       (local.tee $0
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (local.get $6)
                           (i32.const 1048320)
                          )
                          (i32.const 16)
                         )
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (local.tee $6
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (local.get $6)
                         (i32.const 520192)
                        )
                        (i32.const 16)
                       )
                       (i32.const 4)
                      )
                     )
                    )
                   )
                   (local.tee $5
                    (i32.and
                     (i32.shr_u
                      (i32.add
                       (local.get $5)
                       (i32.const 245760)
                      )
                      (i32.const 16)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                  (i32.const 15)
                 )
                 (i32.or
                  (i32.or
                   (local.get $6)
                   (local.get $0)
                  )
                  (local.get $5)
                 )
                )
               )
               (i32.const 1)
              )
              (i32.and
               (i32.shr_u
                (local.get $2)
                (i32.add
                 (local.get $0)
                 (i32.const 21)
                )
               )
               (i32.const 1)
              )
             )
             (i32.const 28)
            )
           )
          )
          (i64.store offset=16 align=4
           (local.get $4)
           (i64.const 0)
          )
          (i32.store
           (i32.add
            (local.get $4)
            (i32.const 28)
           )
           (local.get $0)
          )
          (local.set $6
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 2)
            )
            (i32.const 3824)
           )
          )
          (block $label$108
           (br_if $label$108
            (i32.and
             (local.tee $5
              (i32.load offset=3524
               (i32.const 0)
              )
             )
             (local.tee $8
              (i32.shl
               (i32.const 1)
               (local.get $0)
              )
             )
            )
           )
           (i32.store
            (local.get $6)
            (local.get $4)
           )
           (i32.store offset=3524
            (i32.const 0)
            (i32.or
             (local.get $5)
             (local.get $8)
            )
           )
           (i32.store
            (i32.add
             (local.get $4)
             (i32.const 24)
            )
            (local.get $6)
           )
           (i32.store offset=8
            (local.get $4)
            (local.get $4)
           )
           (i32.store offset=12
            (local.get $4)
            (local.get $4)
           )
           (br $label$62)
          )
          (local.set $0
           (i32.shl
            (local.get $2)
            (select
             (i32.const 0)
             (i32.sub
              (i32.const 25)
              (i32.shr_u
               (local.get $0)
               (i32.const 1)
              )
             )
             (i32.eq
              (local.get $0)
              (i32.const 31)
             )
            )
           )
          )
          (local.set $5
           (i32.load
            (local.get $6)
           )
          )
          (loop $label$109
           (br_if $label$71
            (i32.eq
             (i32.and
              (i32.load offset=4
               (local.tee $6
                (local.get $5)
               )
              )
              (i32.const -8)
             )
             (local.get $2)
            )
           )
           (local.set $5
            (i32.shr_u
             (local.get $0)
             (i32.const 29)
            )
           )
           (local.set $0
            (i32.shl
             (local.get $0)
             (i32.const 1)
            )
           )
           (br_if $label$109
            (local.tee $5
             (i32.load
              (local.tee $8
               (i32.add
                (i32.add
                 (local.get $6)
                 (i32.and
                  (local.get $5)
                  (i32.const 4)
                 )
                )
                (i32.const 16)
               )
              )
             )
            )
           )
          )
          (i32.store
           (local.get $8)
           (local.get $4)
          )
          (i32.store
           (i32.add
            (local.get $4)
            (i32.const 24)
           )
           (local.get $6)
          )
          (i32.store offset=12
           (local.get $4)
           (local.get $4)
          )
          (i32.store offset=8
           (local.get $4)
           (local.get $4)
          )
          (br $label$62)
         )
         (local.set $0
          (i32.load offset=8
           (local.get $3)
          )
         )
         (i32.store offset=8
          (local.get $3)
          (local.get $6)
         )
         (i32.store offset=12
          (local.get $0)
          (local.get $6)
         )
         (i32.store offset=24
          (local.get $6)
          (i32.const 0)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $3)
         )
        )
        (local.set $0
         (i32.add
          (local.get $11)
          (i32.const 8)
         )
        )
        (br $label$1)
       )
       (local.set $0
        (i32.load offset=8
         (local.get $6)
        )
       )
       (i32.store offset=8
        (local.get $6)
        (local.get $4)
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $4)
       )
       (i32.store
        (i32.add
         (local.get $4)
         (i32.const 24)
        )
        (i32.const 0)
       )
       (i32.store offset=8
        (local.get $4)
        (local.get $0)
       )
       (i32.store offset=12
        (local.get $4)
        (local.get $6)
       )
      )
      (br_if $label$4
       (i32.le_u
        (local.tee $0
         (i32.load offset=3532
          (i32.const 0)
         )
        )
        (local.get $3)
       )
      )
      (i32.store offset=4
       (local.tee $6
        (i32.add
         (local.tee $4
          (i32.load offset=3544
           (i32.const 0)
          )
         )
         (local.get $3)
        )
       )
       (i32.or
        (local.tee $0
         (i32.sub
          (local.get $0)
          (local.get $3)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store offset=3532
       (i32.const 0)
       (local.get $0)
      )
      (i32.store offset=3544
       (i32.const 0)
       (local.get $6)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.or
        (local.get $3)
        (i32.const 3)
       )
      )
      (local.set $0
       (i32.add
        (local.get $4)
        (i32.const 8)
       )
      )
      (br $label$1)
     )
     (local.set $0
      (i32.const 0)
     )
     (i32.store offset=4016
      (i32.const 0)
      (i32.const 48)
     )
     (br $label$1)
    )
    (block $label$110
     (br_if $label$110
      (i32.eqz
       (local.get $11)
      )
     )
     (block $label$111
      (block $label$112
       (br_if $label$112
        (i32.ne
         (local.get $8)
         (i32.load
          (local.tee $0
           (i32.add
            (i32.shl
             (local.tee $4
              (i32.load offset=28
               (local.get $8)
              )
             )
             (i32.const 2)
            )
            (i32.const 3824)
           )
          )
         )
        )
       )
       (i32.store
        (local.get $0)
        (local.get $5)
       )
       (br_if $label$111
        (local.get $5)
       )
       (i32.store offset=3524
        (i32.const 0)
        (local.tee $7
         (i32.and
          (local.get $7)
          (i32.rotl
           (i32.const -2)
           (local.get $4)
          )
         )
        )
       )
       (br $label$110)
      )
      (i32.store
       (i32.add
        (local.get $11)
        (select
         (i32.const 16)
         (i32.const 20)
         (i32.eq
          (i32.load offset=16
           (local.get $11)
          )
          (local.get $8)
         )
        )
       )
       (local.get $5)
      )
      (br_if $label$110
       (i32.eqz
        (local.get $5)
       )
      )
     )
     (i32.store offset=24
      (local.get $5)
      (local.get $11)
     )
     (block $label$113
      (br_if $label$113
       (i32.eqz
        (local.tee $0
         (i32.load offset=16
          (local.get $8)
         )
        )
       )
      )
      (i32.store offset=16
       (local.get $5)
       (local.get $0)
      )
      (i32.store offset=24
       (local.get $0)
       (local.get $5)
      )
     )
     (br_if $label$110
      (i32.eqz
       (local.tee $0
        (i32.load
         (i32.add
          (local.get $8)
          (i32.const 20)
         )
        )
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $5)
       (i32.const 20)
      )
      (local.get $0)
     )
     (i32.store offset=24
      (local.get $0)
      (local.get $5)
     )
    )
    (block $label$114
     (block $label$115
      (br_if $label$115
       (i32.gt_u
        (local.get $6)
        (i32.const 15)
       )
      )
      (i32.store offset=4
       (local.get $8)
       (i32.or
        (local.tee $0
         (i32.add
          (local.get $6)
          (local.get $3)
         )
        )
        (i32.const 3)
       )
      )
      (i32.store offset=4
       (local.tee $0
        (i32.add
         (local.get $8)
         (local.get $0)
        )
       )
       (i32.or
        (i32.load offset=4
         (local.get $0)
        )
        (i32.const 1)
       )
      )
      (br $label$114)
     )
     (i32.store offset=4
      (local.tee $5
       (i32.add
        (local.get $8)
        (local.get $3)
       )
      )
      (i32.or
       (local.get $6)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (local.get $8)
      (i32.or
       (local.get $3)
       (i32.const 3)
      )
     )
     (i32.store
      (i32.add
       (local.get $5)
       (local.get $6)
      )
      (local.get $6)
     )
     (block $label$116
      (br_if $label$116
       (i32.gt_u
        (local.get $6)
        (i32.const 255)
       )
      )
      (local.set $0
       (i32.add
        (i32.shl
         (local.tee $4
          (i32.shr_u
           (local.get $6)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
        (i32.const 3560)
       )
      )
      (block $label$117
       (block $label$118
        (br_if $label$118
         (i32.and
          (local.tee $6
           (i32.load offset=3520
            (i32.const 0)
           )
          )
          (local.tee $4
           (i32.shl
            (i32.const 1)
            (local.get $4)
           )
          )
         )
        )
        (i32.store offset=3520
         (i32.const 0)
         (i32.or
          (local.get $6)
          (local.get $4)
         )
        )
        (local.set $4
         (local.get $0)
        )
        (br $label$117)
       )
       (local.set $4
        (i32.load offset=8
         (local.get $0)
        )
       )
      )
      (i32.store offset=12
       (local.get $4)
       (local.get $5)
      )
      (i32.store offset=8
       (local.get $0)
       (local.get $5)
      )
      (i32.store offset=12
       (local.get $5)
       (local.get $0)
      )
      (i32.store offset=8
       (local.get $5)
       (local.get $4)
      )
      (br $label$114)
     )
     (block $label$119
      (block $label$120
       (br_if $label$120
        (local.tee $4
         (i32.shr_u
          (local.get $6)
          (i32.const 8)
         )
        )
       )
       (local.set $0
        (i32.const 0)
       )
       (br $label$119)
      )
      (local.set $0
       (i32.const 31)
      )
      (br_if $label$119
       (i32.gt_u
        (local.get $6)
        (i32.const 16777215)
       )
      )
      (local.set $0
       (i32.add
        (i32.or
         (i32.shl
          (local.tee $0
           (i32.sub
            (i32.shr_u
             (i32.shl
              (local.tee $3
               (i32.shl
                (local.tee $4
                 (i32.shl
                  (local.get $4)
                  (local.tee $0
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $4)
                      (i32.const 1048320)
                     )
                     (i32.const 16)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                )
                (local.tee $4
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $4)
                    (i32.const 520192)
                   )
                   (i32.const 16)
                  )
                  (i32.const 4)
                 )
                )
               )
              )
              (local.tee $3
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.get $3)
                  (i32.const 245760)
                 )
                 (i32.const 16)
                )
                (i32.const 2)
               )
              )
             )
             (i32.const 15)
            )
            (i32.or
             (i32.or
              (local.get $4)
              (local.get $0)
             )
             (local.get $3)
            )
           )
          )
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (local.get $6)
           (i32.add
            (local.get $0)
            (i32.const 21)
           )
          )
          (i32.const 1)
         )
        )
        (i32.const 28)
       )
      )
     )
     (i32.store offset=28
      (local.get $5)
      (local.get $0)
     )
     (i64.store offset=16 align=4
      (local.get $5)
      (i64.const 0)
     )
     (local.set $4
      (i32.add
       (i32.shl
        (local.get $0)
        (i32.const 2)
       )
       (i32.const 3824)
      )
     )
     (block $label$121
      (br_if $label$121
       (i32.and
        (local.get $7)
        (local.tee $3
         (i32.shl
          (i32.const 1)
          (local.get $0)
         )
        )
       )
      )
      (i32.store
       (local.get $4)
       (local.get $5)
      )
      (i32.store offset=3524
       (i32.const 0)
       (i32.or
        (local.get $7)
        (local.get $3)
       )
      )
      (i32.store offset=24
       (local.get $5)
       (local.get $4)
      )
      (i32.store offset=8
       (local.get $5)
       (local.get $5)
      )
      (i32.store offset=12
       (local.get $5)
       (local.get $5)
      )
      (br $label$114)
     )
     (local.set $0
      (i32.shl
       (local.get $6)
       (select
        (i32.const 0)
        (i32.sub
         (i32.const 25)
         (i32.shr_u
          (local.get $0)
          (i32.const 1)
         )
        )
        (i32.eq
         (local.get $0)
         (i32.const 31)
        )
       )
      )
     )
     (local.set $3
      (i32.load
       (local.get $4)
      )
     )
     (block $label$122
      (loop $label$123
       (br_if $label$122
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $4
            (local.get $3)
           )
          )
          (i32.const -8)
         )
         (local.get $6)
        )
       )
       (local.set $3
        (i32.shr_u
         (local.get $0)
         (i32.const 29)
        )
       )
       (local.set $0
        (i32.shl
         (local.get $0)
         (i32.const 1)
        )
       )
       (br_if $label$123
        (local.tee $3
         (i32.load
          (local.tee $2
           (i32.add
            (i32.add
             (local.get $4)
             (i32.and
              (local.get $3)
              (i32.const 4)
             )
            )
            (i32.const 16)
           )
          )
         )
        )
       )
      )
      (i32.store
       (local.get $2)
       (local.get $5)
      )
      (i32.store offset=24
       (local.get $5)
       (local.get $4)
      )
      (i32.store offset=12
       (local.get $5)
       (local.get $5)
      )
      (i32.store offset=8
       (local.get $5)
       (local.get $5)
      )
      (br $label$114)
     )
     (local.set $0
      (i32.load offset=8
       (local.get $4)
      )
     )
     (i32.store offset=8
      (local.get $4)
      (local.get $5)
     )
     (i32.store offset=12
      (local.get $0)
      (local.get $5)
     )
     (i32.store offset=24
      (local.get $5)
      (i32.const 0)
     )
     (i32.store offset=8
      (local.get $5)
      (local.get $0)
     )
     (i32.store offset=12
      (local.get $5)
      (local.get $4)
     )
    )
    (local.set $0
     (i32.add
      (local.get $8)
      (i32.const 8)
     )
    )
    (br $label$1)
   )
   (block $label$124
    (br_if $label$124
     (i32.eqz
      (local.get $10)
     )
    )
    (block $label$125
     (block $label$126
      (br_if $label$126
       (i32.ne
        (local.get $5)
        (i32.load
         (local.tee $0
          (i32.add
           (i32.shl
            (local.tee $6
             (i32.load offset=28
              (local.get $5)
             )
            )
            (i32.const 2)
           )
           (i32.const 3824)
          )
         )
        )
       )
      )
      (i32.store
       (local.get $0)
       (local.get $8)
      )
      (br_if $label$125
       (local.get $8)
      )
      (i32.store offset=3524
       (i32.const 0)
       (i32.and
        (local.get $9)
        (i32.rotl
         (i32.const -2)
         (local.get $6)
        )
       )
      )
      (br $label$124)
     )
     (i32.store
      (i32.add
       (local.get $10)
       (select
        (i32.const 16)
        (i32.const 20)
        (i32.eq
         (i32.load offset=16
          (local.get $10)
         )
         (local.get $5)
        )
       )
      )
      (local.get $8)
     )
     (br_if $label$124
      (i32.eqz
       (local.get $8)
      )
     )
    )
    (i32.store offset=24
     (local.get $8)
     (local.get $10)
    )
    (block $label$127
     (br_if $label$127
      (i32.eqz
       (local.tee $0
        (i32.load offset=16
         (local.get $5)
        )
       )
      )
     )
     (i32.store offset=16
      (local.get $8)
      (local.get $0)
     )
     (i32.store offset=24
      (local.get $0)
      (local.get $8)
     )
    )
    (br_if $label$124
     (i32.eqz
      (local.tee $0
       (i32.load
        (i32.add
         (local.get $5)
         (i32.const 20)
        )
       )
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $8)
      (i32.const 20)
     )
     (local.get $0)
    )
    (i32.store offset=24
     (local.get $0)
     (local.get $8)
    )
   )
   (block $label$128
    (block $label$129
     (br_if $label$129
      (i32.gt_u
       (local.get $4)
       (i32.const 15)
      )
     )
     (i32.store offset=4
      (local.get $5)
      (i32.or
       (local.tee $0
        (i32.add
         (local.get $4)
         (local.get $3)
        )
       )
       (i32.const 3)
      )
     )
     (i32.store offset=4
      (local.tee $0
       (i32.add
        (local.get $5)
        (local.get $0)
       )
      )
      (i32.or
       (i32.load offset=4
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (br $label$128)
    )
    (i32.store offset=4
     (local.tee $6
      (i32.add
       (local.get $5)
       (local.get $3)
      )
     )
     (i32.or
      (local.get $4)
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (local.get $5)
     (i32.or
      (local.get $3)
      (i32.const 3)
     )
    )
    (i32.store
     (i32.add
      (local.get $6)
      (local.get $4)
     )
     (local.get $4)
    )
    (block $label$130
     (br_if $label$130
      (i32.eqz
       (local.get $7)
      )
     )
     (local.set $3
      (i32.add
       (i32.shl
        (local.tee $8
         (i32.shr_u
          (local.get $7)
          (i32.const 3)
         )
        )
        (i32.const 3)
       )
       (i32.const 3560)
      )
     )
     (local.set $0
      (i32.load offset=3540
       (i32.const 0)
      )
     )
     (block $label$131
      (block $label$132
       (br_if $label$132
        (i32.and
         (local.tee $8
          (i32.shl
           (i32.const 1)
           (local.get $8)
          )
         )
         (local.get $2)
        )
       )
       (i32.store offset=3520
        (i32.const 0)
        (i32.or
         (local.get $8)
         (local.get $2)
        )
       )
       (local.set $8
        (local.get $3)
       )
       (br $label$131)
      )
      (local.set $8
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.store offset=12
      (local.get $8)
      (local.get $0)
     )
     (i32.store offset=8
      (local.get $3)
      (local.get $0)
     )
     (i32.store offset=12
      (local.get $0)
      (local.get $3)
     )
     (i32.store offset=8
      (local.get $0)
      (local.get $8)
     )
    )
    (i32.store offset=3540
     (i32.const 0)
     (local.get $6)
    )
    (i32.store offset=3528
     (i32.const 0)
     (local.get $4)
    )
   )
   (local.set $0
    (i32.add
     (local.get $5)
     (i32.const 8)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (local.get $0)
 )
 (func $5 (param $0 i32)
  (call $6
   (local.get $0)
  )
 )
 (func $6 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $0)
    )
   )
   (local.set $3
    (i32.add
     (local.tee $1
      (i32.add
       (local.get $0)
       (i32.const -8)
      )
     )
     (local.tee $0
      (i32.and
       (local.tee $2
        (i32.load
         (i32.add
          (local.get $0)
          (i32.const -4)
         )
        )
       )
       (i32.const -8)
      )
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.and
      (local.get $2)
      (i32.const 1)
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (local.get $2)
       (i32.const 3)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (local.tee $1
       (i32.sub
        (local.get $1)
        (local.tee $2
         (i32.load
          (local.get $1)
         )
        )
       )
      )
      (local.tee $4
       (i32.load offset=3536
        (i32.const 0)
       )
      )
     )
    )
    (local.set $0
     (i32.add
      (local.get $2)
      (local.get $0)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eq
       (i32.load offset=3540
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (local.get $2)
        (i32.const 255)
       )
      )
      (local.set $5
       (i32.load offset=12
        (local.get $1)
       )
      )
      (block $label$5
       (br_if $label$5
        (i32.eq
         (local.tee $6
          (i32.load offset=8
           (local.get $1)
          )
         )
         (local.tee $2
          (i32.add
           (i32.shl
            (local.tee $7
             (i32.shr_u
              (local.get $2)
              (i32.const 3)
             )
            )
            (i32.const 3)
           )
           (i32.const 3560)
          )
         )
        )
       )
       (drop
        (i32.gt_u
         (local.get $4)
         (local.get $6)
        )
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.ne
         (local.get $5)
         (local.get $6)
        )
       )
       (i32.store offset=3520
        (i32.const 0)
        (i32.and
         (i32.load offset=3520
          (i32.const 0)
         )
         (i32.rotl
          (i32.const -2)
          (local.get $7)
         )
        )
       )
       (br $label$2)
      )
      (block $label$7
       (br_if $label$7
        (i32.eq
         (local.get $5)
         (local.get $2)
        )
       )
       (drop
        (i32.gt_u
         (local.get $4)
         (local.get $5)
        )
       )
      )
      (i32.store offset=8
       (local.get $5)
       (local.get $6)
      )
      (i32.store offset=12
       (local.get $6)
       (local.get $5)
      )
      (br $label$2)
     )
     (local.set $7
      (i32.load offset=24
       (local.get $1)
      )
     )
     (block $label$8
      (block $label$9
       (br_if $label$9
        (i32.eq
         (local.tee $5
          (i32.load offset=12
           (local.get $1)
          )
         )
         (local.get $1)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.gt_u
          (local.get $4)
          (local.tee $2
           (i32.load offset=8
            (local.get $1)
           )
          )
         )
        )
        (drop
         (i32.ne
          (i32.load offset=12
           (local.get $2)
          )
          (local.get $1)
         )
        )
       )
       (i32.store offset=8
        (local.get $5)
        (local.get $2)
       )
       (i32.store offset=12
        (local.get $2)
        (local.get $5)
       )
       (br $label$8)
      )
      (block $label$11
       (br_if $label$11
        (local.tee $4
         (i32.load
          (local.tee $2
           (i32.add
            (local.get $1)
            (i32.const 20)
           )
          )
         )
        )
       )
       (br_if $label$11
        (local.tee $4
         (i32.load
          (local.tee $2
           (i32.add
            (local.get $1)
            (i32.const 16)
           )
          )
         )
        )
       )
       (local.set $5
        (i32.const 0)
       )
       (br $label$8)
      )
      (loop $label$12
       (local.set $6
        (local.get $2)
       )
       (br_if $label$12
        (local.tee $4
         (i32.load
          (local.tee $2
           (i32.add
            (local.tee $5
             (local.get $4)
            )
            (i32.const 20)
           )
          )
         )
        )
       )
       (local.set $2
        (i32.add
         (local.get $5)
         (i32.const 16)
        )
       )
       (br_if $label$12
        (local.tee $4
         (i32.load offset=16
          (local.get $5)
         )
        )
       )
      )
      (i32.store
       (local.get $6)
       (i32.const 0)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $7)
      )
     )
     (block $label$13
      (block $label$14
       (br_if $label$14
        (i32.ne
         (i32.load
          (local.tee $2
           (i32.add
            (i32.shl
             (local.tee $4
              (i32.load offset=28
               (local.get $1)
              )
             )
             (i32.const 2)
            )
            (i32.const 3824)
           )
          )
         )
         (local.get $1)
        )
       )
       (i32.store
        (local.get $2)
        (local.get $5)
       )
       (br_if $label$13
        (local.get $5)
       )
       (i32.store offset=3524
        (i32.const 0)
        (i32.and
         (i32.load offset=3524
          (i32.const 0)
         )
         (i32.rotl
          (i32.const -2)
          (local.get $4)
         )
        )
       )
       (br $label$2)
      )
      (i32.store
       (i32.add
        (local.get $7)
        (select
         (i32.const 16)
         (i32.const 20)
         (i32.eq
          (i32.load offset=16
           (local.get $7)
          )
          (local.get $1)
         )
        )
       )
       (local.get $5)
      )
      (br_if $label$2
       (i32.eqz
        (local.get $5)
       )
      )
     )
     (i32.store offset=24
      (local.get $5)
      (local.get $7)
     )
     (block $label$15
      (br_if $label$15
       (i32.eqz
        (local.tee $2
         (i32.load offset=16
          (local.get $1)
         )
        )
       )
      )
      (i32.store offset=16
       (local.get $5)
       (local.get $2)
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $5)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.tee $2
        (i32.load offset=20
         (local.get $1)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $5)
       (i32.const 20)
      )
      (local.get $2)
     )
     (i32.store offset=24
      (local.get $2)
      (local.get $5)
     )
     (br $label$2)
    )
    (br_if $label$2
     (i32.ne
      (i32.and
       (local.tee $2
        (i32.load offset=4
         (local.get $3)
        )
       )
       (i32.const 3)
      )
      (i32.const 3)
     )
    )
    (i32.store offset=4
     (local.get $3)
     (i32.and
      (local.get $2)
      (i32.const -2)
     )
    )
    (i32.store offset=3528
     (i32.const 0)
     (local.get $0)
    )
    (i32.store
     (i32.add
      (local.get $1)
      (local.get $0)
     )
     (local.get $0)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.or
      (local.get $0)
      (i32.const 1)
     )
    )
    (return)
   )
   (br_if $label$1
    (i32.le_u
     (local.get $3)
     (local.get $1)
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (local.tee $2
       (i32.load offset=4
        (local.get $3)
       )
      )
      (i32.const 1)
     )
    )
   )
   (block $label$16
    (block $label$17
     (br_if $label$17
      (i32.and
       (local.get $2)
       (i32.const 2)
      )
     )
     (block $label$18
      (br_if $label$18
       (i32.ne
        (i32.load offset=3544
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (i32.store offset=3544
       (i32.const 0)
       (local.get $1)
      )
      (i32.store offset=3532
       (i32.const 0)
       (local.tee $0
        (i32.add
         (i32.load offset=3532
          (i32.const 0)
         )
         (local.get $0)
        )
       )
      )
      (i32.store offset=4
       (local.get $1)
       (i32.or
        (local.get $0)
        (i32.const 1)
       )
      )
      (br_if $label$1
       (i32.ne
        (local.get $1)
        (i32.load offset=3540
         (i32.const 0)
        )
       )
      )
      (i32.store offset=3528
       (i32.const 0)
       (i32.const 0)
      )
      (i32.store offset=3540
       (i32.const 0)
       (i32.const 0)
      )
      (return)
     )
     (block $label$19
      (br_if $label$19
       (i32.ne
        (i32.load offset=3540
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (i32.store offset=3540
       (i32.const 0)
       (local.get $1)
      )
      (i32.store offset=3528
       (i32.const 0)
       (local.tee $0
        (i32.add
         (i32.load offset=3528
          (i32.const 0)
         )
         (local.get $0)
        )
       )
      )
      (i32.store offset=4
       (local.get $1)
       (i32.or
        (local.get $0)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $1)
        (local.get $0)
       )
       (local.get $0)
      )
      (return)
     )
     (local.set $0
      (i32.add
       (i32.and
        (local.get $2)
        (i32.const -8)
       )
       (local.get $0)
      )
     )
     (block $label$20
      (block $label$21
       (br_if $label$21
        (i32.gt_u
         (local.get $2)
         (i32.const 255)
        )
       )
       (local.set $4
        (i32.load offset=12
         (local.get $3)
        )
       )
       (block $label$22
        (br_if $label$22
         (i32.eq
          (local.tee $5
           (i32.load offset=8
            (local.get $3)
           )
          )
          (local.tee $2
           (i32.add
            (i32.shl
             (local.tee $3
              (i32.shr_u
               (local.get $2)
               (i32.const 3)
              )
             )
             (i32.const 3)
            )
            (i32.const 3560)
           )
          )
         )
        )
        (drop
         (i32.gt_u
          (i32.load offset=3536
           (i32.const 0)
          )
          (local.get $5)
         )
        )
       )
       (block $label$23
        (br_if $label$23
         (i32.ne
          (local.get $4)
          (local.get $5)
         )
        )
        (i32.store offset=3520
         (i32.const 0)
         (i32.and
          (i32.load offset=3520
           (i32.const 0)
          )
          (i32.rotl
           (i32.const -2)
           (local.get $3)
          )
         )
        )
        (br $label$20)
       )
       (block $label$24
        (br_if $label$24
         (i32.eq
          (local.get $4)
          (local.get $2)
         )
        )
        (drop
         (i32.gt_u
          (i32.load offset=3536
           (i32.const 0)
          )
          (local.get $4)
         )
        )
       )
       (i32.store offset=8
        (local.get $4)
        (local.get $5)
       )
       (i32.store offset=12
        (local.get $5)
        (local.get $4)
       )
       (br $label$20)
      )
      (local.set $7
       (i32.load offset=24
        (local.get $3)
       )
      )
      (block $label$25
       (block $label$26
        (br_if $label$26
         (i32.eq
          (local.tee $5
           (i32.load offset=12
            (local.get $3)
           )
          )
          (local.get $3)
         )
        )
        (block $label$27
         (br_if $label$27
          (i32.gt_u
           (i32.load offset=3536
            (i32.const 0)
           )
           (local.tee $2
            (i32.load offset=8
             (local.get $3)
            )
           )
          )
         )
         (drop
          (i32.ne
           (i32.load offset=12
            (local.get $2)
           )
           (local.get $3)
          )
         )
        )
        (i32.store offset=8
         (local.get $5)
         (local.get $2)
        )
        (i32.store offset=12
         (local.get $2)
         (local.get $5)
        )
        (br $label$25)
       )
       (block $label$28
        (br_if $label$28
         (local.tee $4
          (i32.load
           (local.tee $2
            (i32.add
             (local.get $3)
             (i32.const 20)
            )
           )
          )
         )
        )
        (br_if $label$28
         (local.tee $4
          (i32.load
           (local.tee $2
            (i32.add
             (local.get $3)
             (i32.const 16)
            )
           )
          )
         )
        )
        (local.set $5
         (i32.const 0)
        )
        (br $label$25)
       )
       (loop $label$29
        (local.set $6
         (local.get $2)
        )
        (br_if $label$29
         (local.tee $4
          (i32.load
           (local.tee $2
            (i32.add
             (local.tee $5
              (local.get $4)
             )
             (i32.const 20)
            )
           )
          )
         )
        )
        (local.set $2
         (i32.add
          (local.get $5)
          (i32.const 16)
         )
        )
        (br_if $label$29
         (local.tee $4
          (i32.load offset=16
           (local.get $5)
          )
         )
        )
       )
       (i32.store
        (local.get $6)
        (i32.const 0)
       )
      )
      (br_if $label$20
       (i32.eqz
        (local.get $7)
       )
      )
      (block $label$30
       (block $label$31
        (br_if $label$31
         (i32.ne
          (i32.load
           (local.tee $2
            (i32.add
             (i32.shl
              (local.tee $4
               (i32.load offset=28
                (local.get $3)
               )
              )
              (i32.const 2)
             )
             (i32.const 3824)
            )
           )
          )
          (local.get $3)
         )
        )
        (i32.store
         (local.get $2)
         (local.get $5)
        )
        (br_if $label$30
         (local.get $5)
        )
        (i32.store offset=3524
         (i32.const 0)
         (i32.and
          (i32.load offset=3524
           (i32.const 0)
          )
          (i32.rotl
           (i32.const -2)
           (local.get $4)
          )
         )
        )
        (br $label$20)
       )
       (i32.store
        (i32.add
         (local.get $7)
         (select
          (i32.const 16)
          (i32.const 20)
          (i32.eq
           (i32.load offset=16
            (local.get $7)
           )
           (local.get $3)
          )
         )
        )
        (local.get $5)
       )
       (br_if $label$20
        (i32.eqz
         (local.get $5)
        )
       )
      )
      (i32.store offset=24
       (local.get $5)
       (local.get $7)
      )
      (block $label$32
       (br_if $label$32
        (i32.eqz
         (local.tee $2
          (i32.load offset=16
           (local.get $3)
          )
         )
        )
       )
       (i32.store offset=16
        (local.get $5)
        (local.get $2)
       )
       (i32.store offset=24
        (local.get $2)
        (local.get $5)
       )
      )
      (br_if $label$20
       (i32.eqz
        (local.tee $2
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $5)
        (i32.const 20)
       )
       (local.get $2)
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $5)
      )
     )
     (i32.store
      (i32.add
       (local.get $1)
       (local.get $0)
      )
      (local.get $0)
     )
     (i32.store offset=4
      (local.get $1)
      (i32.or
       (local.get $0)
       (i32.const 1)
      )
     )
     (br_if $label$16
      (i32.ne
       (local.get $1)
       (i32.load offset=3540
        (i32.const 0)
       )
      )
     )
     (i32.store offset=3528
      (i32.const 0)
      (local.get $0)
     )
     (return)
    )
    (i32.store offset=4
     (local.get $3)
     (i32.and
      (local.get $2)
      (i32.const -2)
     )
    )
    (i32.store
     (i32.add
      (local.get $1)
      (local.get $0)
     )
     (local.get $0)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.or
      (local.get $0)
      (i32.const 1)
     )
    )
   )
   (block $label$33
    (br_if $label$33
     (i32.gt_u
      (local.get $0)
      (i32.const 255)
     )
    )
    (local.set $0
     (i32.add
      (i32.shl
       (local.tee $2
        (i32.shr_u
         (local.get $0)
         (i32.const 3)
        )
       )
       (i32.const 3)
      )
      (i32.const 3560)
     )
    )
    (block $label$34
     (block $label$35
      (br_if $label$35
       (i32.and
        (local.tee $4
         (i32.load offset=3520
          (i32.const 0)
         )
        )
        (local.tee $2
         (i32.shl
          (i32.const 1)
          (local.get $2)
         )
        )
       )
      )
      (i32.store offset=3520
       (i32.const 0)
       (i32.or
        (local.get $4)
        (local.get $2)
       )
      )
      (local.set $2
       (local.get $0)
      )
      (br $label$34)
     )
     (local.set $2
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (i32.store offset=12
     (local.get $2)
     (local.get $1)
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
    (i32.store offset=12
     (local.get $1)
     (local.get $0)
    )
    (i32.store offset=8
     (local.get $1)
     (local.get $2)
    )
    (return)
   )
   (local.set $2
    (i32.const 0)
   )
   (block $label$36
    (br_if $label$36
     (i32.eqz
      (local.tee $4
       (i32.shr_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
    )
    (local.set $2
     (i32.const 31)
    )
    (br_if $label$36
     (i32.gt_u
      (local.get $0)
      (i32.const 16777215)
     )
    )
    (local.set $2
     (i32.add
      (i32.or
       (i32.shl
        (local.tee $2
         (i32.sub
          (i32.shr_u
           (i32.shl
            (local.tee $5
             (i32.shl
              (local.tee $4
               (i32.shl
                (local.get $4)
                (local.tee $2
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $4)
                    (i32.const 1048320)
                   )
                   (i32.const 16)
                  )
                  (i32.const 8)
                 )
                )
               )
              )
              (local.tee $4
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.get $4)
                  (i32.const 520192)
                 )
                 (i32.const 16)
                )
                (i32.const 4)
               )
              )
             )
            )
            (local.tee $5
             (i32.and
              (i32.shr_u
               (i32.add
                (local.get $5)
                (i32.const 245760)
               )
               (i32.const 16)
              )
              (i32.const 2)
             )
            )
           )
           (i32.const 15)
          )
          (i32.or
           (i32.or
            (local.get $4)
            (local.get $2)
           )
           (local.get $5)
          )
         )
        )
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (local.get $0)
         (i32.add
          (local.get $2)
          (i32.const 21)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 28)
     )
    )
   )
   (i64.store offset=16 align=4
    (local.get $1)
    (i64.const 0)
   )
   (i32.store
    (i32.add
     (local.get $1)
     (i32.const 28)
    )
    (local.get $2)
   )
   (local.set $4
    (i32.add
     (i32.shl
      (local.get $2)
      (i32.const 2)
     )
     (i32.const 3824)
    )
   )
   (block $label$37
    (block $label$38
     (br_if $label$38
      (i32.and
       (local.tee $5
        (i32.load offset=3524
         (i32.const 0)
        )
       )
       (local.tee $3
        (i32.shl
         (i32.const 1)
         (local.get $2)
        )
       )
      )
     )
     (i32.store
      (local.get $4)
      (local.get $1)
     )
     (i32.store offset=3524
      (i32.const 0)
      (i32.or
       (local.get $5)
       (local.get $3)
      )
     )
     (i32.store
      (i32.add
       (local.get $1)
       (i32.const 24)
      )
      (local.get $4)
     )
     (i32.store offset=8
      (local.get $1)
      (local.get $1)
     )
     (i32.store offset=12
      (local.get $1)
      (local.get $1)
     )
     (br $label$37)
    )
    (local.set $2
     (i32.shl
      (local.get $0)
      (select
       (i32.const 0)
       (i32.sub
        (i32.const 25)
        (i32.shr_u
         (local.get $2)
         (i32.const 1)
        )
       )
       (i32.eq
        (local.get $2)
        (i32.const 31)
       )
      )
     )
    )
    (local.set $5
     (i32.load
      (local.get $4)
     )
    )
    (block $label$39
     (loop $label$40
      (br_if $label$39
       (i32.eq
        (i32.and
         (i32.load offset=4
          (local.tee $4
           (local.get $5)
          )
         )
         (i32.const -8)
        )
        (local.get $0)
       )
      )
      (local.set $5
       (i32.shr_u
        (local.get $2)
        (i32.const 29)
       )
      )
      (local.set $2
       (i32.shl
        (local.get $2)
        (i32.const 1)
       )
      )
      (br_if $label$40
       (local.tee $5
        (i32.load
         (local.tee $3
          (i32.add
           (i32.add
            (local.get $4)
            (i32.and
             (local.get $5)
             (i32.const 4)
            )
           )
           (i32.const 16)
          )
         )
        )
       )
      )
     )
     (i32.store
      (local.get $3)
      (local.get $1)
     )
     (i32.store offset=12
      (local.get $1)
      (local.get $1)
     )
     (i32.store
      (i32.add
       (local.get $1)
       (i32.const 24)
      )
      (local.get $4)
     )
     (i32.store offset=8
      (local.get $1)
      (local.get $1)
     )
     (br $label$37)
    )
    (local.set $0
     (i32.load offset=8
      (local.get $4)
     )
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $1)
    )
    (i32.store offset=12
     (local.get $0)
     (local.get $1)
    )
    (i32.store
     (i32.add
      (local.get $1)
      (i32.const 24)
     )
     (i32.const 0)
    )
    (i32.store offset=8
     (local.get $1)
     (local.get $0)
    )
    (i32.store offset=12
     (local.get $1)
     (local.get $4)
    )
   )
   (i32.store offset=3552
    (i32.const 0)
    (local.tee $1
     (i32.add
      (i32.load offset=3552
       (i32.const 0)
      )
      (i32.const -1)
     )
    )
   )
   (br_if $label$1
    (local.get $1)
   )
   (local.set $1
    (i32.const 3976)
   )
   (loop $label$41
    (local.set $1
     (i32.add
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (i32.const 8)
     )
    )
    (br_if $label$41
     (local.get $0)
    )
   )
   (i32.store offset=3552
    (i32.const 0)
    (i32.const -1)
   )
  )
 )
 (func $7 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (local.get $0)
    )
    (local.set $2
     (i32.const 0)
    )
    (br $label$1)
   )
   (local.set $2
    (i32.mul
     (local.get $1)
     (local.get $0)
    )
   )
   (br_if $label$1
    (i32.lt_u
     (i32.or
      (local.get $1)
      (local.get $0)
     )
     (i32.const 65536)
    )
   )
   (local.set $2
    (select
     (local.get $2)
     (i32.const -1)
     (i32.eq
      (i32.div_u
       (local.get $2)
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (local.tee $0
      (call $4
       (local.get $2)
      )
     )
    )
   )
   (br_if $label$3
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (local.get $0)
        (i32.const -4)
       )
      )
      (i32.const 3)
     )
    )
   )
   (drop
    (call $43
     (local.get $0)
     (i32.const 0)
     (local.get $2)
    )
   )
  )
  (local.get $0)
 )
 (func $8 (param $0 i32)
  (call $fimport$6
   (local.get $0)
  )
  (unreachable)
 )
 (func $9
  (unreachable)
 )
 (func $10 (param $0 i32) (result i32)
  (block $label$1
   (br_if $label$1
    (local.tee $0
     (call $fimport$8
      (local.get $0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4016
   (i32.const 0)
   (local.get $0)
  )
  (i32.const -1)
 )
 (func $11 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_s
      (i32.load
       (local.get $0)
      )
      (i32.const 0)
     )
    )
    (br_if $label$2
     (i32.gt_u
      (local.tee $1
       (i32.load offset=12
        (local.get $0)
       )
      )
      (local.tee $2
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
    )
    (local.set $0
     (i32.load offset=4
      (local.get $0)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $2)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $0)
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (local.get $1)
     )
    )
    (loop $label$4
     (br_if $label$2
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
     )
     (br_if $label$2
      (i32.le_s
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (i32.const -1)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 24)
      )
     )
     (br_if $label$1
      (i32.eqz
       (local.tee $1
        (i32.add
         (local.get $1)
         (i32.const -1)
        )
       )
      )
     )
     (br $label$4)
    )
   )
   (call $9)
   (unreachable)
  )
 )
 (func $12
  (local $0 i32)
  (local $1 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.tee $0
       (call $3
        (i32.const 16)
       )
      )
     )
    )
    (i32.store offset=4
     (local.get $0)
     (local.tee $1
      (call $7
       (i32.const 24)
       (i32.const 4)
      )
     )
    )
    (br_if $label$1
     (local.get $1)
    )
    (call $5
     (local.get $0)
    )
   )
   (i32.store offset=4020
    (i32.const 0)
    (i32.const 0)
   )
   (unreachable)
  )
  (i64.store offset=8 align=4
   (local.get $0)
   (i64.const 4)
  )
  (i32.store
   (local.get $0)
   (i32.const 1)
  )
  (call $11
   (local.get $0)
  )
  (i32.store offset=4020
   (i32.const 0)
   (local.get $0)
  )
  (call $11
   (local.get $0)
  )
 )
 (func $13 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (global.set $global$0
   (local.tee $2
    (i32.sub
     (global.get $global$0)
     (i32.const 32)
    )
   )
  )
  (call $11
   (i32.load offset=4020
    (i32.const 0)
   )
  )
  (local.set $3
   (i32.const -1)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $1)
    )
   )
   (call $11
    (local.tee $4
     (i32.load offset=4020
      (i32.const 0)
     )
    )
   )
   (br_if $label$1
    (i32.lt_s
     (local.get $0)
     (i32.const 0)
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (local.tee $5
        (i32.load offset=12
         (local.get $4)
        )
       )
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (local.set $6
      (i32.load offset=4
       (local.get $4)
      )
     )
     (br $label$2)
    )
    (br_if $label$1
     (i32.eqz
      (local.tee $6
       (call $7
        (i32.const 24)
        (i32.shl
         (local.get $5)
         (i32.const 1)
        )
       )
      )
     )
    )
    (drop
     (call $42
      (local.get $6)
      (i32.load offset=4
       (local.get $4)
      )
      (i32.mul
       (i32.load offset=12
        (local.get $4)
       )
       (i32.const 24)
      )
     )
    )
    (call $5
     (i32.load offset=4
      (local.get $4)
     )
    )
    (i32.store offset=4
     (local.get $4)
     (local.get $6)
    )
    (i32.store offset=8
     (local.get $4)
     (i32.shl
      (i32.load offset=8
       (local.get $4)
      )
      (i32.const 1)
     )
    )
    (local.set $5
     (i32.load offset=12
      (local.get $4)
     )
    )
   )
   (i32.store offset=12
    (local.get $4)
    (i32.add
     (local.get $5)
     (i32.const 1)
    )
   )
   (local.set $7
    (call $40
     (local.get $1)
    )
   )
   (i32.store offset=4
    (local.tee $1
     (i32.add
      (local.get $6)
      (i32.mul
       (local.get $5)
       (i32.const 24)
      )
     )
    )
    (local.get $0)
   )
   (i32.store
    (local.get $1)
    (local.get $7)
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.tee $0
       (call $fimport$7
        (local.get $0)
        (i32.add
         (local.get $2)
         (i32.const 8)
        )
       )
      )
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (local.get $0)
    )
    (br $label$1)
   )
   (i64.store offset=8
    (local.get $1)
    (i64.load offset=16
     (local.get $2)
    )
   )
   (i64.store offset=16
    (local.get $1)
    (i64.load offset=24
     (local.get $2)
    )
   )
   (call $11
    (local.get $4)
   )
   (call $11
    (local.get $4)
   )
   (local.set $3
    (i32.const 0)
   )
   (i32.store offset=4020
    (i32.const 0)
    (local.get $4)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $2)
    (i32.const 32)
   )
  )
  (local.get $3)
 )
 (func $14 (param $0 i32) (result i32)
  (block $label$1
   (br_if $label$1
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
   )
   (br_if $label$1
    (i32.le_s
     (local.get $0)
     (i32.const -1)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.ne
      (local.tee $0
       (memory.grow
        (i32.shr_u
         (local.get $0)
         (i32.const 16)
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (i32.const 48)
    )
    (return
     (i32.const -1)
    )
   )
   (return
    (i32.shl
     (local.get $0)
     (i32.const 16)
    )
   )
  )
  (call $9)
  (unreachable)
 )
 (func $15
 )
 (func $16
  (call $15)
  (call $30)
 )
 (func $17 (param $0 i32)
  (call $15)
  (call $30)
  (call $8
   (local.get $0)
  )
  (unreachable)
 )
 (func $18 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (global.set $global$0
   (local.tee $2
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $1)
  )
  (local.set $1
   (call $20
    (i32.const 5232)
    (local.get $0)
    (local.get $1)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $2)
    (i32.const 16)
   )
  )
  (local.get $1)
 )
 (func $19 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $1
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (local.tee $2
     (i32.load offset=4052
      (i32.const 0)
     )
    )
   )
   (local.set $2
    (i32.const 4028)
   )
   (i32.store offset=4052
    (i32.const 0)
    (i32.const 4028)
   )
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (loop $label$5
      (br_if $label$4
       (i32.eq
        (i32.load8_u
         (i32.add
          (local.get $1)
          (i32.const 1168)
         )
        )
        (local.get $0)
       )
      )
      (local.set $3
       (i32.const 77)
      )
      (br_if $label$5
       (i32.ne
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 77)
       )
      )
      (br $label$3)
     )
    )
    (local.set $3
     (local.get $1)
    )
    (br_if $label$3
     (local.get $1)
    )
    (local.set $4
     (i32.const 1248)
    )
    (br $label$2)
   )
   (local.set $1
    (i32.const 1248)
   )
   (loop $label$6
    (local.set $0
     (i32.load8_u
      (local.get $1)
     )
    )
    (local.set $1
     (local.tee $4
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
    )
    (br_if $label$6
     (local.get $0)
    )
    (local.set $1
     (local.get $4)
    )
    (br_if $label$6
     (local.tee $3
      (i32.add
       (local.get $3)
       (i32.const -1)
      )
     )
    )
   )
  )
  (call $46
   (local.get $4)
   (i32.load offset=20
    (local.get $2)
   )
  )
 )
 (func $20 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 208)
    )
   )
  )
  (i32.store offset=204
   (local.get $3)
   (local.get $2)
  )
  (i64.store
   (i32.add
    (i32.add
     (local.get $3)
     (i32.const 160)
    )
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (local.get $3)
    (i32.const 184)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (local.get $3)
    (i32.const 176)
   )
   (i64.const 0)
  )
  (i64.store offset=168
   (local.get $3)
   (i64.const 0)
  )
  (i64.store offset=160
   (local.get $3)
   (i64.const 0)
  )
  (i32.store offset=200
   (local.get $3)
   (local.get $2)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_s
      (call $21
       (i32.const 0)
       (local.get $1)
       (i32.add
        (local.get $3)
        (i32.const 200)
       )
       (i32.add
        (local.get $3)
        (i32.const 80)
       )
       (i32.add
        (local.get $3)
        (i32.const 160)
       )
      )
      (i32.const 0)
     )
    )
    (local.set $0
     (i32.const -1)
    )
    (br $label$1)
   )
   (local.set $4
    (i32.load
     (local.get $0)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (i32.load offset=60
       (local.get $0)
      )
      (i32.const 0)
     )
    )
    (i32.store
     (local.get $0)
     (i32.and
      (local.get $4)
      (i32.const -33)
     )
    )
   )
   (block $label$4
    (block $label$5
     (block $label$6
      (block $label$7
       (br_if $label$7
        (i32.load offset=44
         (local.get $0)
        )
       )
       (i32.store offset=44
        (local.get $0)
        (i32.const 80)
       )
       (i32.store offset=24
        (local.get $0)
        (i32.const 0)
       )
       (i64.store offset=16
        (local.get $0)
        (i64.const 0)
       )
       (local.set $5
        (i32.load offset=40
         (local.get $0)
        )
       )
       (i32.store offset=40
        (local.get $0)
        (local.get $3)
       )
       (br $label$6)
      )
      (local.set $5
       (i32.const 0)
      )
      (br_if $label$5
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
     (local.set $2
      (i32.const -1)
     )
     (br_if $label$4
      (call $28
       (local.get $0)
      )
     )
    )
    (local.set $2
     (call $21
      (local.get $0)
      (local.get $1)
      (i32.add
       (local.get $3)
       (i32.const 200)
      )
      (i32.add
       (local.get $3)
       (i32.const 80)
      )
      (i32.add
       (local.get $3)
       (i32.const 160)
      )
     )
    )
   )
   (local.set $1
    (i32.and
     (local.get $4)
     (i32.const 32)
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eqz
      (local.get $5)
     )
    )
    (drop
     (call_indirect (type $0)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.load offset=32
       (local.get $0)
      )
     )
    )
    (i32.store offset=44
     (local.get $0)
     (i32.const 0)
    )
    (i32.store offset=40
     (local.get $0)
     (local.get $5)
    )
    (i32.store offset=24
     (local.get $0)
     (i32.const 0)
    )
    (i32.store offset=16
     (local.get $0)
     (i32.const 0)
    )
    (local.set $5
     (i32.load offset=20
      (local.get $0)
     )
    )
    (i32.store offset=20
     (local.get $0)
     (i32.const 0)
    )
    (local.set $2
     (select
      (local.get $2)
      (i32.const -1)
      (local.get $5)
     )
    )
   )
   (i32.store
    (local.get $0)
    (i32.or
     (local.tee $5
      (i32.load
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (local.set $0
    (select
     (i32.const -1)
     (local.get $2)
     (i32.and
      (local.get $5)
      (i32.const 32)
     )
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 208)
   )
  )
  (local.get $0)
 )
 (func $21 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i64)
  (local $30 i64)
  (local $31 f64)
  (local $32 i32)
  (local $33 i32)
  (local $34 f64)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (global.set $global$0
   (local.tee $5
    (i32.sub
     (global.get $global$0)
     (i32.const 880)
    )
   )
  )
  (local.set $6
   (i32.or
    (i32.add
     (local.get $5)
     (i32.const 336)
    )
    (i32.const 8)
   )
  )
  (local.set $7
   (i32.add
    (local.get $5)
    (i32.const 55)
   )
  )
  (local.set $8
   (i32.sub
    (i32.const -2)
    (i32.add
     (local.get $5)
     (i32.const 336)
    )
   )
  )
  (local.set $9
   (i32.or
    (i32.add
     (local.get $5)
     (i32.const 336)
    )
    (i32.const 9)
   )
  )
  (local.set $10
   (i32.add
    (local.get $5)
    (i32.const 656)
   )
  )
  (local.set $11
   (i32.add
    (i32.add
     (local.get $5)
     (i32.const 324)
    )
    (i32.const 12)
   )
  )
  (local.set $12
   (i32.add
    (local.get $5)
    (i32.const 56)
   )
  )
  (local.set $13
   (i32.const 0)
  )
  (local.set $14
   (i32.const 0)
  )
  (local.set $15
   (i32.const 0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (loop $label$4
      (local.set $16
       (local.get $1)
      )
      (br_if $label$3
       (i32.gt_s
        (local.get $15)
        (i32.sub
         (i32.const 2147483647)
         (local.get $14)
        )
       )
      )
      (local.set $14
       (i32.add
        (local.get $15)
        (local.get $14)
       )
      )
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (br_if $label$8
           (i32.eqz
            (local.tee $15
             (i32.load8_u
              (local.get $16)
             )
            )
           )
          )
          (local.set $1
           (local.get $16)
          )
          (loop $label$9
           (block $label$10
            (block $label$11
             (block $label$12
              (br_if $label$12
               (i32.eqz
                (local.tee $15
                 (i32.and
                  (local.get $15)
                  (i32.const 255)
                 )
                )
               )
              )
              (br_if $label$10
               (i32.ne
                (local.get $15)
                (i32.const 37)
               )
              )
              (local.set $17
               (local.get $1)
              )
              (local.set $15
               (local.get $1)
              )
              (loop $label$13
               (block $label$14
                (br_if $label$14
                 (i32.eq
                  (i32.load8_u
                   (i32.add
                    (local.get $15)
                    (i32.const 1)
                   )
                  )
                  (i32.const 37)
                 )
                )
                (local.set $1
                 (local.get $15)
                )
                (br $label$11)
               )
               (local.set $17
                (i32.add
                 (local.get $17)
                 (i32.const 1)
                )
               )
               (local.set $18
                (i32.load8_u offset=2
                 (local.get $15)
                )
               )
               (local.set $15
                (local.tee $1
                 (i32.add
                  (local.get $15)
                  (i32.const 2)
                 )
                )
               )
               (br_if $label$13
                (i32.eq
                 (local.get $18)
                 (i32.const 37)
                )
               )
               (br $label$11)
              )
             )
             (local.set $17
              (local.get $1)
             )
            )
            (br_if $label$3
             (i32.gt_s
              (local.tee $15
               (i32.sub
                (local.get $17)
                (local.get $16)
               )
              )
              (local.tee $17
               (i32.sub
                (i32.const 2147483647)
                (local.get $14)
               )
              )
             )
            )
            (block $label$15
             (br_if $label$15
              (i32.eqz
               (local.get $0)
              )
             )
             (br_if $label$15
              (i32.and
               (i32.load8_u
                (local.get $0)
               )
               (i32.const 32)
              )
             )
             (drop
              (call $35
               (local.get $16)
               (local.get $15)
               (local.get $0)
              )
             )
            )
            (br_if $label$4
             (local.get $15)
            )
            (local.set $15
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
            (block $label$16
             (block $label$17
              (br_if $label$17
               (i32.le_u
                (local.tee $20
                 (i32.add
                  (local.tee $19
                   (i32.load8_s offset=1
                    (local.get $1)
                   )
                  )
                  (i32.const -48)
                 )
                )
                (i32.const 9)
               )
              )
              (local.set $21
               (i32.const -1)
              )
              (br $label$16)
             )
             (local.set $15
              (select
               (i32.add
                (local.get $1)
                (i32.const 3)
               )
               (local.get $15)
               (local.tee $18
                (i32.eq
                 (i32.load8_u offset=2
                  (local.get $1)
                 )
                 (i32.const 36)
                )
               )
              )
             )
             (local.set $21
              (select
               (local.get $20)
               (i32.const -1)
               (local.get $18)
              )
             )
             (local.set $13
              (select
               (i32.const 1)
               (local.get $13)
               (local.get $18)
              )
             )
             (local.set $19
              (i32.load8_s
               (i32.add
                (local.get $1)
                (select
                 (i32.const 3)
                 (i32.const 1)
                 (local.get $18)
                )
               )
              )
             )
            )
            (local.set $22
             (i32.const 0)
            )
            (block $label$18
             (br_if $label$18
              (i32.gt_u
               (local.tee $1
                (i32.add
                 (local.get $19)
                 (i32.const -32)
                )
               )
               (i32.const 31)
              )
             )
             (br_if $label$18
              (i32.eqz
               (i32.and
                (local.tee $1
                 (i32.shl
                  (i32.const 1)
                  (local.get $1)
                 )
                )
                (i32.const 75913)
               )
              )
             )
             (local.set $18
              (i32.add
               (local.get $15)
               (i32.const 1)
              )
             )
             (local.set $22
              (i32.const 0)
             )
             (loop $label$19
              (local.set $22
               (i32.or
                (local.get $1)
                (local.get $22)
               )
              )
              (br_if $label$18
               (i32.ge_u
                (local.tee $1
                 (i32.add
                  (local.tee $19
                   (i32.load8_s
                    (local.tee $15
                     (local.get $18)
                    )
                   )
                  )
                  (i32.const -32)
                 )
                )
                (i32.const 32)
               )
              )
              (local.set $18
               (i32.add
                (local.get $15)
                (i32.const 1)
               )
              )
              (br_if $label$19
               (i32.and
                (local.tee $1
                 (i32.shl
                  (i32.const 1)
                  (local.get $1)
                 )
                )
                (i32.const 75913)
               )
              )
             )
            )
            (block $label$20
             (block $label$21
              (br_if $label$21
               (i32.ne
                (local.get $19)
                (i32.const 42)
               )
              )
              (block $label$22
               (block $label$23
                (br_if $label$23
                 (i32.gt_u
                  (local.tee $1
                   (i32.add
                    (i32.load8_s offset=1
                     (local.get $15)
                    )
                    (i32.const -48)
                   )
                  )
                  (i32.const 9)
                 )
                )
                (br_if $label$23
                 (i32.ne
                  (i32.load8_u offset=2
                   (local.get $15)
                  )
                  (i32.const 36)
                 )
                )
                (i32.store
                 (i32.add
                  (local.get $4)
                  (i32.shl
                   (local.get $1)
                   (i32.const 2)
                  )
                 )
                 (i32.const 10)
                )
                (local.set $23
                 (i32.add
                  (local.get $15)
                  (i32.const 3)
                 )
                )
                (local.set $20
                 (i32.load
                  (i32.add
                   (i32.add
                    (i32.shl
                     (i32.load8_s offset=1
                      (local.get $15)
                     )
                     (i32.const 3)
                    )
                    (local.get $3)
                   )
                   (i32.const -384)
                  )
                 )
                )
                (local.set $13
                 (i32.const 1)
                )
                (br $label$22)
               )
               (br_if $label$7
                (local.get $13)
               )
               (local.set $23
                (i32.add
                 (local.get $15)
                 (i32.const 1)
                )
               )
               (block $label$24
                (br_if $label$24
                 (local.get $0)
                )
                (local.set $13
                 (i32.const 0)
                )
                (local.set $20
                 (i32.const 0)
                )
                (br $label$20)
               )
               (i32.store
                (local.get $2)
                (i32.add
                 (local.tee $1
                  (i32.load
                   (local.get $2)
                  )
                 )
                 (i32.const 4)
                )
               )
               (local.set $20
                (i32.load
                 (local.get $1)
                )
               )
               (local.set $13
                (i32.const 0)
               )
              )
              (br_if $label$20
               (i32.gt_s
                (local.get $20)
                (i32.const -1)
               )
              )
              (local.set $20
               (i32.sub
                (i32.const 0)
                (local.get $20)
               )
              )
              (local.set $22
               (i32.or
                (local.get $22)
                (i32.const 8192)
               )
              )
              (br $label$20)
             )
             (local.set $20
              (i32.const 0)
             )
             (block $label$25
              (br_if $label$25
               (i32.le_u
                (local.tee $18
                 (i32.add
                  (local.get $19)
                  (i32.const -48)
                 )
                )
                (i32.const 9)
               )
              )
              (local.set $23
               (local.get $15)
              )
              (br $label$20)
             )
             (local.set $1
              (i32.const 0)
             )
             (loop $label$26
              (local.set $20
               (i32.const -1)
              )
              (block $label$27
               (br_if $label$27
                (i32.gt_u
                 (local.get $1)
                 (i32.const 214748364)
                )
               )
               (local.set $20
                (select
                 (i32.const -1)
                 (i32.add
                  (local.tee $1
                   (i32.mul
                    (local.get $1)
                    (i32.const 10)
                   )
                  )
                  (local.get $18)
                 )
                 (i32.gt_s
                  (local.get $18)
                  (i32.sub
                   (i32.const 2147483647)
                   (local.get $1)
                  )
                 )
                )
               )
              )
              (local.set $18
               (i32.load8_s offset=1
                (local.get $15)
               )
              )
              (local.set $15
               (local.tee $23
                (i32.add
                 (local.get $15)
                 (i32.const 1)
                )
               )
              )
              (local.set $1
               (local.get $20)
              )
              (br_if $label$26
               (i32.lt_u
                (local.tee $18
                 (i32.add
                  (local.get $18)
                  (i32.const -48)
                 )
                )
                (i32.const 10)
               )
              )
             )
             (br_if $label$3
              (i32.lt_s
               (local.get $20)
               (i32.const 0)
              )
             )
            )
            (local.set $15
             (i32.const 0)
            )
            (local.set $19
             (i32.const -1)
            )
            (block $label$28
             (block $label$29
              (br_if $label$29
               (i32.eq
                (i32.load8_u
                 (local.get $23)
                )
                (i32.const 46)
               )
              )
              (local.set $1
               (local.get $23)
              )
              (local.set $24
               (i32.const 0)
              )
              (br $label$28)
             )
             (block $label$30
              (br_if $label$30
               (i32.ne
                (local.tee $18
                 (i32.load8_s offset=1
                  (local.get $23)
                 )
                )
                (i32.const 42)
               )
              )
              (block $label$31
               (block $label$32
                (br_if $label$32
                 (i32.gt_u
                  (local.tee $1
                   (i32.add
                    (i32.load8_s offset=2
                     (local.get $23)
                    )
                    (i32.const -48)
                   )
                  )
                  (i32.const 9)
                 )
                )
                (br_if $label$32
                 (i32.ne
                  (i32.load8_u offset=3
                   (local.get $23)
                  )
                  (i32.const 36)
                 )
                )
                (i32.store
                 (i32.add
                  (local.get $4)
                  (i32.shl
                   (local.get $1)
                   (i32.const 2)
                  )
                 )
                 (i32.const 10)
                )
                (local.set $1
                 (i32.add
                  (local.get $23)
                  (i32.const 4)
                 )
                )
                (local.set $19
                 (i32.load
                  (i32.add
                   (i32.add
                    (i32.shl
                     (i32.load8_s offset=2
                      (local.get $23)
                     )
                     (i32.const 3)
                    )
                    (local.get $3)
                   )
                   (i32.const -384)
                  )
                 )
                )
                (br $label$31)
               )
               (br_if $label$7
                (local.get $13)
               )
               (local.set $1
                (i32.add
                 (local.get $23)
                 (i32.const 2)
                )
               )
               (block $label$33
                (br_if $label$33
                 (local.get $0)
                )
                (local.set $19
                 (i32.const 0)
                )
                (br $label$31)
               )
               (i32.store
                (local.get $2)
                (i32.add
                 (local.tee $18
                  (i32.load
                   (local.get $2)
                  )
                 )
                 (i32.const 4)
                )
               )
               (local.set $19
                (i32.load
                 (local.get $18)
                )
               )
              )
              (local.set $24
               (i32.shr_u
                (i32.xor
                 (local.get $19)
                 (i32.const -1)
                )
                (i32.const 31)
               )
              )
              (br $label$28)
             )
             (local.set $1
              (i32.add
               (local.get $23)
               (i32.const 1)
              )
             )
             (block $label$34
              (br_if $label$34
               (i32.le_u
                (local.tee $25
                 (i32.add
                  (local.get $18)
                  (i32.const -48)
                 )
                )
                (i32.const 9)
               )
              )
              (local.set $24
               (i32.const 1)
              )
              (local.set $19
               (i32.const 0)
              )
              (br $label$28)
             )
             (local.set $23
              (i32.const 0)
             )
             (local.set $18
              (local.get $1)
             )
             (loop $label$35
              (local.set $19
               (i32.const -1)
              )
              (block $label$36
               (br_if $label$36
                (i32.gt_u
                 (local.get $23)
                 (i32.const 214748364)
                )
               )
               (local.set $19
                (select
                 (i32.const -1)
                 (i32.add
                  (local.tee $1
                   (i32.mul
                    (local.get $23)
                    (i32.const 10)
                   )
                  )
                  (local.get $25)
                 )
                 (i32.gt_s
                  (local.get $25)
                  (i32.sub
                   (i32.const 2147483647)
                   (local.get $1)
                  )
                 )
                )
               )
              )
              (local.set $24
               (i32.const 1)
              )
              (local.set $25
               (i32.load8_s offset=1
                (local.get $18)
               )
              )
              (local.set $18
               (local.tee $1
                (i32.add
                 (local.get $18)
                 (i32.const 1)
                )
               )
              )
              (local.set $23
               (local.get $19)
              )
              (br_if $label$35
               (i32.lt_u
                (local.tee $25
                 (i32.add
                  (local.get $25)
                  (i32.const -48)
                 )
                )
                (i32.const 10)
               )
              )
             )
            )
            (loop $label$37
             (local.set $18
              (local.get $15)
             )
             (br_if $label$7
              (i32.gt_u
               (local.tee $15
                (i32.add
                 (i32.load8_s
                  (local.get $1)
                 )
                 (i32.const -65)
                )
               )
               (i32.const 57)
              )
             )
             (local.set $1
              (i32.add
               (local.get $1)
               (i32.const 1)
              )
             )
             (br_if $label$37
              (i32.lt_u
               (i32.add
                (local.tee $15
                 (i32.load8_u
                  (i32.add
                   (i32.add
                    (i32.mul
                     (local.get $18)
                     (i32.const 58)
                    )
                    (local.get $15)
                   )
                   (i32.const 2848)
                  )
                 )
                )
                (i32.const -1)
               )
               (i32.const 8)
              )
             )
            )
            (br_if $label$7
             (i32.eqz
              (local.get $15)
             )
            )
            (block $label$38
             (block $label$39
              (block $label$40
               (block $label$41
                (br_if $label$41
                 (i32.ne
                  (local.get $15)
                  (i32.const 27)
                 )
                )
                (br_if $label$40
                 (i32.le_s
                  (local.get $21)
                  (i32.const -1)
                 )
                )
                (br $label$7)
               )
               (br_if $label$39
                (i32.lt_s
                 (local.get $21)
                 (i32.const 0)
                )
               )
               (i32.store
                (i32.add
                 (local.get $4)
                 (i32.shl
                  (local.get $21)
                  (i32.const 2)
                 )
                )
                (local.get $15)
               )
               (i64.store offset=56
                (local.get $5)
                (i64.load
                 (i32.add
                  (local.get $3)
                  (i32.shl
                   (local.get $21)
                   (i32.const 3)
                  )
                 )
                )
               )
              )
              (local.set $15
               (i32.const 0)
              )
              (br_if $label$4
               (i32.eqz
                (local.get $0)
               )
              )
              (br $label$38)
             )
             (block $label$42
              (br_if $label$42
               (local.get $0)
              )
              (local.set $14
               (i32.const 0)
              )
              (br $label$1)
             )
             (call $22
              (i32.add
               (local.get $5)
               (i32.const 56)
              )
              (local.get $15)
              (local.get $2)
             )
            )
            (local.set $21
             (select
              (local.tee $23
               (i32.and
                (local.get $22)
                (i32.const -65537)
               )
              )
              (local.get $22)
              (i32.and
               (local.get $22)
               (i32.const 8192)
              )
             )
            )
            (block $label$43
             (block $label$44
              (block $label$45
               (br_if $label$45
                (i32.gt_u
                 (local.tee $15
                  (i32.add
                   (local.tee $26
                    (select
                     (select
                      (i32.and
                       (local.tee $15
                        (i32.load8_s
                         (i32.add
                          (local.get $1)
                          (i32.const -1)
                         )
                        )
                       )
                       (i32.const -33)
                      )
                      (local.get $15)
                      (i32.eq
                       (i32.and
                        (local.get $15)
                        (i32.const 15)
                       )
                       (i32.const 3)
                      )
                     )
                     (local.get $15)
                     (local.get $18)
                    )
                   )
                   (i32.const -65)
                  )
                 )
                 (i32.const 55)
                )
               )
               (block $label$46
                (block $label$47
                 (block $label$48
                  (block $label$49
                   (block $label$50
                    (block $label$51
                     (block $label$52
                      (block $label$53
                       (block $label$54
                        (block $label$55
                         (block $label$56
                          (block $label$57
                           (block $label$58
                            (block $label$59
                             (block $label$60
                              (block $label$61
                               (block $label$62
                                (br_table $label$46 $label$45 $label$49 $label$45 $label$46 $label$46 $label$46 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$50 $label$45 $label$45 $label$45 $label$45 $label$59 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$45 $label$46 $label$45 $label$54 $label$57 $label$46 $label$46 $label$46 $label$45 $label$57 $label$45 $label$45 $label$45 $label$53 $label$61 $label$58 $label$60 $label$45 $label$45 $label$52 $label$45 $label$62 $label$45 $label$45 $label$59 $label$46
                                 (local.get $15)
                                )
                               )
                               (local.set $27
                                (i32.const 0)
                               )
                               (local.set $28
                                (i32.const 2822)
                               )
                               (local.set $29
                                (i64.load offset=56
                                 (local.get $5)
                                )
                               )
                               (br $label$56)
                              )
                              (local.set $15
                               (i32.const 0)
                              )
                              (br_if $label$4
                               (i32.gt_u
                                (local.tee $17
                                 (i32.and
                                  (local.get $18)
                                  (i32.const 255)
                                 )
                                )
                                (i32.const 7)
                               )
                              )
                              (block $label$63
                               (block $label$64
                                (block $label$65
                                 (block $label$66
                                  (block $label$67
                                   (block $label$68
                                    (block $label$69
                                     (br_table $label$69 $label$68 $label$67 $label$66 $label$65 $label$4 $label$64 $label$63 $label$69
                                      (local.get $17)
                                     )
                                    )
                                    (i32.store
                                     (i32.load offset=56
                                      (local.get $5)
                                     )
                                     (local.get $14)
                                    )
                                    (br $label$4)
                                   )
                                   (i32.store
                                    (i32.load offset=56
                                     (local.get $5)
                                    )
                                    (local.get $14)
                                   )
                                   (br $label$4)
                                  )
                                  (i64.store
                                   (i32.load offset=56
                                    (local.get $5)
                                   )
                                   (i64.extend_i32_s
                                    (local.get $14)
                                   )
                                  )
                                  (br $label$4)
                                 )
                                 (i32.store16
                                  (i32.load offset=56
                                   (local.get $5)
                                  )
                                  (local.get $14)
                                 )
                                 (br $label$4)
                                )
                                (i32.store8
                                 (i32.load offset=56
                                  (local.get $5)
                                 )
                                 (local.get $14)
                                )
                                (br $label$4)
                               )
                               (i32.store
                                (i32.load offset=56
                                 (local.get $5)
                                )
                                (local.get $14)
                               )
                               (br $label$4)
                              )
                              (i64.store
                               (i32.load offset=56
                                (local.get $5)
                               )
                               (i64.extend_i32_s
                                (local.get $14)
                               )
                              )
                              (br $label$4)
                             )
                             (local.set $19
                              (select
                               (local.get $19)
                               (i32.const 8)
                               (i32.gt_u
                                (local.get $19)
                                (i32.const 8)
                               )
                              )
                             )
                             (local.set $21
                              (i32.or
                               (local.get $21)
                               (i32.const 8)
                              )
                             )
                             (local.set $26
                              (i32.const 120)
                             )
                            )
                            (local.set $27
                             (i32.const 0)
                            )
                            (local.set $28
                             (i32.const 2822)
                            )
                            (block $label$70
                             (br_if $label$70
                              (i32.eqz
                               (i64.eqz
                                (local.tee $29
                                 (i64.load offset=56
                                  (local.get $5)
                                 )
                                )
                               )
                              )
                             )
                             (local.set $16
                              (local.get $12)
                             )
                             (br $label$55)
                            )
                            (local.set $15
                             (i32.and
                              (local.get $26)
                              (i32.const 32)
                             )
                            )
                            (local.set $16
                             (local.get $12)
                            )
                            (loop $label$71
                             (i32.store8
                              (local.tee $16
                               (i32.add
                                (local.get $16)
                                (i32.const -1)
                               )
                              )
                              (i32.or
                               (i32.load8_u
                                (i32.add
                                 (i32.and
                                  (i32.wrap_i64
                                   (local.get $29)
                                  )
                                  (i32.const 15)
                                 )
                                 (i32.const 3456)
                                )
                               )
                               (local.get $15)
                              )
                             )
                             (br_if $label$71
                              (i64.ne
                               (local.tee $29
                                (i64.shr_u
                                 (local.get $29)
                                 (i64.const 4)
                                )
                               )
                               (i64.const 0)
                              )
                             )
                            )
                            (br_if $label$55
                             (i32.eqz
                              (i32.and
                               (local.get $21)
                               (i32.const 8)
                              )
                             )
                            )
                            (br_if $label$55
                             (i64.eqz
                              (i64.load offset=56
                               (local.get $5)
                              )
                             )
                            )
                            (local.set $28
                             (i32.add
                              (i32.shr_s
                               (local.get $26)
                               (i32.const 4)
                              )
                              (i32.const 2822)
                             )
                            )
                            (local.set $27
                             (i32.const 2)
                            )
                            (br $label$55)
                           )
                           (local.set $16
                            (local.get $12)
                           )
                           (block $label$72
                            (br_if $label$72
                             (i64.eqz
                              (local.tee $29
                               (i64.load offset=56
                                (local.get $5)
                               )
                              )
                             )
                            )
                            (local.set $16
                             (local.get $12)
                            )
                            (loop $label$73
                             (i32.store8
                              (local.tee $16
                               (i32.add
                                (local.get $16)
                                (i32.const -1)
                               )
                              )
                              (i32.or
                               (i32.and
                                (i32.wrap_i64
                                 (local.get $29)
                                )
                                (i32.const 7)
                               )
                               (i32.const 48)
                              )
                             )
                             (br_if $label$73
                              (i64.ne
                               (local.tee $29
                                (i64.shr_u
                                 (local.get $29)
                                 (i64.const 3)
                                )
                               )
                               (i64.const 0)
                              )
                             )
                            )
                           )
                           (local.set $27
                            (i32.const 0)
                           )
                           (local.set $28
                            (i32.const 2822)
                           )
                           (br_if $label$55
                            (i32.eqz
                             (i32.and
                              (local.get $21)
                              (i32.const 8)
                             )
                            )
                           )
                           (local.set $19
                            (select
                             (local.get $19)
                             (i32.add
                              (local.tee $15
                               (i32.sub
                                (local.get $12)
                                (local.get $16)
                               )
                              )
                              (i32.const 1)
                             )
                             (i32.gt_s
                              (local.get $19)
                              (local.get $15)
                             )
                            )
                           )
                           (br $label$55)
                          )
                          (block $label$74
                           (br_if $label$74
                            (i64.gt_s
                             (local.tee $29
                              (i64.load offset=56
                               (local.get $5)
                              )
                             )
                             (i64.const -1)
                            )
                           )
                           (i64.store offset=56
                            (local.get $5)
                            (local.tee $29
                             (i64.sub
                              (i64.const 0)
                              (local.get $29)
                             )
                            )
                           )
                           (local.set $27
                            (i32.const 1)
                           )
                           (local.set $28
                            (i32.const 2822)
                           )
                           (br $label$56)
                          )
                          (block $label$75
                           (br_if $label$75
                            (i32.eqz
                             (i32.and
                              (local.get $21)
                              (i32.const 2048)
                             )
                            )
                           )
                           (local.set $27
                            (i32.const 1)
                           )
                           (local.set $28
                            (i32.const 2823)
                           )
                           (br $label$56)
                          )
                          (local.set $28
                           (select
                            (i32.const 2824)
                            (i32.const 2822)
                            (local.tee $27
                             (i32.and
                              (local.get $21)
                              (i32.const 1)
                             )
                            )
                           )
                          )
                         )
                         (block $label$76
                          (block $label$77
                           (br_if $label$77
                            (i64.ge_u
                             (local.get $29)
                             (i64.const 4294967296)
                            )
                           )
                           (local.set $30
                            (local.get $29)
                           )
                           (local.set $16
                            (local.get $12)
                           )
                           (br $label$76)
                          )
                          (local.set $16
                           (local.get $12)
                          )
                          (loop $label$78
                           (i32.store8
                            (local.tee $16
                             (i32.add
                              (local.get $16)
                              (i32.const -1)
                             )
                            )
                            (i32.or
                             (i32.wrap_i64
                              (i64.sub
                               (local.get $29)
                               (i64.mul
                                (local.tee $30
                                 (i64.div_u
                                  (local.get $29)
                                  (i64.const 10)
                                 )
                                )
                                (i64.const 10)
                               )
                              )
                             )
                             (i32.const 48)
                            )
                           )
                           (local.set $15
                            (i64.gt_u
                             (local.get $29)
                             (i64.const 42949672959)
                            )
                           )
                           (local.set $29
                            (local.get $30)
                           )
                           (br_if $label$78
                            (local.get $15)
                           )
                          )
                         )
                         (br_if $label$55
                          (i32.eqz
                           (local.tee $15
                            (i32.wrap_i64
                             (local.get $30)
                            )
                           )
                          )
                         )
                         (loop $label$79
                          (i32.store8
                           (local.tee $16
                            (i32.add
                             (local.get $16)
                             (i32.const -1)
                            )
                           )
                           (i32.or
                            (i32.sub
                             (local.get $15)
                             (i32.mul
                              (local.tee $18
                               (i32.div_u
                                (local.get $15)
                                (i32.const 10)
                               )
                              )
                              (i32.const 10)
                             )
                            )
                            (i32.const 48)
                           )
                          )
                          (local.set $22
                           (i32.gt_u
                            (local.get $15)
                            (i32.const 9)
                           )
                          )
                          (local.set $15
                           (local.get $18)
                          )
                          (br_if $label$79
                           (local.get $22)
                          )
                         )
                        )
                        (block $label$80
                         (br_if $label$80
                          (i32.eqz
                           (local.get $24)
                          )
                         )
                         (br_if $label$3
                          (i32.lt_s
                           (local.get $19)
                           (i32.const 0)
                          )
                         )
                        )
                        (local.set $21
                         (select
                          (i32.and
                           (local.get $21)
                           (i32.const -65537)
                          )
                          (local.get $21)
                          (local.get $24)
                         )
                        )
                        (local.set $29
                         (i64.load offset=56
                          (local.get $5)
                         )
                        )
                        (block $label$81
                         (br_if $label$81
                          (local.get $19)
                         )
                         (br_if $label$81
                          (i32.eqz
                           (i64.eqz
                            (local.get $29)
                           )
                          )
                         )
                         (local.set $16
                          (local.get $12)
                         )
                         (local.set $15
                          (local.get $12)
                         )
                         (local.set $19
                          (i32.const 0)
                         )
                         (br $label$5)
                        )
                        (local.set $19
                         (select
                          (local.get $19)
                          (local.tee $15
                           (i32.add
                            (i32.sub
                             (local.get $12)
                             (local.get $16)
                            )
                            (i64.eqz
                             (local.get $29)
                            )
                           )
                          )
                          (i32.gt_s
                           (local.get $19)
                           (local.get $15)
                          )
                         )
                        )
                        (br $label$44)
                       )
                       (i64.store8 offset=55
                        (local.get $5)
                        (i64.load offset=56
                         (local.get $5)
                        )
                       )
                       (local.set $27
                        (i32.const 0)
                       )
                       (local.set $28
                        (i32.const 2822)
                       )
                       (local.set $19
                        (i32.const 1)
                       )
                       (local.set $16
                        (local.get $7)
                       )
                       (local.set $15
                        (local.get $12)
                       )
                       (local.set $21
                        (local.get $23)
                       )
                       (br $label$5)
                      )
                      (local.set $16
                       (call $19
                        (i32.load offset=4016
                         (i32.const 0)
                        )
                       )
                      )
                      (br $label$51)
                     )
                     (local.set $16
                      (select
                       (local.tee $15
                        (i32.load offset=56
                         (local.get $5)
                        )
                       )
                       (i32.const 2832)
                       (local.get $15)
                      )
                     )
                    )
                    (local.set $27
                     (i32.const 0)
                    )
                    (local.set $15
                     (i32.add
                      (local.get $16)
                      (local.tee $18
                       (call $41
                        (local.get $16)
                        (select
                         (i32.const 2147483647)
                         (local.get $19)
                         (i32.lt_s
                          (local.get $19)
                          (i32.const 0)
                         )
                        )
                       )
                      )
                     )
                    )
                    (local.set $28
                     (i32.const 2822)
                    )
                    (br_if $label$43
                     (i32.le_s
                      (local.get $19)
                      (i32.const -1)
                     )
                    )
                    (local.set $21
                     (local.get $23)
                    )
                    (local.set $19
                     (local.get $18)
                    )
                    (br $label$5)
                   )
                   (local.set $16
                    (i32.load offset=56
                     (local.get $5)
                    )
                   )
                   (br_if $label$48
                    (local.get $19)
                   )
                   (local.set $15
                    (i32.const 0)
                   )
                   (br $label$47)
                  )
                  (i32.store offset=12
                   (local.get $5)
                   (i32.const 0)
                  )
                  (i64.store32 offset=8
                   (local.get $5)
                   (i64.load offset=56
                    (local.get $5)
                   )
                  )
                  (i32.store offset=56
                   (local.get $5)
                   (i32.add
                    (local.get $5)
                    (i32.const 8)
                   )
                  )
                  (local.set $19
                   (i32.const -1)
                  )
                  (local.set $16
                   (i32.add
                    (local.get $5)
                    (i32.const 8)
                   )
                  )
                 )
                 (local.set $15
                  (i32.const 0)
                 )
                 (local.set $17
                  (local.get $16)
                 )
                 (block $label$82
                  (loop $label$83
                   (br_if $label$82
                    (i32.eqz
                     (local.tee $18
                      (i32.load
                       (local.get $17)
                      )
                     )
                    )
                   )
                   (block $label$84
                    (br_if $label$84
                     (local.tee $22
                      (i32.lt_s
                       (local.tee $18
                        (call $48
                         (i32.add
                          (local.get $5)
                          (i32.const 4)
                         )
                         (local.get $18)
                        )
                       )
                       (i32.const 0)
                      )
                     )
                    )
                    (br_if $label$84
                     (i32.gt_u
                      (local.get $18)
                      (i32.sub
                       (local.get $19)
                       (local.get $15)
                      )
                     )
                    )
                    (local.set $17
                     (i32.add
                      (local.get $17)
                      (i32.const 4)
                     )
                    )
                    (br_if $label$83
                     (i32.gt_u
                      (local.get $19)
                      (local.tee $15
                       (i32.add
                        (local.get $18)
                        (local.get $15)
                       )
                      )
                     )
                    )
                    (br $label$82)
                   )
                  )
                  (br_if $label$2
                   (local.get $22)
                  )
                 )
                 (br_if $label$3
                  (i32.lt_s
                   (local.get $15)
                   (i32.const 0)
                  )
                 )
                )
                (block $label$85
                 (br_if $label$85
                  (local.tee $23
                   (i32.and
                    (local.get $21)
                    (i32.const 73728)
                   )
                  )
                 )
                 (br_if $label$85
                  (i32.le_s
                   (local.get $20)
                   (local.get $15)
                  )
                 )
                 (drop
                  (call $43
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (i32.const 32)
                   (select
                    (local.tee $25
                     (i32.sub
                      (local.get $20)
                      (local.get $15)
                     )
                    )
                    (i32.const 256)
                    (local.tee $17
                     (i32.lt_u
                      (local.get $25)
                      (i32.const 256)
                     )
                    )
                   )
                  )
                 )
                 (local.set $18
                  (i32.and
                   (local.tee $19
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 32)
                  )
                 )
                 (block $label$86
                  (block $label$87
                   (br_if $label$87
                    (local.get $17)
                   )
                   (local.set $17
                    (i32.eqz
                     (local.get $18)
                    )
                   )
                   (local.set $18
                    (local.get $25)
                   )
                   (loop $label$88
                    (block $label$89
                     (br_if $label$89
                      (i32.eqz
                       (i32.and
                        (local.get $17)
                        (i32.const 1)
                       )
                      )
                     )
                     (drop
                      (call $35
                       (i32.add
                        (local.get $5)
                        (i32.const 64)
                       )
                       (i32.const 256)
                       (local.get $0)
                      )
                     )
                     (local.set $19
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $17
                     (i32.eqz
                      (local.tee $22
                       (i32.and
                        (local.get $19)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (br_if $label$88
                     (i32.gt_u
                      (local.tee $18
                       (i32.add
                        (local.get $18)
                        (i32.const -256)
                       )
                      )
                      (i32.const 255)
                     )
                    )
                   )
                   (br_if $label$85
                    (local.get $22)
                   )
                   (local.set $25
                    (i32.and
                     (local.get $25)
                     (i32.const 255)
                    )
                   )
                   (br $label$86)
                  )
                  (br_if $label$85
                   (local.get $18)
                  )
                 )
                 (drop
                  (call $35
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (local.get $25)
                   (local.get $0)
                  )
                 )
                )
                (block $label$90
                 (br_if $label$90
                  (i32.eqz
                   (local.get $15)
                  )
                 )
                 (local.set $17
                  (i32.const 0)
                 )
                 (loop $label$91
                  (br_if $label$90
                   (i32.eqz
                    (local.tee $18
                     (i32.load
                      (local.get $16)
                     )
                    )
                   )
                  )
                  (br_if $label$90
                   (i32.gt_u
                    (local.tee $17
                     (i32.add
                      (local.tee $18
                       (call $48
                        (i32.add
                         (local.get $5)
                         (i32.const 4)
                        )
                        (local.get $18)
                       )
                      )
                      (local.get $17)
                     )
                    )
                    (local.get $15)
                   )
                  )
                  (block $label$92
                   (br_if $label$92
                    (i32.and
                     (i32.load8_u
                      (local.get $0)
                     )
                     (i32.const 32)
                    )
                   )
                   (drop
                    (call $35
                     (i32.add
                      (local.get $5)
                      (i32.const 4)
                     )
                     (local.get $18)
                     (local.get $0)
                    )
                   )
                  )
                  (local.set $16
                   (i32.add
                    (local.get $16)
                    (i32.const 4)
                   )
                  )
                  (br_if $label$91
                   (i32.lt_u
                    (local.get $17)
                    (local.get $15)
                   )
                  )
                 )
                )
                (block $label$93
                 (br_if $label$93
                  (i32.ne
                   (local.get $23)
                   (i32.const 8192)
                  )
                 )
                 (br_if $label$93
                  (i32.le_s
                   (local.get $20)
                   (local.get $15)
                  )
                 )
                 (drop
                  (call $43
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (i32.const 32)
                   (select
                    (local.tee $22
                     (i32.sub
                      (local.get $20)
                      (local.get $15)
                     )
                    )
                    (i32.const 256)
                    (local.tee $17
                     (i32.lt_u
                      (local.get $22)
                      (i32.const 256)
                     )
                    )
                   )
                  )
                 )
                 (local.set $18
                  (i32.and
                   (local.tee $16
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 32)
                  )
                 )
                 (block $label$94
                  (block $label$95
                   (br_if $label$95
                    (local.get $17)
                   )
                   (local.set $17
                    (i32.eqz
                     (local.get $18)
                    )
                   )
                   (local.set $18
                    (local.get $22)
                   )
                   (loop $label$96
                    (block $label$97
                     (br_if $label$97
                      (i32.eqz
                       (i32.and
                        (local.get $17)
                        (i32.const 1)
                       )
                      )
                     )
                     (drop
                      (call $35
                       (i32.add
                        (local.get $5)
                        (i32.const 64)
                       )
                       (i32.const 256)
                       (local.get $0)
                      )
                     )
                     (local.set $16
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $17
                     (i32.eqz
                      (local.tee $19
                       (i32.and
                        (local.get $16)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (br_if $label$96
                     (i32.gt_u
                      (local.tee $18
                       (i32.add
                        (local.get $18)
                        (i32.const -256)
                       )
                      )
                      (i32.const 255)
                     )
                    )
                   )
                   (br_if $label$93
                    (local.get $19)
                   )
                   (local.set $22
                    (i32.and
                     (local.get $22)
                     (i32.const 255)
                    )
                   )
                   (br $label$94)
                  )
                  (br_if $label$93
                   (local.get $18)
                  )
                 )
                 (drop
                  (call $35
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (local.get $22)
                   (local.get $0)
                  )
                 )
                )
                (local.set $15
                 (select
                  (local.get $20)
                  (local.get $15)
                  (i32.gt_s
                   (local.get $20)
                   (local.get $15)
                  )
                 )
                )
                (br $label$4)
               )
               (block $label$98
                (br_if $label$98
                 (i32.gt_s
                  (local.get $19)
                  (i32.const -1)
                 )
                )
                (br_if $label$3
                 (local.get $24)
                )
               )
               (local.set $31
                (f64.load offset=56
                 (local.get $5)
                )
               )
               (i32.store offset=364
                (local.get $5)
                (i32.const 0)
               )
               (block $label$99
                (block $label$100
                 (br_if $label$100
                  (i64.gt_s
                   (i64.reinterpret_f64
                    (local.get $31)
                   )
                   (i64.const -1)
                  )
                 )
                 (local.set $31
                  (f64.neg
                   (local.get $31)
                  )
                 )
                 (local.set $32
                  (i32.const 1)
                 )
                 (local.set $33
                  (i32.const 3472)
                 )
                 (br $label$99)
                )
                (block $label$101
                 (br_if $label$101
                  (i32.eqz
                   (i32.and
                    (local.get $21)
                    (i32.const 2048)
                   )
                  )
                 )
                 (local.set $32
                  (i32.const 1)
                 )
                 (local.set $33
                  (i32.const 3475)
                 )
                 (br $label$99)
                )
                (local.set $33
                 (select
                  (i32.const 3478)
                  (i32.const 3473)
                  (local.tee $32
                   (i32.and
                    (local.get $21)
                    (i32.const 1)
                   )
                  )
                 )
                )
               )
               (block $label$102
                (block $label$103
                 (br_if $label$103
                  (i32.and
                   (f64.ne
                    (local.tee $34
                     (f64.abs
                      (local.get $31)
                     )
                    )
                    (f64.const inf)
                   )
                   (f64.eq
                    (local.get $34)
                    (local.get $34)
                   )
                  )
                 )
                 (local.set $19
                  (i32.add
                   (local.get $32)
                   (i32.const 3)
                  )
                 )
                 (block $label$104
                  (br_if $label$104
                   (i32.and
                    (local.get $21)
                    (i32.const 8192)
                   )
                  )
                  (br_if $label$104
                   (i32.le_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 32)
                    (select
                     (local.tee $22
                      (i32.sub
                       (local.get $20)
                       (local.get $19)
                      )
                     )
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $22)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$105
                   (block $label$106
                    (br_if $label$106
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $22)
                    )
                    (loop $label$107
                     (block $label$108
                      (br_if $label$108
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$107
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$104
                     (local.get $16)
                    )
                    (local.set $22
                     (i32.and
                      (local.get $22)
                      (i32.const 255)
                     )
                    )
                    (br $label$105)
                   )
                   (br_if $label$104
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $22)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$109
                  (br_if $label$109
                   (i32.and
                    (local.tee $15
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (drop
                   (call $35
                    (local.get $33)
                    (local.get $32)
                    (local.get $0)
                   )
                  )
                  (local.set $15
                   (i32.load
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$110
                  (br_if $label$110
                   (i32.and
                    (local.get $15)
                    (i32.const 32)
                   )
                  )
                  (drop
                   (call $35
                    (select
                     (select
                      (i32.const 3499)
                      (i32.const 3503)
                      (local.tee $15
                       (i32.shr_u
                        (i32.and
                         (local.get $26)
                         (i32.const 32)
                        )
                        (i32.const 5)
                       )
                      )
                     )
                     (select
                      (i32.const 3491)
                      (i32.const 3495)
                      (local.get $15)
                     )
                     (f64.ne
                      (local.get $31)
                      (local.get $31)
                     )
                    )
                    (i32.const 3)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$111
                  (br_if $label$111
                   (i32.ne
                    (i32.and
                     (local.get $21)
                     (i32.const 73728)
                    )
                    (i32.const 8192)
                   )
                  )
                  (br_if $label$111
                   (i32.le_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 32)
                    (select
                     (local.tee $22
                      (i32.sub
                       (local.get $20)
                       (local.get $19)
                      )
                     )
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $22)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$112
                   (block $label$113
                    (br_if $label$113
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $22)
                    )
                    (loop $label$114
                     (block $label$115
                      (br_if $label$115
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$114
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$111
                     (local.get $16)
                    )
                    (local.set $22
                     (i32.and
                      (local.get $22)
                      (i32.const 255)
                     )
                    )
                    (br $label$112)
                   )
                   (br_if $label$111
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $22)
                    (local.get $0)
                   )
                  )
                 )
                 (local.set $15
                  (select
                   (local.get $20)
                   (local.get $19)
                   (i32.gt_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                 )
                 (br $label$102)
                )
                (block $label$116
                 (br_if $label$116
                  (f64.eq
                   (local.tee $31
                    (f64.add
                     (local.tee $31
                      (call $50
                       (local.get $31)
                       (i32.add
                        (local.get $5)
                        (i32.const 364)
                       )
                      )
                     )
                     (local.get $31)
                    )
                   )
                   (f64.const 0)
                  )
                 )
                 (i32.store offset=364
                  (local.get $5)
                  (i32.add
                   (i32.load offset=364
                    (local.get $5)
                   )
                   (i32.const -1)
                  )
                 )
                )
                (block $label$117
                 (br_if $label$117
                  (i32.ne
                   (local.tee $28
                    (i32.or
                     (local.get $26)
                     (i32.const 32)
                    )
                   )
                   (i32.const 97)
                  )
                 )
                 (local.set $27
                  (select
                   (i32.add
                    (local.get $33)
                    (i32.const 9)
                   )
                   (local.get $33)
                   (local.tee $22
                    (i32.and
                     (local.get $26)
                     (i32.const 32)
                    )
                   )
                  )
                 )
                 (block $label$118
                  (br_if $label$118
                   (i32.gt_u
                    (local.get $19)
                    (i32.const 11)
                   )
                  )
                  (br_if $label$118
                   (i32.eqz
                    (i32.sub
                     (i32.const 12)
                     (local.get $19)
                    )
                   )
                  )
                  (local.set $15
                   (i32.add
                    (local.get $19)
                    (i32.const -12)
                   )
                  )
                  (local.set $34
                   (f64.const 16)
                  )
                  (loop $label$119
                   (local.set $34
                    (f64.mul
                     (local.get $34)
                     (f64.const 16)
                    )
                   )
                   (local.set $18
                    (i32.ge_u
                     (local.tee $17
                      (i32.add
                       (local.get $15)
                       (i32.const 1)
                      )
                     )
                     (local.get $15)
                    )
                   )
                   (local.set $15
                    (local.get $17)
                   )
                   (br_if $label$119
                    (local.get $18)
                   )
                  )
                  (block $label$120
                   (br_if $label$120
                    (i32.ne
                     (i32.load8_u
                      (local.get $27)
                     )
                     (i32.const 45)
                    )
                   )
                   (local.set $31
                    (f64.neg
                     (f64.add
                      (local.get $34)
                      (f64.sub
                       (f64.neg
                        (local.get $31)
                       )
                       (local.get $34)
                      )
                     )
                    )
                   )
                   (br $label$118)
                  )
                  (local.set $31
                   (f64.sub
                    (f64.add
                     (local.get $31)
                     (local.get $34)
                    )
                    (local.get $34)
                   )
                  )
                 )
                 (local.set $18
                  (local.get $11)
                 )
                 (block $label$121
                  (block $label$122
                   (br_if $label$122
                    (i32.eqz
                     (local.tee $15
                      (i32.xor
                       (i32.add
                        (local.tee $23
                         (i32.load offset=364
                          (local.get $5)
                         )
                        )
                        (local.tee $15
                         (i32.shr_s
                          (local.get $23)
                          (i32.const 31)
                         )
                        )
                       )
                       (local.get $15)
                      )
                     )
                    )
                   )
                   (local.set $17
                    (i32.const 0)
                   )
                   (loop $label$123
                    (i32.store8
                     (i32.add
                      (i32.add
                       (i32.add
                        (local.get $5)
                        (i32.const 324)
                       )
                       (local.get $17)
                      )
                      (i32.const 11)
                     )
                     (i32.or
                      (i32.sub
                       (local.get $15)
                       (i32.mul
                        (local.tee $18
                         (i32.div_u
                          (local.get $15)
                          (i32.const 10)
                         )
                        )
                        (i32.const 10)
                       )
                      )
                      (i32.const 48)
                     )
                    )
                    (local.set $17
                     (i32.add
                      (local.get $17)
                      (i32.const -1)
                     )
                    )
                    (local.set $16
                     (i32.gt_u
                      (local.get $15)
                      (i32.const 9)
                     )
                    )
                    (local.set $15
                     (local.get $18)
                    )
                    (br_if $label$123
                     (local.get $16)
                    )
                   )
                   (local.set $18
                    (i32.add
                     (i32.add
                      (i32.add
                       (local.get $5)
                       (i32.const 324)
                      )
                      (local.get $17)
                     )
                     (i32.const 12)
                    )
                   )
                   (br_if $label$121
                    (local.get $17)
                   )
                  )
                  (i32.store8
                   (local.tee $18
                    (i32.add
                     (local.get $18)
                     (i32.const -1)
                    )
                   )
                   (i32.const 48)
                  )
                 )
                 (local.set $25
                  (i32.or
                   (local.get $32)
                   (i32.const 2)
                  )
                 )
                 (i32.store8
                  (local.tee $24
                   (i32.add
                    (local.get $18)
                    (i32.const -2)
                   )
                  )
                  (i32.add
                   (local.get $26)
                   (i32.const 15)
                  )
                 )
                 (i32.store8
                  (i32.add
                   (local.get $18)
                   (i32.const -1)
                  )
                  (select
                   (i32.const 45)
                   (i32.const 43)
                   (i32.lt_s
                    (local.get $23)
                    (i32.const 0)
                   )
                  )
                 )
                 (local.set $18
                  (i32.and
                   (local.get $21)
                   (i32.const 8)
                  )
                 )
                 (local.set $17
                  (i32.add
                   (local.get $5)
                   (i32.const 336)
                  )
                 )
                 (loop $label$124
                  (local.set $15
                   (local.get $17)
                  )
                  (block $label$125
                   (block $label$126
                    (br_if $label$126
                     (i32.eqz
                      (f64.lt
                       (f64.abs
                        (local.get $31)
                       )
                       (f64.const 2147483648)
                      )
                     )
                    )
                    (local.set $17
                     (i32.trunc_f64_s
                      (local.get $31)
                     )
                    )
                    (br $label$125)
                   )
                   (local.set $17
                    (i32.const -2147483648)
                   )
                  )
                  (i32.store8
                   (local.get $15)
                   (i32.or
                    (i32.load8_u
                     (i32.add
                      (local.get $17)
                      (i32.const 3456)
                     )
                    )
                    (local.get $22)
                   )
                  )
                  (local.set $31
                   (f64.mul
                    (f64.sub
                     (local.get $31)
                     (f64.convert_i32_s
                      (local.get $17)
                     )
                    )
                    (f64.const 16)
                   )
                  )
                  (block $label$127
                   (br_if $label$127
                    (i32.ne
                     (i32.sub
                      (local.tee $17
                       (i32.add
                        (local.get $15)
                        (i32.const 1)
                       )
                      )
                      (i32.add
                       (local.get $5)
                       (i32.const 336)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                   (block $label$128
                    (br_if $label$128
                     (local.get $18)
                    )
                    (br_if $label$128
                     (i32.gt_s
                      (local.get $19)
                      (i32.const 0)
                     )
                    )
                    (br_if $label$127
                     (f64.eq
                      (local.get $31)
                      (f64.const 0)
                     )
                    )
                   )
                   (i32.store8 offset=1
                    (local.get $15)
                    (i32.const 46)
                   )
                   (local.set $17
                    (i32.add
                     (local.get $15)
                     (i32.const 2)
                    )
                   )
                  )
                  (br_if $label$124
                   (f64.ne
                    (local.get $31)
                    (f64.const 0)
                   )
                  )
                 )
                 (local.set $15
                  (i32.const -1)
                 )
                 (br_if $label$102
                  (i32.lt_s
                   (i32.sub
                    (i32.const 2147483645)
                    (local.tee $18
                     (i32.add
                      (local.get $25)
                      (local.tee $26
                       (i32.sub
                        (local.get $11)
                        (local.get $24)
                       )
                      )
                     )
                    )
                   )
                   (local.get $19)
                  )
                 )
                 (local.set $19
                  (i32.add
                   (local.get $18)
                   (local.tee $35
                    (select
                     (select
                      (i32.add
                       (local.get $19)
                       (i32.const 2)
                      )
                      (local.tee $22
                       (i32.sub
                        (local.get $17)
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                       )
                      )
                      (i32.lt_s
                       (i32.add
                        (local.get $8)
                        (local.get $17)
                       )
                       (local.get $19)
                      )
                     )
                     (local.get $22)
                     (local.get $19)
                    )
                   )
                  )
                 )
                 (block $label$129
                  (br_if $label$129
                   (local.tee $23
                    (i32.and
                     (local.get $21)
                     (i32.const 73728)
                    )
                   )
                  )
                  (br_if $label$129
                   (i32.le_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 32)
                    (select
                     (local.tee $21
                      (i32.sub
                       (local.get $20)
                       (local.get $19)
                      )
                     )
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $21)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$130
                   (block $label$131
                    (br_if $label$131
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $21)
                    )
                    (loop $label$132
                     (block $label$133
                      (br_if $label$133
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$132
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$129
                     (local.get $16)
                    )
                    (local.set $21
                     (i32.and
                      (local.get $21)
                      (i32.const 255)
                     )
                    )
                    (br $label$130)
                   )
                   (br_if $label$129
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $21)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$134
                  (br_if $label$134
                   (i32.and
                    (i32.load8_u
                     (local.get $0)
                    )
                    (i32.const 32)
                   )
                  )
                  (drop
                   (call $35
                    (local.get $27)
                    (local.get $25)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$135
                  (br_if $label$135
                   (i32.ne
                    (local.get $23)
                    (i32.const 65536)
                   )
                  )
                  (br_if $label$135
                   (i32.le_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 48)
                    (select
                     (local.tee $25
                      (i32.sub
                       (local.get $20)
                       (local.get $19)
                      )
                     )
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $25)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$136
                   (block $label$137
                    (br_if $label$137
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $25)
                    )
                    (loop $label$138
                     (block $label$139
                      (br_if $label$139
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$138
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$135
                     (local.get $16)
                    )
                    (local.set $25
                     (i32.and
                      (local.get $25)
                      (i32.const 255)
                     )
                    )
                    (br $label$136)
                   )
                   (br_if $label$135
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $25)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$140
                  (br_if $label$140
                   (i32.and
                    (i32.load8_u
                     (local.get $0)
                    )
                    (i32.const 32)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 336)
                    )
                    (local.get $22)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$141
                  (br_if $label$141
                   (i32.lt_s
                    (local.tee $22
                     (i32.sub
                      (local.get $35)
                      (local.get $22)
                     )
                    )
                    (i32.const 1)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 48)
                    (select
                     (local.get $22)
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $22)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$142
                   (block $label$143
                    (br_if $label$143
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $22)
                    )
                    (loop $label$144
                     (block $label$145
                      (br_if $label$145
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$144
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$141
                     (local.get $16)
                    )
                    (local.set $22
                     (i32.and
                      (local.get $22)
                      (i32.const 255)
                     )
                    )
                    (br $label$142)
                   )
                   (br_if $label$141
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $22)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$146
                  (br_if $label$146
                   (i32.and
                    (i32.load8_u
                     (local.get $0)
                    )
                    (i32.const 32)
                   )
                  )
                  (drop
                   (call $35
                    (local.get $24)
                    (local.get $26)
                    (local.get $0)
                   )
                  )
                 )
                 (block $label$147
                  (br_if $label$147
                   (i32.ne
                    (local.get $23)
                    (i32.const 8192)
                   )
                  )
                  (br_if $label$147
                   (i32.le_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 32)
                    (select
                     (local.tee $22
                      (i32.sub
                       (local.get $20)
                       (local.get $19)
                      )
                     )
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $22)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$148
                   (block $label$149
                    (br_if $label$149
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $22)
                    )
                    (loop $label$150
                     (block $label$151
                      (br_if $label$151
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$150
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$147
                     (local.get $16)
                    )
                    (local.set $22
                     (i32.and
                      (local.get $22)
                      (i32.const 255)
                     )
                    )
                    (br $label$148)
                   )
                   (br_if $label$147
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $22)
                    (local.get $0)
                   )
                  )
                 )
                 (local.set $15
                  (select
                   (local.get $20)
                   (local.get $19)
                   (i32.gt_s
                    (local.get $20)
                    (local.get $19)
                   )
                  )
                 )
                 (br $label$102)
                )
                (local.set $15
                 (i32.lt_s
                  (local.get $19)
                  (i32.const 0)
                 )
                )
                (block $label$152
                 (block $label$153
                  (br_if $label$153
                   (f64.ne
                    (local.get $31)
                    (f64.const 0)
                   )
                  )
                  (local.set $16
                   (i32.load offset=364
                    (local.get $5)
                   )
                  )
                  (br $label$152)
                 )
                 (i32.store offset=364
                  (local.get $5)
                  (local.tee $16
                   (i32.add
                    (i32.load offset=364
                     (local.get $5)
                    )
                    (i32.const -28)
                   )
                  )
                 )
                 (local.set $31
                  (f64.mul
                   (local.get $31)
                   (f64.const 268435456)
                  )
                 )
                )
                (local.set $35
                 (select
                  (i32.const 6)
                  (local.get $19)
                  (local.get $15)
                 )
                )
                (local.set $18
                 (local.tee $27
                  (select
                   (i32.add
                    (local.get $5)
                    (i32.const 368)
                   )
                   (local.get $10)
                   (i32.lt_s
                    (local.get $16)
                    (i32.const 0)
                   )
                  )
                 )
                )
                (loop $label$154
                 (block $label$155
                  (block $label$156
                   (br_if $label$156
                    (i32.eqz
                     (i32.and
                      (f64.lt
                       (local.get $31)
                       (f64.const 4294967296)
                      )
                      (f64.ge
                       (local.get $31)
                       (f64.const 0)
                      )
                     )
                    )
                   )
                   (local.set $15
                    (i32.trunc_f64_u
                     (local.get $31)
                    )
                   )
                   (br $label$155)
                  )
                  (local.set $15
                   (i32.const 0)
                  )
                 )
                 (i32.store
                  (local.get $18)
                  (local.get $15)
                 )
                 (local.set $18
                  (i32.add
                   (local.get $18)
                   (i32.const 4)
                  )
                 )
                 (br_if $label$154
                  (f64.ne
                   (local.tee $31
                    (f64.mul
                     (f64.sub
                      (local.get $31)
                      (f64.convert_i32_u
                       (local.get $15)
                      )
                     )
                     (f64.const 1e9)
                    )
                   )
                   (f64.const 0)
                  )
                 )
                )
                (block $label$157
                 (block $label$158
                  (br_if $label$158
                   (i32.ge_s
                    (local.get $16)
                    (i32.const 1)
                   )
                  )
                  (local.set $15
                   (local.get $18)
                  )
                  (local.set $17
                   (local.get $27)
                  )
                  (br $label$157)
                 )
                 (local.set $17
                  (local.get $27)
                 )
                 (loop $label$159
                  (local.set $16
                   (select
                    (local.get $16)
                    (i32.const 29)
                    (i32.lt_s
                     (local.get $16)
                     (i32.const 29)
                    )
                   )
                  )
                  (block $label$160
                   (br_if $label$160
                    (i32.lt_u
                     (local.tee $15
                      (i32.add
                       (local.get $18)
                       (i32.const -4)
                      )
                     )
                     (local.get $17)
                    )
                   )
                   (local.set $30
                    (i64.extend_i32_u
                     (local.get $16)
                    )
                   )
                   (local.set $29
                    (i64.const 0)
                   )
                   (loop $label$161
                    (i64.store32
                     (local.get $15)
                     (i64.sub
                      (local.tee $29
                       (i64.add
                        (i64.shl
                         (i64.load32_u
                          (local.get $15)
                         )
                         (local.get $30)
                        )
                        (i64.and
                         (local.get $29)
                         (i64.const 4294967295)
                        )
                       )
                      )
                      (i64.mul
                       (local.tee $29
                        (i64.div_u
                         (local.get $29)
                         (i64.const 1000000000)
                        )
                       )
                       (i64.const 1000000000)
                      )
                     )
                    )
                    (br_if $label$161
                     (i32.ge_u
                      (local.tee $15
                       (i32.add
                        (local.get $15)
                        (i32.const -4)
                       )
                      )
                      (local.get $17)
                     )
                    )
                   )
                   (br_if $label$160
                    (i32.eqz
                     (local.tee $15
                      (i32.wrap_i64
                       (local.get $29)
                      )
                     )
                    )
                   )
                   (i32.store
                    (local.tee $17
                     (i32.add
                      (local.get $17)
                      (i32.const -4)
                     )
                    )
                    (local.get $15)
                   )
                  )
                  (block $label$162
                   (loop $label$163
                    (br_if $label$162
                     (i32.le_u
                      (local.tee $15
                       (local.get $18)
                      )
                      (local.get $17)
                     )
                    )
                    (br_if $label$163
                     (i32.eqz
                      (i32.load
                       (local.tee $18
                        (i32.add
                         (local.get $15)
                         (i32.const -4)
                        )
                       )
                      )
                     )
                    )
                   )
                  )
                  (i32.store offset=364
                   (local.get $5)
                   (local.tee $16
                    (i32.sub
                     (i32.load offset=364
                      (local.get $5)
                     )
                     (local.get $16)
                    )
                   )
                  )
                  (local.set $18
                   (local.get $15)
                  )
                  (br_if $label$159
                   (i32.gt_s
                    (local.get $16)
                    (i32.const 0)
                   )
                  )
                 )
                )
                (block $label$164
                 (br_if $label$164
                  (i32.gt_s
                   (local.get $16)
                   (i32.const -1)
                  )
                 )
                 (local.set $24
                  (i32.add
                   (i32.div_u
                    (i32.add
                     (local.get $35)
                     (i32.const 25)
                    )
                    (i32.const 9)
                   )
                   (i32.const 1)
                  )
                 )
                 (loop $label$165
                  (local.set $22
                   (select
                    (local.tee $18
                     (i32.sub
                      (i32.const 0)
                      (local.get $16)
                     )
                    )
                    (i32.const 9)
                    (i32.lt_s
                     (local.get $18)
                     (i32.const 9)
                    )
                   )
                  )
                  (block $label$166
                   (block $label$167
                    (br_if $label$167
                     (i32.lt_u
                      (local.get $17)
                      (local.get $15)
                     )
                    )
                    (local.set $17
                     (select
                      (local.get $17)
                      (i32.add
                       (local.get $17)
                       (i32.const 4)
                      )
                      (i32.load
                       (local.get $17)
                      )
                     )
                    )
                    (br $label$166)
                   )
                   (local.set $23
                    (i32.shr_u
                     (i32.const 1000000000)
                     (local.get $22)
                    )
                   )
                   (local.set $25
                    (i32.xor
                     (i32.shl
                      (i32.const -1)
                      (local.get $22)
                     )
                     (i32.const -1)
                    )
                   )
                   (local.set $16
                    (i32.const 0)
                   )
                   (local.set $18
                    (local.get $17)
                   )
                   (loop $label$168
                    (i32.store
                     (local.get $18)
                     (i32.add
                      (i32.shr_u
                       (local.tee $19
                        (i32.load
                         (local.get $18)
                        )
                       )
                       (local.get $22)
                      )
                      (local.get $16)
                     )
                    )
                    (local.set $16
                     (i32.mul
                      (i32.and
                       (local.get $19)
                       (local.get $25)
                      )
                      (local.get $23)
                     )
                    )
                    (br_if $label$168
                     (i32.lt_u
                      (local.tee $18
                       (i32.add
                        (local.get $18)
                        (i32.const 4)
                       )
                      )
                      (local.get $15)
                     )
                    )
                   )
                   (local.set $17
                    (select
                     (local.get $17)
                     (i32.add
                      (local.get $17)
                      (i32.const 4)
                     )
                     (i32.load
                      (local.get $17)
                     )
                    )
                   )
                   (br_if $label$166
                    (i32.eqz
                     (local.get $16)
                    )
                   )
                   (i32.store
                    (local.get $15)
                    (local.get $16)
                   )
                   (local.set $15
                    (i32.add
                     (local.get $15)
                     (i32.const 4)
                    )
                   )
                  )
                  (i32.store offset=364
                   (local.get $5)
                   (local.tee $16
                    (i32.add
                     (i32.load offset=364
                      (local.get $5)
                     )
                     (local.get $22)
                    )
                   )
                  )
                  (local.set $15
                   (select
                    (i32.add
                     (local.tee $18
                      (select
                       (local.get $27)
                       (local.get $17)
                       (i32.eq
                        (local.get $28)
                        (i32.const 102)
                       )
                      )
                     )
                     (i32.shl
                      (local.get $24)
                      (i32.const 2)
                     )
                    )
                    (local.get $15)
                    (i32.gt_s
                     (i32.shr_s
                      (i32.sub
                       (local.get $15)
                       (local.get $18)
                      )
                      (i32.const 2)
                     )
                     (local.get $24)
                    )
                   )
                  )
                  (br_if $label$165
                   (i32.lt_s
                    (local.get $16)
                    (i32.const 0)
                   )
                  )
                 )
                )
                (local.set $18
                 (i32.const 0)
                )
                (block $label$169
                 (br_if $label$169
                  (i32.ge_u
                   (local.get $17)
                   (local.get $15)
                  )
                 )
                 (local.set $18
                  (i32.mul
                   (i32.shr_s
                    (i32.sub
                     (local.get $27)
                     (local.get $17)
                    )
                    (i32.const 2)
                   )
                   (i32.const 9)
                  )
                 )
                 (br_if $label$169
                  (i32.lt_u
                   (local.tee $19
                    (i32.load
                     (local.get $17)
                    )
                   )
                   (i32.const 10)
                  )
                 )
                 (local.set $16
                  (i32.const 10)
                 )
                 (loop $label$170
                  (local.set $18
                   (i32.add
                    (local.get $18)
                    (i32.const 1)
                   )
                  )
                  (br_if $label$170
                   (i32.ge_u
                    (local.get $19)
                    (local.tee $16
                     (i32.mul
                      (local.get $16)
                      (i32.const 10)
                     )
                    )
                   )
                  )
                 )
                )
                (block $label$171
                 (br_if $label$171
                  (i32.ge_s
                   (local.tee $16
                    (i32.sub
                     (i32.sub
                      (local.get $35)
                      (local.tee $19
                       (select
                        (i32.const 0)
                        (local.get $18)
                        (i32.eq
                         (local.get $28)
                         (i32.const 102)
                        )
                       )
                      )
                     )
                     (local.tee $25
                      (i32.and
                       (i32.ne
                        (local.get $35)
                        (i32.const 0)
                       )
                       (local.tee $23
                        (i32.eq
                         (local.get $28)
                         (i32.const 103)
                        )
                       )
                      )
                     )
                    )
                   )
                   (i32.add
                    (i32.mul
                     (i32.shr_s
                      (i32.sub
                       (local.get $15)
                       (local.get $27)
                      )
                      (i32.const 2)
                     )
                     (i32.const 9)
                    )
                    (i32.const -9)
                   )
                  )
                 )
                 (local.set $22
                  (i32.add
                   (local.tee $36
                    (i32.add
                     (i32.shl
                      (local.tee $28
                       (i32.div_s
                        (local.tee $24
                         (i32.add
                          (local.get $16)
                          (i32.const 9216)
                         )
                        )
                        (i32.const 9)
                       )
                      )
                      (i32.const 2)
                     )
                     (local.get $27)
                    )
                   )
                   (i32.const -4092)
                  )
                 )
                 (local.set $16
                  (i32.const 10)
                 )
                 (block $label$172
                  (br_if $label$172
                   (i32.gt_s
                    (i32.add
                     (i32.sub
                      (local.get $24)
                      (local.tee $28
                       (i32.mul
                        (local.get $28)
                        (i32.const 9)
                       )
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.const 8)
                   )
                  )
                  (local.set $19
                   (i32.add
                    (i32.sub
                     (i32.add
                      (i32.add
                       (local.get $19)
                       (local.get $28)
                      )
                      (local.get $25)
                     )
                     (local.get $35)
                    )
                    (i32.const -9208)
                   )
                  )
                  (local.set $16
                   (i32.const 10)
                  )
                  (loop $label$173
                   (local.set $16
                    (i32.mul
                     (local.get $16)
                     (i32.const 10)
                    )
                   )
                   (br_if $label$173
                    (local.tee $19
                     (i32.add
                      (local.get $19)
                      (i32.const -1)
                     )
                    )
                   )
                  )
                 )
                 (local.set $19
                  (i32.sub
                   (local.tee $25
                    (i32.load
                     (local.get $22)
                    )
                   )
                   (i32.mul
                    (local.tee $24
                     (i32.div_u
                      (local.get $25)
                      (local.get $16)
                     )
                    )
                    (local.get $16)
                   )
                  )
                 )
                 (block $label$174
                  (block $label$175
                   (br_if $label$175
                    (i32.ne
                     (local.tee $28
                      (i32.add
                       (local.get $22)
                       (i32.const 4)
                      )
                     )
                     (local.get $15)
                    )
                   )
                   (br_if $label$174
                    (i32.eqz
                     (local.get $19)
                    )
                   )
                  )
                  (block $label$176
                   (block $label$177
                    (br_if $label$177
                     (i32.and
                      (local.get $24)
                      (i32.const 1)
                     )
                    )
                    (local.set $31
                     (f64.const 9007199254740992)
                    )
                    (br_if $label$176
                     (i32.le_u
                      (local.get $22)
                      (local.get $17)
                     )
                    )
                    (br_if $label$176
                     (i32.ne
                      (local.get $16)
                      (i32.const 1000000000)
                     )
                    )
                    (br_if $label$176
                     (i32.eqz
                      (i32.and
                       (i32.load8_u
                        (i32.add
                         (local.get $22)
                         (i32.const -4)
                        )
                       )
                       (i32.const 1)
                      )
                     )
                    )
                   )
                   (local.set $31
                    (f64.const 9007199254740994)
                   )
                  )
                  (local.set $34
                   (f64.const 0.5)
                  )
                  (block $label$178
                   (br_if $label$178
                    (i32.lt_u
                     (local.get $19)
                     (local.tee $24
                      (i32.shr_u
                       (local.get $16)
                       (i32.const 1)
                      )
                     )
                    )
                   )
                   (local.set $34
                    (select
                     (select
                      (f64.const 1)
                      (f64.const 1.5)
                      (i32.eq
                       (local.get $19)
                       (local.get $24)
                      )
                     )
                     (f64.const 1.5)
                     (i32.eq
                      (local.get $28)
                      (local.get $15)
                     )
                    )
                   )
                  )
                  (block $label$179
                   (br_if $label$179
                    (i32.eqz
                     (local.get $32)
                    )
                   )
                   (br_if $label$179
                    (i32.ne
                     (i32.load8_u
                      (local.get $33)
                     )
                     (i32.const 45)
                    )
                   )
                   (local.set $34
                    (f64.neg
                     (local.get $34)
                    )
                   )
                   (local.set $31
                    (f64.neg
                     (local.get $31)
                    )
                   )
                  )
                  (i32.store
                   (local.get $22)
                   (local.tee $19
                    (i32.sub
                     (local.get $25)
                     (local.get $19)
                    )
                   )
                  )
                  (br_if $label$174
                   (f64.eq
                    (f64.add
                     (local.get $31)
                     (local.get $34)
                    )
                    (local.get $31)
                   )
                  )
                  (i32.store
                   (local.get $22)
                   (local.tee $18
                    (i32.add
                     (local.get $19)
                     (local.get $16)
                    )
                   )
                  )
                  (block $label$180
                   (br_if $label$180
                    (i32.lt_u
                     (local.get $18)
                     (i32.const 1000000000)
                    )
                   )
                   (local.set $18
                    (i32.add
                     (local.get $36)
                     (i32.const -4096)
                    )
                   )
                   (loop $label$181
                    (i32.store
                     (i32.add
                      (local.get $18)
                      (i32.const 4)
                     )
                     (i32.const 0)
                    )
                    (block $label$182
                     (br_if $label$182
                      (i32.ge_u
                       (local.get $18)
                       (local.get $17)
                      )
                     )
                     (i32.store
                      (local.tee $17
                       (i32.add
                        (local.get $17)
                        (i32.const -4)
                       )
                      )
                      (i32.const 0)
                     )
                    )
                    (i32.store
                     (local.get $18)
                     (local.tee $16
                      (i32.add
                       (i32.load
                        (local.get $18)
                       )
                       (i32.const 1)
                      )
                     )
                    )
                    (local.set $18
                     (i32.add
                      (local.get $18)
                      (i32.const -4)
                     )
                    )
                    (br_if $label$181
                     (i32.gt_u
                      (local.get $16)
                      (i32.const 999999999)
                     )
                    )
                   )
                   (local.set $22
                    (i32.add
                     (local.get $18)
                     (i32.const 4)
                    )
                   )
                  )
                  (local.set $18
                   (i32.mul
                    (i32.shr_s
                     (i32.sub
                      (local.get $27)
                      (local.get $17)
                     )
                     (i32.const 2)
                    )
                    (i32.const 9)
                   )
                  )
                  (br_if $label$174
                   (i32.lt_u
                    (local.tee $19
                     (i32.load
                      (local.get $17)
                     )
                    )
                    (i32.const 10)
                   )
                  )
                  (local.set $16
                   (i32.const 10)
                  )
                  (loop $label$183
                   (local.set $18
                    (i32.add
                     (local.get $18)
                     (i32.const 1)
                    )
                   )
                   (br_if $label$183
                    (i32.ge_u
                     (local.get $19)
                     (local.tee $16
                      (i32.mul
                       (local.get $16)
                       (i32.const 10)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $15
                  (select
                   (local.tee $16
                    (i32.add
                     (local.get $22)
                     (i32.const 4)
                    )
                   )
                   (local.get $15)
                   (i32.gt_u
                    (local.get $15)
                    (local.get $16)
                   )
                  )
                 )
                )
                (block $label$184
                 (loop $label$185
                  (block $label$186
                   (br_if $label$186
                    (i32.gt_u
                     (local.tee $19
                      (local.get $15)
                     )
                     (local.get $17)
                    )
                   )
                   (local.set $28
                    (i32.const 0)
                   )
                   (br $label$184)
                  )
                  (br_if $label$185
                   (i32.eqz
                    (i32.load
                     (local.tee $15
                      (i32.add
                       (local.get $19)
                       (i32.const -4)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $28
                  (i32.const 1)
                 )
                )
                (block $label$187
                 (block $label$188
                  (br_if $label$188
                   (local.get $23)
                  )
                  (local.set $25
                   (i32.and
                    (local.get $21)
                    (i32.const 8)
                   )
                  )
                  (br $label$187)
                 )
                 (local.set $35
                  (i32.add
                   (select
                    (i32.xor
                     (local.get $18)
                     (i32.const -1)
                    )
                    (i32.const -1)
                    (local.tee $16
                     (i32.and
                      (i32.gt_s
                       (local.tee $15
                        (select
                         (local.get $35)
                         (i32.const 1)
                         (local.get $35)
                        )
                       )
                       (local.get $18)
                      )
                      (i32.gt_s
                       (local.get $18)
                       (i32.const -5)
                      )
                     )
                    )
                   )
                   (local.get $15)
                  )
                 )
                 (local.set $26
                  (i32.add
                   (select
                    (i32.const -1)
                    (i32.const -2)
                    (local.get $16)
                   )
                   (local.get $26)
                  )
                 )
                 (br_if $label$187
                  (local.tee $25
                   (i32.and
                    (local.get $21)
                    (i32.const 8)
                   )
                  )
                 )
                 (local.set $15
                  (i32.const 9)
                 )
                 (block $label$189
                  (br_if $label$189
                   (i32.eqz
                    (local.get $28)
                   )
                  )
                  (br_if $label$189
                   (i32.eqz
                    (local.tee $22
                     (i32.load
                      (i32.add
                       (local.get $19)
                       (i32.const -4)
                      )
                     )
                    )
                   )
                  )
                  (local.set $15
                   (i32.const 0)
                  )
                  (br_if $label$189
                   (i32.rem_u
                    (local.get $22)
                    (i32.const 10)
                   )
                  )
                  (local.set $16
                   (i32.const 10)
                  )
                  (local.set $15
                   (i32.const 0)
                  )
                  (loop $label$190
                   (local.set $15
                    (i32.add
                     (local.get $15)
                     (i32.const 1)
                    )
                   )
                   (br_if $label$190
                    (i32.eqz
                     (i32.rem_u
                      (local.get $22)
                      (local.tee $16
                       (i32.mul
                        (local.get $16)
                        (i32.const 10)
                       )
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $16
                  (i32.add
                   (i32.mul
                    (i32.shr_s
                     (i32.sub
                      (local.get $19)
                      (local.get $27)
                     )
                     (i32.const 2)
                    )
                    (i32.const 9)
                   )
                   (i32.const -9)
                  )
                 )
                 (block $label$191
                  (br_if $label$191
                   (i32.ne
                    (i32.or
                     (local.get $26)
                     (i32.const 32)
                    )
                    (i32.const 102)
                   )
                  )
                  (local.set $25
                   (i32.const 0)
                  )
                  (local.set $35
                   (select
                    (local.get $35)
                    (local.tee $15
                     (select
                      (local.tee $15
                       (i32.sub
                        (local.get $16)
                        (local.get $15)
                       )
                      )
                      (i32.const 0)
                      (i32.gt_s
                       (local.get $15)
                       (i32.const 0)
                      )
                     )
                    )
                    (i32.lt_s
                     (local.get $35)
                     (local.get $15)
                    )
                   )
                  )
                  (br $label$187)
                 )
                 (local.set $25
                  (i32.const 0)
                 )
                 (local.set $35
                  (select
                   (local.get $35)
                   (local.tee $15
                    (select
                     (local.tee $15
                      (i32.sub
                       (i32.add
                        (local.get $16)
                        (local.get $18)
                       )
                       (local.get $15)
                      )
                     )
                     (i32.const 0)
                     (i32.gt_s
                      (local.get $15)
                      (i32.const 0)
                     )
                    )
                   )
                   (i32.lt_s
                    (local.get $35)
                    (local.get $15)
                   )
                  )
                 )
                )
                (local.set $15
                 (i32.const -1)
                )
                (br_if $label$102
                 (i32.gt_s
                  (local.get $35)
                  (select
                   (i32.const 2147483645)
                   (i32.const 2147483646)
                   (local.tee $24
                    (i32.or
                     (local.get $35)
                     (local.get $25)
                    )
                   )
                  )
                 )
                )
                (local.set $36
                 (i32.add
                  (i32.add
                   (local.get $35)
                   (i32.ne
                    (local.get $24)
                    (i32.const 0)
                   )
                  )
                  (i32.const 1)
                 )
                )
                (block $label$192
                 (block $label$193
                  (br_if $label$193
                   (local.tee $37
                    (i32.ne
                     (i32.or
                      (local.get $26)
                      (i32.const 32)
                     )
                     (i32.const 102)
                    )
                   )
                  )
                  (br_if $label$102
                   (i32.gt_s
                    (local.get $18)
                    (i32.sub
                     (i32.const 2147483647)
                     (local.get $36)
                    )
                   )
                  )
                  (local.set $18
                   (select
                    (local.get $18)
                    (i32.const 0)
                    (i32.gt_s
                     (local.get $18)
                     (i32.const 0)
                    )
                   )
                  )
                  (br $label$192)
                 )
                 (local.set $16
                  (local.get $11)
                 )
                 (block $label$194
                  (br_if $label$194
                   (i32.eqz
                    (local.tee $15
                     (i32.xor
                      (i32.add
                       (local.get $18)
                       (local.tee $15
                        (i32.shr_s
                         (local.get $18)
                         (i32.const 31)
                        )
                       )
                      )
                      (local.get $15)
                     )
                    )
                   )
                  )
                  (loop $label$195
                   (i32.store8
                    (local.tee $16
                     (i32.add
                      (local.get $16)
                      (i32.const -1)
                     )
                    )
                    (i32.or
                     (i32.sub
                      (local.get $15)
                      (i32.mul
                       (local.tee $22
                        (i32.div_u
                         (local.get $15)
                         (i32.const 10)
                        )
                       )
                       (i32.const 10)
                      )
                     )
                     (i32.const 48)
                    )
                   )
                   (local.set $23
                    (i32.gt_u
                     (local.get $15)
                     (i32.const 9)
                    )
                   )
                   (local.set $15
                    (local.get $22)
                   )
                   (br_if $label$195
                    (local.get $23)
                   )
                  )
                 )
                 (block $label$196
                  (br_if $label$196
                   (i32.gt_s
                    (i32.sub
                     (local.get $11)
                     (local.get $16)
                    )
                    (i32.const 1)
                   )
                  )
                  (local.set $15
                   (i32.add
                    (local.get $16)
                    (i32.const -1)
                   )
                  )
                  (loop $label$197
                   (i32.store8
                    (local.get $15)
                    (i32.const 48)
                   )
                   (local.set $16
                    (i32.sub
                     (local.get $11)
                     (local.get $15)
                    )
                   )
                   (local.set $15
                    (local.tee $22
                     (i32.add
                      (local.get $15)
                      (i32.const -1)
                     )
                    )
                   )
                   (br_if $label$197
                    (i32.lt_s
                     (local.get $16)
                     (i32.const 2)
                    )
                   )
                  )
                  (local.set $16
                   (i32.add
                    (local.get $22)
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.store8
                  (local.tee $38
                   (i32.add
                    (local.get $16)
                    (i32.const -2)
                   )
                  )
                  (local.get $26)
                 )
                 (local.set $15
                  (i32.const -1)
                 )
                 (i32.store8
                  (i32.add
                   (local.get $16)
                   (i32.const -1)
                  )
                  (select
                   (i32.const 45)
                   (i32.const 43)
                   (i32.lt_s
                    (local.get $18)
                    (i32.const 0)
                   )
                  )
                 )
                 (br_if $label$102
                  (i32.gt_s
                   (local.tee $18
                    (i32.sub
                     (local.get $11)
                     (local.get $38)
                    )
                   )
                   (i32.sub
                    (i32.const 2147483647)
                    (local.get $36)
                   )
                  )
                 )
                )
                (local.set $15
                 (i32.const -1)
                )
                (br_if $label$102
                 (i32.gt_s
                  (local.tee $18
                   (i32.add
                    (local.get $18)
                    (local.get $36)
                   )
                  )
                  (i32.xor
                   (local.get $32)
                   (i32.const 2147483647)
                  )
                 )
                )
                (local.set $26
                 (i32.add
                  (local.get $18)
                  (local.get $32)
                 )
                )
                (block $label$198
                 (br_if $label$198
                  (local.tee $21
                   (i32.and
                    (local.get $21)
                    (i32.const 73728)
                   )
                  )
                 )
                 (br_if $label$198
                  (i32.le_s
                   (local.get $20)
                   (local.get $26)
                  )
                 )
                 (drop
                  (call $43
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (i32.const 32)
                   (select
                    (local.tee $23
                     (i32.sub
                      (local.get $20)
                      (local.get $26)
                     )
                    )
                    (i32.const 256)
                    (local.tee $15
                     (i32.lt_u
                      (local.get $23)
                      (i32.const 256)
                     )
                    )
                   )
                  )
                 )
                 (local.set $18
                  (i32.and
                   (local.tee $16
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 32)
                  )
                 )
                 (block $label$199
                  (block $label$200
                   (br_if $label$200
                    (local.get $15)
                   )
                   (local.set $15
                    (i32.eqz
                     (local.get $18)
                    )
                   )
                   (local.set $18
                    (local.get $23)
                   )
                   (loop $label$201
                    (block $label$202
                     (br_if $label$202
                      (i32.eqz
                       (i32.and
                        (local.get $15)
                        (i32.const 1)
                       )
                      )
                     )
                     (drop
                      (call $35
                       (i32.add
                        (local.get $5)
                        (i32.const 64)
                       )
                       (i32.const 256)
                       (local.get $0)
                      )
                     )
                     (local.set $16
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $15
                     (i32.eqz
                      (local.tee $22
                       (i32.and
                        (local.get $16)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (br_if $label$201
                     (i32.gt_u
                      (local.tee $18
                       (i32.add
                        (local.get $18)
                        (i32.const -256)
                       )
                      )
                      (i32.const 255)
                     )
                    )
                   )
                   (br_if $label$198
                    (local.get $22)
                   )
                   (local.set $23
                    (i32.and
                     (local.get $23)
                     (i32.const 255)
                    )
                   )
                   (br $label$199)
                  )
                  (br_if $label$198
                   (local.get $18)
                  )
                 )
                 (drop
                  (call $35
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (local.get $23)
                   (local.get $0)
                  )
                 )
                )
                (block $label$203
                 (br_if $label$203
                  (i32.and
                   (i32.load8_u
                    (local.get $0)
                   )
                   (i32.const 32)
                  )
                 )
                 (drop
                  (call $35
                   (local.get $33)
                   (local.get $32)
                   (local.get $0)
                  )
                 )
                )
                (block $label$204
                 (br_if $label$204
                  (i32.ne
                   (local.get $21)
                   (i32.const 65536)
                  )
                 )
                 (br_if $label$204
                  (i32.le_s
                   (local.get $20)
                   (local.get $26)
                  )
                 )
                 (drop
                  (call $43
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (i32.const 48)
                   (select
                    (local.tee $23
                     (i32.sub
                      (local.get $20)
                      (local.get $26)
                     )
                    )
                    (i32.const 256)
                    (local.tee $15
                     (i32.lt_u
                      (local.get $23)
                      (i32.const 256)
                     )
                    )
                   )
                  )
                 )
                 (local.set $18
                  (i32.and
                   (local.tee $16
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 32)
                  )
                 )
                 (block $label$205
                  (block $label$206
                   (br_if $label$206
                    (local.get $15)
                   )
                   (local.set $15
                    (i32.eqz
                     (local.get $18)
                    )
                   )
                   (local.set $18
                    (local.get $23)
                   )
                   (loop $label$207
                    (block $label$208
                     (br_if $label$208
                      (i32.eqz
                       (i32.and
                        (local.get $15)
                        (i32.const 1)
                       )
                      )
                     )
                     (drop
                      (call $35
                       (i32.add
                        (local.get $5)
                        (i32.const 64)
                       )
                       (i32.const 256)
                       (local.get $0)
                      )
                     )
                     (local.set $16
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $15
                     (i32.eqz
                      (local.tee $22
                       (i32.and
                        (local.get $16)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (br_if $label$207
                     (i32.gt_u
                      (local.tee $18
                       (i32.add
                        (local.get $18)
                        (i32.const -256)
                       )
                      )
                      (i32.const 255)
                     )
                    )
                   )
                   (br_if $label$204
                    (local.get $22)
                   )
                   (local.set $23
                    (i32.and
                     (local.get $23)
                     (i32.const 255)
                    )
                   )
                   (br $label$205)
                  )
                  (br_if $label$204
                   (local.get $18)
                  )
                 )
                 (drop
                  (call $35
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (local.get $23)
                   (local.get $0)
                  )
                 )
                )
                (block $label$209
                 (block $label$210
                  (br_if $label$210
                   (local.get $37)
                  )
                  (local.set $22
                   (local.tee $23
                    (select
                     (local.get $27)
                     (local.get $17)
                     (i32.gt_u
                      (local.get $17)
                      (local.get $27)
                     )
                    )
                   )
                  )
                  (loop $label$211
                   (block $label$212
                    (block $label$213
                     (br_if $label$213
                      (local.tee $15
                       (i32.load
                        (local.get $22)
                       )
                      )
                     )
                     (local.set $17
                      (i32.const 0)
                     )
                     (br $label$212)
                    )
                    (local.set $17
                     (i32.const 0)
                    )
                    (loop $label$214
                     (i32.store8
                      (i32.add
                       (local.get $6)
                       (local.get $17)
                      )
                      (i32.or
                       (i32.sub
                        (local.get $15)
                        (i32.mul
                         (local.tee $18
                          (i32.div_u
                           (local.get $15)
                           (i32.const 10)
                          )
                         )
                         (i32.const 10)
                        )
                       )
                       (i32.const 48)
                      )
                     )
                     (local.set $17
                      (i32.add
                       (local.get $17)
                       (i32.const -1)
                      )
                     )
                     (local.set $16
                      (i32.gt_u
                       (local.get $15)
                       (i32.const 9)
                      )
                     )
                     (local.set $15
                      (local.get $18)
                     )
                     (br_if $label$214
                      (local.get $16)
                     )
                    )
                   )
                   (local.set $15
                    (i32.add
                     (local.get $9)
                     (local.get $17)
                    )
                   )
                   (block $label$215
                    (block $label$216
                     (br_if $label$216
                      (i32.eq
                       (local.get $22)
                       (local.get $23)
                      )
                     )
                     (br_if $label$215
                      (i32.le_u
                       (local.get $15)
                       (i32.add
                        (local.get $5)
                        (i32.const 336)
                       )
                      )
                     )
                     (loop $label$217
                      (i32.store8
                       (local.tee $15
                        (i32.add
                         (local.get $15)
                         (i32.const -1)
                        )
                       )
                       (i32.const 48)
                      )
                      (br_if $label$217
                       (i32.gt_u
                        (local.get $15)
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                       )
                      )
                     )
                     (local.set $15
                      (i32.add
                       (local.get $5)
                       (i32.const 336)
                      )
                     )
                     (br $label$215)
                    )
                    (br_if $label$215
                     (local.get $17)
                    )
                    (i32.store8
                     (local.tee $15
                      (i32.add
                       (local.get $15)
                       (i32.const -1)
                      )
                     )
                     (i32.const 48)
                    )
                   )
                   (block $label$218
                    (br_if $label$218
                     (i32.and
                      (i32.load8_u
                       (local.get $0)
                      )
                      (i32.const 32)
                     )
                    )
                    (drop
                     (call $35
                      (local.get $15)
                      (i32.sub
                       (local.get $9)
                       (local.get $15)
                      )
                      (local.get $0)
                     )
                    )
                   )
                   (br_if $label$211
                    (i32.le_u
                     (local.tee $22
                      (i32.add
                       (local.get $22)
                       (i32.const 4)
                      )
                     )
                     (local.get $27)
                    )
                   )
                  )
                  (block $label$219
                   (br_if $label$219
                    (i32.eqz
                     (local.get $24)
                    )
                   )
                   (br_if $label$219
                    (i32.and
                     (i32.load8_u
                      (local.get $0)
                     )
                     (i32.const 32)
                    )
                   )
                   (drop
                    (call $35
                     (i32.const 3507)
                     (i32.const 1)
                     (local.get $0)
                    )
                   )
                  )
                  (block $label$220
                   (br_if $label$220
                    (i32.lt_s
                     (local.get $35)
                     (i32.const 1)
                    )
                   )
                   (br_if $label$220
                    (i32.ge_u
                     (local.get $22)
                     (local.get $19)
                    )
                   )
                   (loop $label$221
                    (local.set $15
                     (local.get $9)
                    )
                    (block $label$222
                     (block $label$223
                      (br_if $label$223
                       (i32.eqz
                        (local.tee $17
                         (i32.load
                          (local.get $22)
                         )
                        )
                       )
                      )
                      (local.set $15
                       (local.get $9)
                      )
                      (loop $label$224
                       (i32.store8
                        (local.tee $15
                         (i32.add
                          (local.get $15)
                          (i32.const -1)
                         )
                        )
                        (i32.or
                         (i32.sub
                          (local.get $17)
                          (i32.mul
                           (local.tee $18
                            (i32.div_u
                             (local.get $17)
                             (i32.const 10)
                            )
                           )
                           (i32.const 10)
                          )
                         )
                         (i32.const 48)
                        )
                       )
                       (local.set $16
                        (i32.gt_u
                         (local.get $17)
                         (i32.const 9)
                        )
                       )
                       (local.set $17
                        (local.get $18)
                       )
                       (br_if $label$224
                        (local.get $16)
                       )
                      )
                      (br_if $label$222
                       (i32.le_u
                        (local.get $15)
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                       )
                      )
                     )
                     (loop $label$225
                      (i32.store8
                       (local.tee $15
                        (i32.add
                         (local.get $15)
                         (i32.const -1)
                        )
                       )
                       (i32.const 48)
                      )
                      (br_if $label$225
                       (i32.gt_u
                        (local.get $15)
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                       )
                      )
                     )
                    )
                    (block $label$226
                     (br_if $label$226
                      (i32.and
                       (i32.load8_u
                        (local.get $0)
                       )
                       (i32.const 32)
                      )
                     )
                     (drop
                      (call $35
                       (local.get $15)
                       (select
                        (local.get $35)
                        (i32.const 9)
                        (i32.lt_s
                         (local.get $35)
                         (i32.const 9)
                        )
                       )
                       (local.get $0)
                      )
                     )
                    )
                    (br_if $label$220
                     (i32.lt_s
                      (local.tee $35
                       (i32.add
                        (local.get $35)
                        (i32.const -9)
                       )
                      )
                      (i32.const 1)
                     )
                    )
                    (br_if $label$221
                     (i32.lt_u
                      (local.tee $22
                       (i32.add
                        (local.get $22)
                        (i32.const 4)
                       )
                      )
                      (local.get $19)
                     )
                    )
                   )
                  )
                  (br_if $label$209
                   (i32.lt_s
                    (local.get $35)
                    (i32.const 1)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 48)
                    (select
                     (local.get $35)
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $35)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$227
                   (block $label$228
                    (br_if $label$228
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $35)
                    )
                    (loop $label$229
                     (block $label$230
                      (br_if $label$230
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$229
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$209
                     (local.get $16)
                    )
                    (local.set $35
                     (i32.and
                      (local.get $35)
                      (i32.const 255)
                     )
                    )
                    (br $label$227)
                   )
                   (br_if $label$209
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $35)
                    (local.get $0)
                   )
                  )
                  (br $label$209)
                 )
                 (block $label$231
                  (br_if $label$231
                   (i32.le_s
                    (local.get $35)
                    (i32.const -1)
                   )
                  )
                  (local.set $23
                   (select
                    (local.get $19)
                    (i32.add
                     (local.get $17)
                     (i32.const 4)
                    )
                    (local.get $28)
                   )
                  )
                  (local.set $22
                   (local.get $17)
                  )
                  (loop $label$232
                   (local.set $16
                    (local.get $9)
                   )
                   (block $label$233
                    (block $label$234
                     (br_if $label$234
                      (i32.eqz
                       (local.tee $15
                        (i32.load
                         (local.get $22)
                        )
                       )
                      )
                     )
                     (local.set $18
                      (i32.const 0)
                     )
                     (loop $label$235
                      (i32.store8
                       (i32.add
                        (i32.add
                         (i32.add
                          (local.get $5)
                          (i32.const 336)
                         )
                         (local.get $18)
                        )
                        (i32.const 8)
                       )
                       (i32.or
                        (i32.sub
                         (local.get $15)
                         (i32.mul
                          (local.tee $16
                           (i32.div_u
                            (local.get $15)
                            (i32.const 10)
                           )
                          )
                          (i32.const 10)
                         )
                        )
                        (i32.const 48)
                       )
                      )
                      (local.set $18
                       (i32.add
                        (local.get $18)
                        (i32.const -1)
                       )
                      )
                      (local.set $19
                       (i32.gt_u
                        (local.get $15)
                        (i32.const 9)
                       )
                      )
                      (local.set $15
                       (local.get $16)
                      )
                      (br_if $label$235
                       (local.get $19)
                      )
                     )
                     (local.set $16
                      (i32.add
                       (i32.add
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                        (local.get $18)
                       )
                       (i32.const 9)
                      )
                     )
                     (br_if $label$233
                      (local.get $18)
                     )
                    )
                    (i32.store8
                     (local.tee $16
                      (i32.add
                       (local.get $16)
                       (i32.const -1)
                      )
                     )
                     (i32.const 48)
                    )
                   )
                   (block $label$236
                    (block $label$237
                     (br_if $label$237
                      (i32.eq
                       (local.get $22)
                       (local.get $17)
                      )
                     )
                     (br_if $label$236
                      (i32.le_u
                       (local.get $16)
                       (i32.add
                        (local.get $5)
                        (i32.const 336)
                       )
                      )
                     )
                     (loop $label$238
                      (i32.store8
                       (local.tee $16
                        (i32.add
                         (local.get $16)
                         (i32.const -1)
                        )
                       )
                       (i32.const 48)
                      )
                      (br_if $label$238
                       (i32.gt_u
                        (local.get $16)
                        (i32.add
                         (local.get $5)
                         (i32.const 336)
                        )
                       )
                      )
                      (br $label$236)
                     )
                    )
                    (block $label$239
                     (br_if $label$239
                      (i32.and
                       (i32.load8_u
                        (local.get $0)
                       )
                       (i32.const 32)
                      )
                     )
                     (drop
                      (call $35
                       (local.get $16)
                       (i32.const 1)
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $16
                     (i32.add
                      (local.get $16)
                      (i32.const 1)
                     )
                    )
                    (block $label$240
                     (br_if $label$240
                      (local.get $25)
                     )
                     (br_if $label$236
                      (i32.lt_s
                       (local.get $35)
                       (i32.const 1)
                      )
                     )
                    )
                    (br_if $label$236
                     (i32.and
                      (i32.load8_u
                       (local.get $0)
                      )
                      (i32.const 32)
                     )
                    )
                    (drop
                     (call $35
                      (i32.const 3507)
                      (i32.const 1)
                      (local.get $0)
                     )
                    )
                   )
                   (local.set $15
                    (i32.sub
                     (local.get $9)
                     (local.get $16)
                    )
                   )
                   (block $label$241
                    (br_if $label$241
                     (i32.and
                      (i32.load8_u
                       (local.get $0)
                      )
                      (i32.const 32)
                     )
                    )
                    (drop
                     (call $35
                      (local.get $16)
                      (select
                       (local.get $15)
                       (local.get $35)
                       (i32.gt_s
                        (local.get $35)
                        (local.get $15)
                       )
                      )
                      (local.get $0)
                     )
                    )
                   )
                   (local.set $35
                    (i32.sub
                     (local.get $35)
                     (local.get $15)
                    )
                   )
                   (block $label$242
                    (br_if $label$242
                     (i32.ge_u
                      (local.tee $22
                       (i32.add
                        (local.get $22)
                        (i32.const 4)
                       )
                      )
                      (local.get $23)
                     )
                    )
                    (br_if $label$232
                     (i32.gt_s
                      (local.get $35)
                      (i32.const -1)
                     )
                    )
                   )
                  )
                  (br_if $label$231
                   (i32.lt_s
                    (local.get $35)
                    (i32.const 1)
                   )
                  )
                  (drop
                   (call $43
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (i32.const 48)
                    (select
                     (local.get $35)
                     (i32.const 256)
                     (local.tee $15
                      (i32.lt_u
                       (local.get $35)
                       (i32.const 256)
                      )
                     )
                    )
                   )
                  )
                  (local.set $17
                   (i32.and
                    (local.tee $18
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (i32.const 32)
                   )
                  )
                  (block $label$243
                   (block $label$244
                    (br_if $label$244
                     (local.get $15)
                    )
                    (local.set $15
                     (i32.eqz
                      (local.get $17)
                     )
                    )
                    (local.set $17
                     (local.get $35)
                    )
                    (loop $label$245
                     (block $label$246
                      (br_if $label$246
                       (i32.eqz
                        (i32.and
                         (local.get $15)
                         (i32.const 1)
                        )
                       )
                      )
                      (drop
                       (call $35
                        (i32.add
                         (local.get $5)
                         (i32.const 64)
                        )
                        (i32.const 256)
                        (local.get $0)
                       )
                      )
                      (local.set $18
                       (i32.load
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $15
                      (i32.eqz
                       (local.tee $16
                        (i32.and
                         (local.get $18)
                         (i32.const 32)
                        )
                       )
                      )
                     )
                     (br_if $label$245
                      (i32.gt_u
                       (local.tee $17
                        (i32.add
                         (local.get $17)
                         (i32.const -256)
                        )
                       )
                       (i32.const 255)
                      )
                     )
                    )
                    (br_if $label$231
                     (local.get $16)
                    )
                    (local.set $35
                     (i32.and
                      (local.get $35)
                      (i32.const 255)
                     )
                    )
                    (br $label$243)
                   )
                   (br_if $label$231
                    (local.get $17)
                   )
                  )
                  (drop
                   (call $35
                    (i32.add
                     (local.get $5)
                     (i32.const 64)
                    )
                    (local.get $35)
                    (local.get $0)
                   )
                  )
                 )
                 (br_if $label$209
                  (i32.and
                   (i32.load8_u
                    (local.get $0)
                   )
                   (i32.const 32)
                  )
                 )
                 (drop
                  (call $35
                   (local.get $38)
                   (i32.sub
                    (local.get $11)
                    (local.get $38)
                   )
                   (local.get $0)
                  )
                 )
                )
                (block $label$247
                 (br_if $label$247
                  (i32.ne
                   (local.get $21)
                   (i32.const 8192)
                  )
                 )
                 (br_if $label$247
                  (i32.le_s
                   (local.get $20)
                   (local.get $26)
                  )
                 )
                 (drop
                  (call $43
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (i32.const 32)
                   (select
                    (local.tee $19
                     (i32.sub
                      (local.get $20)
                      (local.get $26)
                     )
                    )
                    (i32.const 256)
                    (local.tee $15
                     (i32.lt_u
                      (local.get $19)
                      (i32.const 256)
                     )
                    )
                   )
                  )
                 )
                 (local.set $17
                  (i32.and
                   (local.tee $18
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 32)
                  )
                 )
                 (block $label$248
                  (block $label$249
                   (br_if $label$249
                    (local.get $15)
                   )
                   (local.set $15
                    (i32.eqz
                     (local.get $17)
                    )
                   )
                   (local.set $17
                    (local.get $19)
                   )
                   (loop $label$250
                    (block $label$251
                     (br_if $label$251
                      (i32.eqz
                       (i32.and
                        (local.get $15)
                        (i32.const 1)
                       )
                      )
                     )
                     (drop
                      (call $35
                       (i32.add
                        (local.get $5)
                        (i32.const 64)
                       )
                       (i32.const 256)
                       (local.get $0)
                      )
                     )
                     (local.set $18
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.set $15
                     (i32.eqz
                      (local.tee $16
                       (i32.and
                        (local.get $18)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (br_if $label$250
                     (i32.gt_u
                      (local.tee $17
                       (i32.add
                        (local.get $17)
                        (i32.const -256)
                       )
                      )
                      (i32.const 255)
                     )
                    )
                   )
                   (br_if $label$247
                    (local.get $16)
                   )
                   (local.set $19
                    (i32.and
                     (local.get $19)
                     (i32.const 255)
                    )
                   )
                   (br $label$248)
                  )
                  (br_if $label$247
                   (local.get $17)
                  )
                 )
                 (drop
                  (call $35
                   (i32.add
                    (local.get $5)
                    (i32.const 64)
                   )
                   (local.get $19)
                   (local.get $0)
                  )
                 )
                )
                (local.set $15
                 (select
                  (local.get $20)
                  (local.get $26)
                  (i32.gt_s
                   (local.get $20)
                   (local.get $26)
                  )
                 )
                )
               )
               (br_if $label$4
                (i32.ge_s
                 (local.get $15)
                 (i32.const 0)
                )
               )
               (br $label$3)
              )
              (local.set $27
               (i32.const 0)
              )
              (local.set $28
               (i32.const 2822)
              )
             )
             (local.set $15
              (local.get $12)
             )
             (br $label$5)
            )
            (local.set $21
             (local.get $23)
            )
            (local.set $19
             (local.get $18)
            )
            (br_if $label$5
             (i32.eqz
              (i32.load8_u
               (local.get $15)
              )
             )
            )
            (br $label$3)
           )
           (local.set $15
            (i32.load8_u offset=1
             (local.get $1)
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 1)
            )
           )
           (br $label$9)
          )
         )
         (br_if $label$1
          (local.get $0)
         )
         (block $label$252
          (br_if $label$252
           (local.get $13)
          )
          (local.set $14
           (i32.const 0)
          )
          (br $label$1)
         )
         (block $label$253
          (block $label$254
           (br_if $label$254
            (local.tee $1
             (i32.load offset=4
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 1)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 8)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$255
           (br_if $label$255
            (local.tee $1
             (i32.load offset=8
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 2)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 16)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$256
           (br_if $label$256
            (local.tee $1
             (i32.load offset=12
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 3)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 24)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$257
           (br_if $label$257
            (local.tee $1
             (i32.load offset=16
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 4)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 32)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$258
           (br_if $label$258
            (local.tee $1
             (i32.load offset=20
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 5)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 40)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$259
           (br_if $label$259
            (local.tee $1
             (i32.load offset=24
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 6)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 48)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$260
           (br_if $label$260
            (local.tee $1
             (i32.load offset=28
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 7)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 56)
           )
           (local.get $1)
           (local.get $2)
          )
          (block $label$261
           (br_if $label$261
            (local.tee $1
             (i32.load offset=32
              (local.get $4)
             )
            )
           )
           (local.set $1
            (i32.const 8)
           )
           (br $label$253)
          )
          (call $22
           (i32.add
            (local.get $3)
            (i32.const 64)
           )
           (local.get $1)
           (local.get $2)
          )
          (br_if $label$6
           (local.tee $1
            (i32.load offset=36
             (local.get $4)
            )
           )
          )
          (local.set $1
           (i32.const 9)
          )
         )
         (local.set $1
          (i32.shl
           (local.get $1)
           (i32.const 2)
          )
         )
         (loop $label$262
          (br_if $label$7
           (i32.load
            (i32.add
             (local.get $4)
             (local.get $1)
            )
           )
          )
          (br_if $label$262
           (i32.ne
            (local.tee $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i32.const 40)
           )
          )
         )
         (local.set $14
          (i32.const 1)
         )
         (br $label$1)
        )
        (i32.store offset=4016
         (i32.const 0)
         (i32.const 28)
        )
        (br $label$2)
       )
       (call $22
        (i32.add
         (local.get $3)
         (i32.const 72)
        )
        (local.get $1)
        (local.get $2)
       )
       (local.set $14
        (i32.const 1)
       )
       (br $label$1)
      )
      (br_if $label$3
       (i32.gt_s
        (local.tee $26
         (select
          (local.tee $24
           (i32.sub
            (local.get $15)
            (local.get $16)
           )
          )
          (local.get $19)
          (i32.lt_s
           (local.get $19)
           (local.get $24)
          )
         )
        )
        (i32.sub
         (i32.const 2147483647)
         (local.get $27)
        )
       )
      )
      (br_if $label$3
       (i32.gt_s
        (local.tee $15
         (select
          (local.tee $25
           (i32.add
            (local.get $27)
            (local.get $26)
           )
          )
          (local.get $20)
          (i32.lt_s
           (local.get $20)
           (local.get $25)
          )
         )
        )
        (local.get $17)
       )
      )
      (block $label$263
       (br_if $label$263
        (local.tee $21
         (i32.and
          (local.get $21)
          (i32.const 73728)
         )
        )
       )
       (br_if $label$263
        (i32.ge_s
         (local.get $25)
         (local.get $20)
        )
       )
       (drop
        (call $43
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (i32.const 32)
         (select
          (local.tee $35
           (i32.sub
            (local.get $15)
            (local.get $25)
           )
          )
          (i32.const 256)
          (local.tee $17
           (i32.lt_u
            (local.get $35)
            (i32.const 256)
           )
          )
         )
        )
       )
       (local.set $18
        (i32.and
         (local.tee $22
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 32)
        )
       )
       (block $label$264
        (block $label$265
         (br_if $label$265
          (local.get $17)
         )
         (local.set $17
          (i32.eqz
           (local.get $18)
          )
         )
         (local.set $18
          (local.get $35)
         )
         (loop $label$266
          (block $label$267
           (br_if $label$267
            (i32.eqz
             (i32.and
              (local.get $17)
              (i32.const 1)
             )
            )
           )
           (drop
            (call $35
             (i32.add
              (local.get $5)
              (i32.const 64)
             )
             (i32.const 256)
             (local.get $0)
            )
           )
           (local.set $22
            (i32.load
             (local.get $0)
            )
           )
          )
          (local.set $17
           (i32.eqz
            (local.tee $23
             (i32.and
              (local.get $22)
              (i32.const 32)
             )
            )
           )
          )
          (br_if $label$266
           (i32.gt_u
            (local.tee $18
             (i32.add
              (local.get $18)
              (i32.const -256)
             )
            )
            (i32.const 255)
           )
          )
         )
         (br_if $label$263
          (local.get $23)
         )
         (local.set $35
          (i32.and
           (local.get $35)
           (i32.const 255)
          )
         )
         (br $label$264)
        )
        (br_if $label$263
         (local.get $18)
        )
       )
       (drop
        (call $35
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (local.get $35)
         (local.get $0)
        )
       )
      )
      (block $label$268
       (br_if $label$268
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 32)
        )
       )
       (drop
        (call $35
         (local.get $28)
         (local.get $27)
         (local.get $0)
        )
       )
      )
      (block $label$269
       (br_if $label$269
        (i32.ne
         (local.get $21)
         (i32.const 65536)
        )
       )
       (br_if $label$269
        (i32.ge_s
         (local.get $25)
         (local.get $20)
        )
       )
       (drop
        (call $43
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (i32.const 48)
         (select
          (local.tee $27
           (i32.sub
            (local.get $15)
            (local.get $25)
           )
          )
          (i32.const 256)
          (local.tee $17
           (i32.lt_u
            (local.get $27)
            (i32.const 256)
           )
          )
         )
        )
       )
       (local.set $18
        (i32.and
         (local.tee $22
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 32)
        )
       )
       (block $label$270
        (block $label$271
         (br_if $label$271
          (local.get $17)
         )
         (local.set $17
          (i32.eqz
           (local.get $18)
          )
         )
         (local.set $18
          (local.get $27)
         )
         (loop $label$272
          (block $label$273
           (br_if $label$273
            (i32.eqz
             (i32.and
              (local.get $17)
              (i32.const 1)
             )
            )
           )
           (drop
            (call $35
             (i32.add
              (local.get $5)
              (i32.const 64)
             )
             (i32.const 256)
             (local.get $0)
            )
           )
           (local.set $22
            (i32.load
             (local.get $0)
            )
           )
          )
          (local.set $17
           (i32.eqz
            (local.tee $23
             (i32.and
              (local.get $22)
              (i32.const 32)
             )
            )
           )
          )
          (br_if $label$272
           (i32.gt_u
            (local.tee $18
             (i32.add
              (local.get $18)
              (i32.const -256)
             )
            )
            (i32.const 255)
           )
          )
         )
         (br_if $label$269
          (local.get $23)
         )
         (local.set $27
          (i32.and
           (local.get $27)
           (i32.const 255)
          )
         )
         (br $label$270)
        )
        (br_if $label$269
         (local.get $18)
        )
       )
       (drop
        (call $35
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (local.get $27)
         (local.get $0)
        )
       )
      )
      (block $label$274
       (br_if $label$274
        (i32.ge_s
         (local.get $24)
         (local.get $19)
        )
       )
       (drop
        (call $43
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (i32.const 48)
         (select
          (local.tee $23
           (i32.sub
            (local.get $26)
            (local.get $24)
           )
          )
          (i32.const 256)
          (local.tee $17
           (i32.lt_u
            (local.get $23)
            (i32.const 256)
           )
          )
         )
        )
       )
       (local.set $18
        (i32.and
         (local.tee $19
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 32)
        )
       )
       (block $label$275
        (block $label$276
         (br_if $label$276
          (local.get $17)
         )
         (local.set $17
          (i32.eqz
           (local.get $18)
          )
         )
         (local.set $18
          (local.get $23)
         )
         (loop $label$277
          (block $label$278
           (br_if $label$278
            (i32.eqz
             (i32.and
              (local.get $17)
              (i32.const 1)
             )
            )
           )
           (drop
            (call $35
             (i32.add
              (local.get $5)
              (i32.const 64)
             )
             (i32.const 256)
             (local.get $0)
            )
           )
           (local.set $19
            (i32.load
             (local.get $0)
            )
           )
          )
          (local.set $17
           (i32.eqz
            (local.tee $22
             (i32.and
              (local.get $19)
              (i32.const 32)
             )
            )
           )
          )
          (br_if $label$277
           (i32.gt_u
            (local.tee $18
             (i32.add
              (local.get $18)
              (i32.const -256)
             )
            )
            (i32.const 255)
           )
          )
         )
         (br_if $label$274
          (local.get $22)
         )
         (local.set $23
          (i32.and
           (local.get $23)
           (i32.const 255)
          )
         )
         (br $label$275)
        )
        (br_if $label$274
         (local.get $18)
        )
       )
       (drop
        (call $35
         (i32.add
          (local.get $5)
          (i32.const 64)
         )
         (local.get $23)
         (local.get $0)
        )
       )
      )
      (block $label$279
       (br_if $label$279
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 32)
        )
       )
       (drop
        (call $35
         (local.get $16)
         (local.get $24)
         (local.get $0)
        )
       )
      )
      (br_if $label$4
       (i32.ne
        (local.get $21)
        (i32.const 8192)
       )
      )
      (br_if $label$4
       (i32.ge_s
        (local.get $25)
        (local.get $20)
       )
      )
      (drop
       (call $43
        (i32.add
         (local.get $5)
         (i32.const 64)
        )
        (i32.const 32)
        (select
         (local.tee $19
          (i32.sub
           (local.get $15)
           (local.get $25)
          )
         )
         (i32.const 256)
         (local.tee $17
          (i32.lt_u
           (local.get $19)
           (i32.const 256)
          )
         )
        )
       )
      )
      (local.set $18
       (i32.and
        (local.tee $16
         (i32.load
          (local.get $0)
         )
        )
        (i32.const 32)
       )
      )
      (block $label$280
       (block $label$281
        (br_if $label$281
         (local.get $17)
        )
        (local.set $17
         (i32.eqz
          (local.get $18)
         )
        )
        (local.set $18
         (local.get $19)
        )
        (loop $label$282
         (block $label$283
          (br_if $label$283
           (i32.eqz
            (i32.and
             (local.get $17)
             (i32.const 1)
            )
           )
          )
          (drop
           (call $35
            (i32.add
             (local.get $5)
             (i32.const 64)
            )
            (i32.const 256)
            (local.get $0)
           )
          )
          (local.set $16
           (i32.load
            (local.get $0)
           )
          )
         )
         (local.set $17
          (i32.eqz
           (local.tee $20
            (i32.and
             (local.get $16)
             (i32.const 32)
            )
           )
          )
         )
         (br_if $label$282
          (i32.gt_u
           (local.tee $18
            (i32.add
             (local.get $18)
             (i32.const -256)
            )
           )
           (i32.const 255)
          )
         )
        )
        (br_if $label$4
         (local.get $20)
        )
        (local.set $19
         (i32.and
          (local.get $19)
          (i32.const 255)
         )
        )
        (br $label$280)
       )
       (br_if $label$4
        (local.get $18)
       )
      )
      (drop
       (call $35
        (i32.add
         (local.get $5)
         (i32.const 64)
        )
        (local.get $19)
        (local.get $0)
       )
      )
      (br $label$4)
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (i32.const 61)
    )
   )
   (local.set $14
    (i32.const -1)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $5)
    (i32.const 880)
   )
  )
  (local.get $14)
 )
 (func $22 (param $0 i32) (param $1 i32) (param $2 i32)
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -9)
      )
     )
     (i32.const 17)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (block $label$9
           (block $label$10
            (block $label$11
             (block $label$12
              (block $label$13
               (block $label$14
                (block $label$15
                 (block $label$16
                  (block $label$17
                   (block $label$18
                    (block $label$19
                     (br_table $label$2 $label$19 $label$18 $label$15 $label$17 $label$16 $label$14 $label$13 $label$12 $label$11 $label$10 $label$9 $label$8 $label$7 $label$6 $label$5 $label$4 $label$3 $label$2
                      (local.get $1)
                     )
                    )
                    (i32.store
                     (local.get $2)
                     (i32.add
                      (local.tee $1
                       (i32.load
                        (local.get $2)
                       )
                      )
                      (i32.const 4)
                     )
                    )
                    (i64.store
                     (local.get $0)
                     (i64.load32_s
                      (local.get $1)
                     )
                    )
                    (return)
                   )
                   (i32.store
                    (local.get $2)
                    (i32.add
                     (local.tee $1
                      (i32.load
                       (local.get $2)
                      )
                     )
                     (i32.const 4)
                    )
                   )
                   (i64.store
                    (local.get $0)
                    (i64.load32_u
                     (local.get $1)
                    )
                   )
                   (return)
                  )
                  (i32.store
                   (local.get $2)
                   (i32.add
                    (local.tee $1
                     (i32.load
                      (local.get $2)
                     )
                    )
                    (i32.const 4)
                   )
                  )
                  (i64.store
                   (local.get $0)
                   (i64.load32_s
                    (local.get $1)
                   )
                  )
                  (return)
                 )
                 (i32.store
                  (local.get $2)
                  (i32.add
                   (local.tee $1
                    (i32.load
                     (local.get $2)
                    )
                   )
                   (i32.const 4)
                  )
                 )
                 (i64.store
                  (local.get $0)
                  (i64.load32_u
                   (local.get $1)
                  )
                 )
                 (return)
                )
                (i32.store
                 (local.get $2)
                 (i32.add
                  (local.tee $1
                   (i32.and
                    (i32.add
                     (i32.load
                      (local.get $2)
                     )
                     (i32.const 7)
                    )
                    (i32.const -8)
                   )
                  )
                  (i32.const 8)
                 )
                )
                (i64.store
                 (local.get $0)
                 (i64.load
                  (local.get $1)
                 )
                )
                (return)
               )
               (i32.store
                (local.get $2)
                (i32.add
                 (local.tee $1
                  (i32.load
                   (local.get $2)
                  )
                 )
                 (i32.const 4)
                )
               )
               (i64.store
                (local.get $0)
                (i64.load16_s
                 (local.get $1)
                )
               )
               (return)
              )
              (i32.store
               (local.get $2)
               (i32.add
                (local.tee $1
                 (i32.load
                  (local.get $2)
                 )
                )
                (i32.const 4)
               )
              )
              (i64.store
               (local.get $0)
               (i64.load16_u
                (local.get $1)
               )
              )
              (return)
             )
             (i32.store
              (local.get $2)
              (i32.add
               (local.tee $1
                (i32.load
                 (local.get $2)
                )
               )
               (i32.const 4)
              )
             )
             (i64.store
              (local.get $0)
              (i64.load8_s
               (local.get $1)
              )
             )
             (return)
            )
            (i32.store
             (local.get $2)
             (i32.add
              (local.tee $1
               (i32.load
                (local.get $2)
               )
              )
              (i32.const 4)
             )
            )
            (i64.store
             (local.get $0)
             (i64.load8_u
              (local.get $1)
             )
            )
            (return)
           )
           (i32.store
            (local.get $2)
            (i32.add
             (local.tee $1
              (i32.and
               (i32.add
                (i32.load
                 (local.get $2)
                )
                (i32.const 7)
               )
               (i32.const -8)
              )
             )
             (i32.const 8)
            )
           )
           (i64.store
            (local.get $0)
            (i64.load
             (local.get $1)
            )
           )
           (return)
          )
          (i32.store
           (local.get $2)
           (i32.add
            (local.tee $1
             (i32.load
              (local.get $2)
             )
            )
            (i32.const 4)
           )
          )
          (i64.store
           (local.get $0)
           (i64.load32_u
            (local.get $1)
           )
          )
          (return)
         )
         (i32.store
          (local.get $2)
          (i32.add
           (local.tee $1
            (i32.and
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.const 7)
             )
             (i32.const -8)
            )
           )
           (i32.const 8)
          )
         )
         (i64.store
          (local.get $0)
          (i64.load
           (local.get $1)
          )
         )
         (return)
        )
        (i32.store
         (local.get $2)
         (i32.add
          (local.tee $1
           (i32.and
            (i32.add
             (i32.load
              (local.get $2)
             )
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (i32.const 8)
         )
        )
        (i64.store
         (local.get $0)
         (i64.load
          (local.get $1)
         )
        )
        (return)
       )
       (i32.store
        (local.get $2)
        (i32.add
         (local.tee $1
          (i32.load
           (local.get $2)
          )
         )
         (i32.const 4)
        )
       )
       (i64.store
        (local.get $0)
        (i64.load32_s
         (local.get $1)
        )
       )
       (return)
      )
      (i32.store
       (local.get $2)
       (i32.add
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (i32.const 4)
       )
      )
      (i64.store
       (local.get $0)
       (i64.load32_u
        (local.get $1)
       )
      )
      (return)
     )
     (i32.store
      (local.get $2)
      (i32.add
       (local.tee $1
        (i32.and
         (i32.add
          (i32.load
           (local.get $2)
          )
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
       (i32.const 8)
      )
     )
     (i64.store
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
     (return)
    )
    (call $23)
    (unreachable)
   )
   (i32.store
    (local.get $2)
    (i32.add
     (local.tee $1
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 4)
    )
   )
   (i32.store
    (local.get $0)
    (i32.load
     (local.get $1)
    )
   )
  )
 )
 (func $23
  (drop
   (call $24
    (i32.const 3312)
    (i32.const 5112)
   )
  )
  (call $9)
  (unreachable)
 )
 (func $24 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (select
   (i32.const -1)
   (i32.const 0)
   (i32.ne
    (local.tee $2
     (call $39
      (local.get $0)
     )
    )
    (call $36
     (local.get $0)
     (i32.const 1)
     (local.get $2)
     (local.get $1)
    )
   )
  )
 )
 (func $25 (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.tee $0
       (call $fimport$9
        (local.get $0)
        (local.get $1)
        (i32.and
         (local.get $2)
         (i32.const 255)
        )
        (i32.add
         (local.get $3)
         (i32.const 8)
        )
       )
      )
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (select
      (i32.const 70)
      (local.get $0)
      (i32.eq
       (local.get $0)
       (i32.const 76)
      )
     )
    )
    (local.set $1
     (i64.const -1)
    )
    (br $label$1)
   )
   (local.set $1
    (i64.load offset=8
     (local.get $3)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
  )
  (local.get $1)
 )
 (func $26 (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (call $25
   (i32.load offset=56
    (local.get $0)
   )
   (local.get $1)
   (local.get $2)
  )
 )
 (func $27 (param $0 i32) (result i32)
  (call $10
   (i32.load offset=56
    (local.get $0)
   )
  )
 )
 (func $28 (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store offset=60
   (local.get $0)
   (i32.or
    (i32.add
     (local.tee $1
      (i32.load offset=60
       (local.get $0)
      )
     )
     (i32.const -1)
    )
    (local.get $1)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (local.tee $1
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 8)
     )
    )
   )
   (i32.store
    (local.get $0)
    (i32.or
     (local.get $1)
     (i32.const 32)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i64.store offset=4 align=4
   (local.get $0)
   (i64.const 0)
  )
  (i32.store offset=24
   (local.get $0)
   (local.tee $1
    (i32.load offset=40
     (local.get $0)
    )
   )
  )
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=44
     (local.get $0)
    )
   )
  )
  (i32.const 0)
 )
 (func $29 (result i32)
  (i32.const 4064)
 )
 (func $30
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.tee $0
      (i32.load
       (call $29)
      )
     )
    )
   )
   (loop $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (i32.load offset=20
        (local.get $0)
       )
       (i32.load offset=24
        (local.get $0)
       )
      )
     )
     (drop
      (call_indirect (type $0)
       (local.get $0)
       (i32.const 0)
       (i32.const 0)
       (i32.load offset=32
        (local.get $0)
       )
      )
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eq
       (local.tee $1
        (i32.load offset=4
         (local.get $0)
        )
       )
       (local.tee $2
        (i32.load offset=8
         (local.get $0)
        )
       )
      )
     )
     (drop
      (call_indirect (type $5)
       (local.get $0)
       (i64.extend_i32_s
        (i32.sub
         (local.get $1)
         (local.get $2)
        )
       )
       (i32.const 0)
       (i32.load offset=36
        (local.get $0)
       )
      )
     )
    )
    (br_if $label$2
     (local.tee $0
      (i32.load offset=52
       (local.get $0)
      )
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (local.tee $0
      (i32.load offset=4068
       (i32.const 0)
      )
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eq
      (i32.load offset=20
       (local.get $0)
      )
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (drop
     (call_indirect (type $0)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.load offset=32
       (local.get $0)
      )
     )
    )
   )
   (br_if $label$5
    (i32.eq
     (local.tee $1
      (i32.load offset=4
       (local.get $0)
      )
     )
     (local.tee $2
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
   )
   (drop
    (call_indirect (type $5)
     (local.get $0)
     (i64.extend_i32_s
      (i32.sub
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
     (i32.load offset=36
      (local.get $0)
     )
    )
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (local.tee $0
      (i32.load offset=5344
       (i32.const 0)
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eq
      (i32.load offset=20
       (local.get $0)
      )
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (drop
     (call_indirect (type $0)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.load offset=32
       (local.get $0)
      )
     )
    )
   )
   (br_if $label$7
    (i32.eq
     (local.tee $1
      (i32.load offset=4
       (local.get $0)
      )
     )
     (local.tee $2
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
   )
   (drop
    (call_indirect (type $5)
     (local.get $0)
     (i64.extend_i32_s
      (i32.sub
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
     (i32.load offset=36
      (local.get $0)
     )
    )
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (local.tee $0
      (i32.load offset=5224
       (i32.const 0)
      )
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eq
      (i32.load offset=20
       (local.get $0)
      )
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (drop
     (call_indirect (type $0)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.load offset=32
       (local.get $0)
      )
     )
    )
   )
   (br_if $label$9
    (i32.eq
     (local.tee $1
      (i32.load offset=4
       (local.get $0)
      )
     )
     (local.tee $2
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
   )
   (drop
    (call_indirect (type $5)
     (local.get $0)
     (i64.extend_i32_s
      (i32.sub
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
     (i32.load offset=36
      (local.get $0)
     )
    )
   )
  )
 )
 (func $31 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (global.set $global$0
   (local.tee $1
    (i32.sub
     (global.get $global$0)
     (i32.const 32)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (local.tee $0
      (call $fimport$7
       (local.get $0)
       (i32.add
        (local.get $1)
        (i32.const 8)
       )
      )
     )
    )
    (local.set $0
     (i32.const 59)
    )
    (br_if $label$2
     (i32.ne
      (i32.load8_u offset=8
       (local.get $1)
      )
      (i32.const 2)
     )
    )
    (br_if $label$2
     (i32.and
      (i32.load8_u offset=16
       (local.get $1)
      )
      (i32.const 36)
     )
    )
    (local.set $2
     (i32.const 1)
    )
    (br $label$1)
   )
   (local.set $2
    (i32.const 0)
   )
   (i32.store offset=4016
    (i32.const 0)
    (local.get $0)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $1)
    (i32.const 32)
   )
  )
  (local.get $2)
 )
 (func $32 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.store offset=32
   (local.get $0)
   (i32.const 2)
  )
  (block $label$1
   (br_if $label$1
    (i32.and
     (i32.load8_u
      (local.get $0)
     )
     (i32.const 64)
    )
   )
   (br_if $label$1
    (call $31
     (i32.load offset=56
      (local.get $0)
     )
    )
   )
   (i32.store offset=64
    (local.get $0)
    (i32.const -1)
   )
  )
  (call $38
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $33 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (global.set $global$0
   (local.tee $2
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store8 offset=15
   (local.get $2)
   (local.get $1)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (local.tee $3
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (local.set $3
     (i32.const -1)
    )
    (br_if $label$1
     (call $28
      (local.get $0)
     )
    )
    (local.set $3
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eq
      (local.tee $4
       (i32.load offset=20
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br_if $label$3
     (i32.eq
      (i32.load offset=64
       (local.get $0)
      )
      (local.tee $3
       (i32.and
        (local.get $1)
        (i32.const 255)
       )
      )
     )
    )
    (i32.store offset=20
     (local.get $0)
     (i32.add
      (local.get $4)
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $4)
     (local.get $1)
    )
    (br $label$1)
   )
   (local.set $3
    (i32.const -1)
   )
   (br_if $label$1
    (i32.ne
     (call_indirect (type $0)
      (local.get $0)
      (i32.add
       (local.get $2)
       (i32.const 15)
      )
      (i32.const 1)
      (i32.load offset=32
       (local.get $0)
      )
     )
     (i32.const 1)
    )
   )
   (local.set $3
    (i32.load8_u offset=15
     (local.get $2)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $2)
    (i32.const 16)
   )
  )
  (local.get $3)
 )
 (func $34 (param $0 i32) (result i32)
  (block $label$1
   (br_if $label$1
    (i32.ge_s
     (call $24
      (local.get $0)
      (i32.const 5232)
     )
     (i32.const 0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (i32.load offset=5296
      (i32.const 0)
     )
     (i32.const 10)
    )
   )
   (br_if $label$2
    (i32.eq
     (local.tee $0
      (i32.load offset=5252
       (i32.const 0)
      )
     )
     (i32.load offset=5248
      (i32.const 0)
     )
    )
   )
   (i32.store offset=5252
    (i32.const 0)
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (i32.store8
    (local.get $0)
    (i32.const 10)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.shr_s
   (call $33
    (i32.const 5232)
    (i32.const 10)
   )
   (i32.const 31)
  )
 )
 (func $35 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (local.tee $3
      (i32.load offset=16
       (local.get $2)
      )
     )
    )
    (local.set $4
     (i32.const 0)
    )
    (br_if $label$1
     (call $28
      (local.get $2)
     )
    )
    (local.set $3
     (i32.load offset=16
      (local.get $2)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.ge_u
      (i32.sub
       (local.get $3)
       (local.tee $5
        (i32.load offset=20
         (local.get $2)
        )
       )
      )
      (local.get $1)
     )
    )
    (return
     (call_indirect (type $0)
      (local.get $2)
      (local.get $0)
      (local.get $1)
      (i32.load offset=32
       (local.get $2)
      )
     )
    )
   )
   (local.set $6
    (i32.const 0)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_s
      (i32.load offset=64
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (local.set $6
     (i32.const 0)
    )
    (local.set $4
     (local.get $0)
    )
    (local.set $3
     (i32.const 0)
    )
    (loop $label$5
     (br_if $label$4
      (i32.eq
       (local.get $1)
       (local.get $3)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (local.set $7
      (i32.add
       (local.get $4)
       (local.get $1)
      )
     )
     (local.set $4
      (local.tee $8
       (i32.add
        (local.get $4)
        (i32.const -1)
       )
      )
     )
     (br_if $label$5
      (i32.ne
       (i32.load8_u
        (i32.add
         (local.get $7)
         (i32.const -1)
        )
       )
       (i32.const 10)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (local.tee $4
       (call_indirect (type $0)
        (local.get $2)
        (local.get $0)
        (local.tee $6
         (i32.add
          (i32.sub
           (local.get $1)
           (local.get $3)
          )
          (i32.const 1)
         )
        )
        (i32.load offset=32
         (local.get $2)
        )
       )
      )
      (local.get $6)
     )
    )
    (local.set $0
     (i32.add
      (i32.add
       (local.get $8)
       (local.get $1)
      )
      (i32.const 1)
     )
    )
    (local.set $5
     (i32.load offset=20
      (local.get $2)
     )
    )
    (local.set $1
     (i32.add
      (local.get $3)
      (i32.const -1)
     )
    )
   )
   (drop
    (call $42
     (local.get $5)
     (local.get $0)
     (local.get $1)
    )
   )
   (i32.store offset=20
    (local.get $2)
    (i32.add
     (i32.load offset=20
      (local.get $2)
     )
     (local.get $1)
    )
   )
   (local.set $4
    (i32.add
     (local.get $6)
     (local.get $1)
    )
   )
  )
  (local.get $4)
 )
 (func $36 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (block $label$1
   (br_if $label$1
    (i32.ne
     (local.tee $0
      (call $35
       (local.get $0)
       (local.tee $4
        (i32.mul
         (local.get $2)
         (local.get $1)
        )
       )
       (local.get $3)
      )
     )
     (local.get $4)
    )
   )
   (return
    (select
     (local.get $2)
     (i32.const 0)
     (local.get $1)
    )
   )
  )
  (i32.div_u
   (local.get $0)
   (local.get $1)
  )
 )
 (func $37 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (local.set $4
   (i32.const -1)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (local.get $2)
      (i32.const -1)
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (i32.const 28)
    )
    (br $label$1)
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.tee $2
       (call $fimport$10
        (local.get $0)
        (local.get $1)
        (local.get $2)
        (i32.add
         (local.get $3)
         (i32.const 12)
        )
       )
      )
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (local.get $2)
    )
    (local.set $4
     (i32.const -1)
    )
    (br $label$1)
   )
   (local.set $4
    (i32.load offset=12
     (local.get $3)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
  )
  (local.get $4)
 )
 (func $38 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $2)
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $1)
  )
  (i32.store
   (local.get $3)
   (local.tee $1
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.tee $1
    (i32.sub
     (i32.load offset=20
      (local.get $0)
     )
     (local.get $1)
    )
   )
  )
  (local.set $4
   (i32.const 2)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eq
      (local.tee $5
       (i32.add
        (local.get $1)
        (local.get $2)
       )
      )
      (local.tee $6
       (call $37
        (i32.load offset=56
         (local.get $0)
        )
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (local.set $1
     (local.get $3)
    )
    (loop $label$3
     (block $label$4
      (br_if $label$4
       (i32.gt_s
        (local.get $6)
        (i32.const -1)
       )
      )
      (local.set $6
       (i32.const 0)
      )
      (i32.store offset=24
       (local.get $0)
       (i32.const 0)
      )
      (i64.store offset=16
       (local.get $0)
       (i64.const 0)
      )
      (i32.store
       (local.get $0)
       (i32.or
        (i32.load
         (local.get $0)
        )
        (i32.const 32)
       )
      )
      (br_if $label$1
       (i32.eq
        (local.get $4)
        (i32.const 2)
       )
      )
      (local.set $6
       (i32.sub
        (local.get $2)
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (br $label$1)
     )
     (i32.store
      (local.tee $1
       (select
        (i32.add
         (local.get $1)
         (i32.const 8)
        )
        (local.get $1)
        (local.tee $8
         (i32.gt_u
          (local.get $6)
          (local.tee $7
           (i32.load offset=4
            (local.get $1)
           )
          )
         )
        )
       )
      )
      (i32.add
       (i32.load
        (local.get $1)
       )
       (local.tee $7
        (i32.sub
         (local.get $6)
         (select
          (local.get $7)
          (i32.const 0)
          (local.get $8)
         )
        )
       )
      )
     )
     (i32.store offset=4
      (local.get $1)
      (i32.sub
       (i32.load offset=4
        (local.get $1)
       )
       (local.get $7)
      )
     )
     (local.set $5
      (i32.sub
       (local.get $5)
       (local.get $6)
      )
     )
     (local.set $6
      (local.tee $8
       (call $37
        (i32.load offset=56
         (local.get $0)
        )
        (local.get $1)
        (local.tee $4
         (i32.sub
          (local.get $4)
          (local.get $8)
         )
        )
       )
      )
     )
     (br_if $label$3
      (i32.ne
       (local.get $5)
       (local.get $8)
      )
     )
    )
   )
   (i32.store offset=24
    (local.get $0)
    (local.tee $1
     (i32.load offset=40
      (local.get $0)
     )
    )
   )
   (i32.store offset=20
    (local.get $0)
    (local.get $1)
   )
   (i32.store offset=16
    (local.get $0)
    (i32.add
     (local.get $1)
     (i32.load offset=44
      (local.get $0)
     )
    )
   )
   (local.set $6
    (local.get $2)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
  )
  (local.get $6)
 )
 (func $39 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (local.get $0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (i32.and
        (local.get $0)
        (i32.const 3)
       )
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.load8_u
        (local.get $0)
       )
      )
      (return
       (i32.sub
        (local.get $0)
        (local.get $0)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (loop $label$5
      (br_if $label$3
       (i32.eqz
        (i32.and
         (local.get $1)
         (i32.const 3)
        )
       )
      )
      (local.set $2
       (i32.load8_u
        (local.get $1)
       )
      )
      (local.set $1
       (local.tee $3
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (br_if $label$2
       (i32.eqz
        (local.get $2)
       )
      )
      (br $label$5)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const -4)
     )
    )
    (loop $label$6
     (br_if $label$6
      (i32.eqz
       (i32.and
        (i32.and
         (i32.xor
          (local.tee $2
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
           )
          )
          (i32.const -1)
         )
         (i32.add
          (local.get $2)
          (i32.const -16843009)
         )
        )
        (i32.const -2139062144)
       )
      )
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.and
       (local.get $2)
       (i32.const 255)
      )
     )
     (return
      (i32.sub
       (local.get $1)
       (local.get $0)
      )
     )
    )
    (loop $label$8
     (local.set $2
      (i32.load8_u offset=1
       (local.get $1)
      )
     )
     (local.set $1
      (local.tee $3
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
     )
     (br_if $label$8
      (local.get $2)
     )
     (br $label$1)
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const -1)
    )
   )
  )
  (i32.sub
   (local.get $3)
   (local.get $0)
  )
 )
 (func $40 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (local.tee $2
     (call $3
      (local.tee $1
       (i32.add
        (call $39
         (local.get $0)
        )
        (i32.const 1)
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $42
   (local.get $2)
   (local.get $0)
   (local.get $1)
  )
 )
 (func $41 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (select
   (i32.sub
    (local.tee $2
     (call $44
      (local.get $0)
      (i32.const 0)
      (local.get $1)
     )
    )
    (local.get $0)
   )
   (local.get $1)
   (local.get $2)
  )
 )
 (func $42 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $2)
     )
    )
    (br_if $label$2
     (i32.eqz
      (i32.and
       (local.get $1)
       (i32.const 3)
      )
     )
    )
    (local.set $3
     (local.get $0)
    )
    (loop $label$3
     (i32.store8
      (local.get $3)
      (i32.load8_u
       (local.get $1)
      )
     )
     (local.set $4
      (i32.add
       (local.get $2)
       (i32.const -1)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br_if $label$1
      (i32.eq
       (local.get $2)
       (i32.const 1)
      )
     )
     (local.set $2
      (local.get $4)
     )
     (br_if $label$3
      (i32.and
       (local.get $1)
       (i32.const 3)
      )
     )
     (br $label$1)
    )
   )
   (local.set $4
    (local.get $2)
   )
   (local.set $3
    (local.get $0)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (local.tee $2
      (i32.and
       (local.get $3)
       (i32.const 3)
      )
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ge_u
        (local.get $4)
        (i32.const 16)
       )
      )
      (local.set $2
       (local.get $4)
      )
      (br $label$6)
     )
     (local.set $2
      (i32.add
       (local.get $4)
       (i32.const -16)
      )
     )
     (loop $label$8
      (i32.store
       (local.get $3)
       (i32.load
        (local.get $1)
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (i32.load
        (i32.add
         (local.get $1)
         (i32.const 8)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (i32.load
        (i32.add
         (local.get $1)
         (i32.const 12)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 16)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 16)
       )
      )
      (br_if $label$8
       (i32.gt_u
        (local.tee $4
         (i32.add
          (local.get $4)
          (i32.const -16)
         )
        )
        (i32.const 15)
       )
      )
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (i32.and
        (local.get $2)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (local.get $3)
      (i64.load align=4
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 8)
      )
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (i32.and
        (local.get $2)
        (i32.const 4)
       )
      )
     )
     (i32.store
      (local.get $3)
      (i32.load
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 4)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 4)
      )
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (i32.and
        (local.get $2)
        (i32.const 2)
       )
      )
     )
     (i32.store8
      (local.get $3)
      (i32.load8_u
       (local.get $1)
      )
     )
     (i32.store8 offset=1
      (local.get $3)
      (i32.load8_u offset=1
       (local.get $1)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
    )
    (br_if $label$4
     (i32.eqz
      (i32.and
       (local.get $2)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (local.get $3)
     (i32.load8_u
      (local.get $1)
     )
    )
    (return
     (local.get $0)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.lt_u
      (local.get $4)
      (i32.const 32)
     )
    )
    (br_if $label$12
     (i32.gt_u
      (local.tee $2
       (i32.add
        (local.get $2)
        (i32.const -1)
       )
      )
      (i32.const 2)
     )
    )
    (block $label$13
     (block $label$14
      (block $label$15
       (br_table $label$15 $label$14 $label$13 $label$15
        (local.get $2)
       )
      )
      (i32.store8 offset=1
       (local.get $3)
       (i32.load8_u offset=1
        (local.get $1)
       )
      )
      (i32.store8
       (local.get $3)
       (local.tee $5
        (i32.load
         (local.get $1)
        )
       )
      )
      (i32.store8 offset=2
       (local.get $3)
       (i32.load8_u offset=2
        (local.get $1)
       )
      )
      (local.set $6
       (i32.add
        (local.get $4)
        (i32.const -3)
       )
      )
      (local.set $7
       (i32.add
        (local.get $3)
        (i32.const 3)
       )
      )
      (local.set $8
       (i32.and
        (i32.add
         (local.get $4)
         (i32.const -20)
        )
        (i32.const -16)
       )
      )
      (local.set $2
       (i32.const 0)
      )
      (loop $label$16
       (i32.store
        (local.tee $3
         (i32.add
          (local.get $7)
          (local.get $2)
         )
        )
        (i32.or
         (i32.shl
          (local.tee $10
           (i32.load
            (i32.add
             (local.tee $9
              (i32.add
               (local.get $1)
               (local.get $2)
              )
             )
             (i32.const 4)
            )
           )
          )
          (i32.const 8)
         )
         (i32.shr_u
          (local.get $5)
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (i32.shl
          (local.tee $5
           (i32.load
            (i32.add
             (local.get $9)
             (i32.const 8)
            )
           )
          )
          (i32.const 8)
         )
         (i32.shr_u
          (local.get $10)
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 8)
        )
        (i32.or
         (i32.shl
          (local.tee $10
           (i32.load
            (i32.add
             (local.get $9)
             (i32.const 12)
            )
           )
          )
          (i32.const 8)
         )
         (i32.shr_u
          (local.get $5)
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 12)
        )
        (i32.or
         (i32.shl
          (local.tee $5
           (i32.load
            (i32.add
             (local.get $9)
             (i32.const 16)
            )
           )
          )
          (i32.const 8)
         )
         (i32.shr_u
          (local.get $10)
          (i32.const 24)
         )
        )
       )
       (local.set $2
        (i32.add
         (local.get $2)
         (i32.const 16)
        )
       )
       (br_if $label$16
        (i32.gt_u
         (local.tee $6
          (i32.add
           (local.get $6)
           (i32.const -16)
          )
         )
         (i32.const 16)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $7)
        (local.get $2)
       )
      )
      (local.set $1
       (i32.add
        (i32.add
         (local.get $1)
         (local.get $2)
        )
        (i32.const 3)
       )
      )
      (local.set $4
       (i32.add
        (i32.sub
         (local.get $4)
         (local.get $8)
        )
        (i32.const -19)
       )
      )
      (br $label$12)
     )
     (i32.store8
      (local.get $3)
      (local.tee $5
       (i32.load
        (local.get $1)
       )
      )
     )
     (i32.store8 offset=1
      (local.get $3)
      (i32.load8_u offset=1
       (local.get $1)
      )
     )
     (local.set $6
      (i32.add
       (local.get $4)
       (i32.const -2)
      )
     )
     (local.set $7
      (i32.add
       (local.get $3)
       (i32.const 2)
      )
     )
     (local.set $8
      (i32.and
       (i32.add
        (local.get $4)
        (i32.const -20)
       )
       (i32.const -16)
      )
     )
     (local.set $2
      (i32.const 0)
     )
     (loop $label$17
      (i32.store
       (local.tee $3
        (i32.add
         (local.get $7)
         (local.get $2)
        )
       )
       (i32.or
        (i32.shl
         (local.tee $10
          (i32.load
           (i32.add
            (local.tee $9
             (i32.add
              (local.get $1)
              (local.get $2)
             )
            )
            (i32.const 4)
           )
          )
         )
         (i32.const 16)
        )
        (i32.shr_u
         (local.get $5)
         (i32.const 16)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 4)
       )
       (i32.or
        (i32.shl
         (local.tee $5
          (i32.load
           (i32.add
            (local.get $9)
            (i32.const 8)
           )
          )
         )
         (i32.const 16)
        )
        (i32.shr_u
         (local.get $10)
         (i32.const 16)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (i32.or
        (i32.shl
         (local.tee $10
          (i32.load
           (i32.add
            (local.get $9)
            (i32.const 12)
           )
          )
         )
         (i32.const 16)
        )
        (i32.shr_u
         (local.get $5)
         (i32.const 16)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (i32.or
        (i32.shl
         (local.tee $5
          (i32.load
           (i32.add
            (local.get $9)
            (i32.const 16)
           )
          )
         )
         (i32.const 16)
        )
        (i32.shr_u
         (local.get $10)
         (i32.const 16)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 16)
       )
      )
      (br_if $label$17
       (i32.gt_u
        (local.tee $6
         (i32.add
          (local.get $6)
          (i32.const -16)
         )
        )
        (i32.const 17)
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $7)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (i32.add
        (local.get $1)
        (local.get $2)
       )
       (i32.const 2)
      )
     )
     (local.set $4
      (i32.add
       (i32.sub
        (local.get $4)
        (local.get $8)
       )
       (i32.const -18)
      )
     )
     (br $label$12)
    )
    (i32.store8
     (local.get $3)
     (local.tee $5
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.set $6
     (i32.add
      (local.get $4)
      (i32.const -1)
     )
    )
    (local.set $7
     (i32.add
      (local.get $3)
      (i32.const 1)
     )
    )
    (local.set $8
     (i32.and
      (i32.add
       (local.get $4)
       (i32.const -20)
      )
      (i32.const -16)
     )
    )
    (local.set $2
     (i32.const 0)
    )
    (loop $label$18
     (i32.store
      (local.tee $3
       (i32.add
        (local.get $7)
        (local.get $2)
       )
      )
      (i32.or
       (i32.shl
        (local.tee $10
         (i32.load
          (i32.add
           (local.tee $9
            (i32.add
             (local.get $1)
             (local.get $2)
            )
           )
           (i32.const 4)
          )
         )
        )
        (i32.const 24)
       )
       (i32.shr_u
        (local.get $5)
        (i32.const 8)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $3)
       (i32.const 4)
      )
      (i32.or
       (i32.shl
        (local.tee $5
         (i32.load
          (i32.add
           (local.get $9)
           (i32.const 8)
          )
         )
        )
        (i32.const 24)
       )
       (i32.shr_u
        (local.get $10)
        (i32.const 8)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $3)
       (i32.const 8)
      )
      (i32.or
       (i32.shl
        (local.tee $10
         (i32.load
          (i32.add
           (local.get $9)
           (i32.const 12)
          )
         )
        )
        (i32.const 24)
       )
       (i32.shr_u
        (local.get $5)
        (i32.const 8)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $3)
       (i32.const 12)
      )
      (i32.or
       (i32.shl
        (local.tee $5
         (i32.load
          (i32.add
           (local.get $9)
           (i32.const 16)
          )
         )
        )
        (i32.const 24)
       )
       (i32.shr_u
        (local.get $10)
        (i32.const 8)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 16)
      )
     )
     (br_if $label$18
      (i32.gt_u
       (local.tee $6
        (i32.add
         (local.get $6)
         (i32.const -16)
        )
       )
       (i32.const 18)
      )
     )
    )
    (local.set $3
     (i32.add
      (local.get $7)
      (local.get $2)
     )
    )
    (local.set $1
     (i32.add
      (i32.add
       (local.get $1)
       (local.get $2)
      )
      (i32.const 1)
     )
    )
    (local.set $4
     (i32.add
      (i32.sub
       (local.get $4)
       (local.get $8)
      )
      (i32.const -17)
     )
    )
   )
   (block $label$19
    (br_if $label$19
     (i32.eqz
      (i32.and
       (local.get $4)
       (i32.const 16)
      )
     )
    )
    (i32.store16 align=1
     (local.get $3)
     (i32.load16_u align=1
      (local.get $1)
     )
    )
    (i32.store8 offset=2
     (local.get $3)
     (i32.load8_u offset=2
      (local.get $1)
     )
    )
    (i32.store8 offset=3
     (local.get $3)
     (i32.load8_u offset=3
      (local.get $1)
     )
    )
    (i32.store8 offset=4
     (local.get $3)
     (i32.load8_u offset=4
      (local.get $1)
     )
    )
    (i32.store8 offset=5
     (local.get $3)
     (i32.load8_u offset=5
      (local.get $1)
     )
    )
    (i32.store8 offset=6
     (local.get $3)
     (i32.load8_u offset=6
      (local.get $1)
     )
    )
    (i32.store8 offset=7
     (local.get $3)
     (i32.load8_u offset=7
      (local.get $1)
     )
    )
    (i32.store8 offset=8
     (local.get $3)
     (i32.load8_u offset=8
      (local.get $1)
     )
    )
    (i32.store8 offset=9
     (local.get $3)
     (i32.load8_u offset=9
      (local.get $1)
     )
    )
    (i32.store8 offset=10
     (local.get $3)
     (i32.load8_u offset=10
      (local.get $1)
     )
    )
    (i32.store8 offset=11
     (local.get $3)
     (i32.load8_u offset=11
      (local.get $1)
     )
    )
    (i32.store8 offset=12
     (local.get $3)
     (i32.load8_u offset=12
      (local.get $1)
     )
    )
    (i32.store8 offset=13
     (local.get $3)
     (i32.load8_u offset=13
      (local.get $1)
     )
    )
    (i32.store8 offset=14
     (local.get $3)
     (i32.load8_u offset=14
      (local.get $1)
     )
    )
    (i32.store8 offset=15
     (local.get $3)
     (i32.load8_u offset=15
      (local.get $1)
     )
    )
    (local.set $3
     (i32.add
      (local.get $3)
      (i32.const 16)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 16)
     )
    )
   )
   (block $label$20
    (br_if $label$20
     (i32.eqz
      (i32.and
       (local.get $4)
       (i32.const 8)
      )
     )
    )
    (i32.store8
     (local.get $3)
     (i32.load8_u
      (local.get $1)
     )
    )
    (i32.store8 offset=1
     (local.get $3)
     (i32.load8_u offset=1
      (local.get $1)
     )
    )
    (i32.store8 offset=2
     (local.get $3)
     (i32.load8_u offset=2
      (local.get $1)
     )
    )
    (i32.store8 offset=3
     (local.get $3)
     (i32.load8_u offset=3
      (local.get $1)
     )
    )
    (i32.store8 offset=4
     (local.get $3)
     (i32.load8_u offset=4
      (local.get $1)
     )
    )
    (i32.store8 offset=5
     (local.get $3)
     (i32.load8_u offset=5
      (local.get $1)
     )
    )
    (i32.store8 offset=6
     (local.get $3)
     (i32.load8_u offset=6
      (local.get $1)
     )
    )
    (i32.store8 offset=7
     (local.get $3)
     (i32.load8_u offset=7
      (local.get $1)
     )
    )
    (local.set $3
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
   )
   (block $label$21
    (br_if $label$21
     (i32.eqz
      (i32.and
       (local.get $4)
       (i32.const 4)
      )
     )
    )
    (i32.store8
     (local.get $3)
     (i32.load8_u
      (local.get $1)
     )
    )
    (i32.store8 offset=1
     (local.get $3)
     (i32.load8_u offset=1
      (local.get $1)
     )
    )
    (i32.store8 offset=2
     (local.get $3)
     (i32.load8_u offset=2
      (local.get $1)
     )
    )
    (i32.store8 offset=3
     (local.get $3)
     (i32.load8_u offset=3
      (local.get $1)
     )
    )
    (local.set $3
     (i32.add
      (local.get $3)
      (i32.const 4)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 4)
     )
    )
   )
   (block $label$22
    (br_if $label$22
     (i32.eqz
      (i32.and
       (local.get $4)
       (i32.const 2)
      )
     )
    )
    (i32.store8
     (local.get $3)
     (i32.load8_u
      (local.get $1)
     )
    )
    (i32.store8 offset=1
     (local.get $3)
     (i32.load8_u offset=1
      (local.get $1)
     )
    )
    (local.set $3
     (i32.add
      (local.get $3)
      (i32.const 2)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 2)
     )
    )
   )
   (br_if $label$4
    (i32.eqz
     (i32.and
      (local.get $4)
      (i32.const 1)
     )
    )
   )
   (i32.store8
    (local.get $3)
    (i32.load8_u
     (local.get $1)
    )
   )
  )
  (local.get $0)
 )
 (func $43 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $2)
    )
   )
   (i32.store8
    (local.get $0)
    (local.get $1)
   )
   (i32.store8
    (i32.add
     (local.tee $3
      (i32.add
       (local.get $2)
       (local.get $0)
      )
     )
     (i32.const -1)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 3)
    )
   )
   (i32.store8 offset=2
    (local.get $0)
    (local.get $1)
   )
   (i32.store8 offset=1
    (local.get $0)
    (local.get $1)
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -3)
    )
    (local.get $1)
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -2)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 7)
    )
   )
   (i32.store8 offset=3
    (local.get $0)
    (local.get $1)
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -4)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 9)
    )
   )
   (i32.store
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.tee $4
       (i32.and
        (i32.sub
         (i32.const 0)
         (local.get $0)
        )
        (i32.const 3)
       )
      )
     )
    )
    (local.tee $1
     (i32.mul
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
      (i32.const 16843009)
     )
    )
   )
   (i32.store
    (i32.add
     (local.tee $2
      (i32.add
       (local.get $3)
       (local.tee $4
        (i32.and
         (i32.sub
          (local.get $2)
          (local.get $4)
         )
         (i32.const -4)
        )
       )
      )
     )
     (i32.const -4)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $4)
     (i32.const 9)
    )
   )
   (i32.store offset=8
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=4
    (local.get $3)
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -8)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -12)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $4)
     (i32.const 25)
    )
   )
   (i32.store offset=24
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=20
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=16
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=12
    (local.get $3)
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -16)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -20)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -24)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -28)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.tee $2
      (i32.sub
       (local.get $4)
       (local.tee $5
        (i32.or
         (i32.and
          (local.get $3)
          (i32.const 4)
         )
         (i32.const 24)
        )
       )
      )
     )
     (i32.const 32)
    )
   )
   (local.set $6
    (i64.or
     (i64.shl
      (local.tee $6
       (i64.extend_i32_u
        (local.get $1)
       )
      )
      (i64.const 32)
     )
     (local.get $6)
    )
   )
   (local.set $1
    (i32.add
     (local.get $3)
     (local.get $5)
    )
   )
   (loop $label$2
    (i64.store
     (local.get $1)
     (local.get $6)
    )
    (i64.store
     (i32.add
      (local.get $1)
      (i32.const 24)
     )
     (local.get $6)
    )
    (i64.store
     (i32.add
      (local.get $1)
      (i32.const 16)
     )
     (local.get $6)
    )
    (i64.store
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
     (local.get $6)
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 32)
     )
    )
    (br_if $label$2
     (i32.gt_u
      (local.tee $2
       (i32.add
        (local.get $2)
        (i32.const -32)
       )
      )
      (i32.const 31)
     )
    )
   )
  )
  (local.get $0)
 )
 (func $44 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.ne
    (local.get $2)
    (i32.const 0)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (local.get $2)
      )
      (local.set $4
       (local.get $2)
      )
      (br $label$3)
     )
     (block $label$5
      (br_if $label$5
       (i32.and
        (local.get $0)
        (i32.const 3)
       )
      )
      (local.set $4
       (local.get $2)
      )
      (br $label$3)
     )
     (local.set $5
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
     )
     (loop $label$6
      (block $label$7
       (br_if $label$7
        (i32.ne
         (i32.load8_u
          (local.get $0)
         )
         (local.get $5)
        )
       )
       (local.set $4
        (local.get $2)
       )
       (br $label$2)
      )
      (local.set $3
       (i32.ne
        (local.get $2)
        (i32.const 1)
       )
      )
      (local.set $4
       (i32.add
        (local.get $2)
        (i32.const -1)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.eq
        (local.get $2)
        (i32.const 1)
       )
      )
      (local.set $2
       (local.get $4)
      )
      (br_if $label$6
       (i32.and
        (local.get $0)
        (i32.const 3)
       )
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (local.get $3)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eq
      (i32.load8_u
       (local.get $0)
      )
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
     )
    )
    (br_if $label$8
     (i32.lt_u
      (local.get $4)
      (i32.const 4)
     )
    )
    (local.set $3
     (i32.mul
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
      (i32.const 16843009)
     )
    )
    (loop $label$9
     (br_if $label$8
      (i32.and
       (i32.and
        (i32.xor
         (local.tee $2
          (i32.xor
           (i32.load
            (local.get $0)
           )
           (local.get $3)
          )
         )
         (i32.const -1)
        )
        (i32.add
         (local.get $2)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 4)
      )
     )
     (br_if $label$9
      (i32.gt_u
       (local.tee $4
        (i32.add
         (local.get $4)
         (i32.const -4)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (local.get $4)
    )
   )
   (local.set $2
    (i32.and
     (local.get $1)
     (i32.const 255)
    )
   )
   (loop $label$10
    (block $label$11
     (br_if $label$11
      (i32.ne
       (i32.load8_u
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (return
      (local.get $0)
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (i32.const 1)
     )
    )
    (br_if $label$10
     (local.tee $4
      (i32.add
       (local.get $4)
       (i32.const -1)
      )
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $45 (param $0 i32) (param $1 i32) (result i32)
  (local.get $0)
 )
 (func $46 (param $0 i32) (param $1 i32) (result i32)
  (call $45
   (local.get $0)
   (local.get $1)
  )
 )
 (func $47 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $label$1
   (local.set $2
    (i32.add
     (local.tee $1
      (i32.load8_s
       (local.get $0)
      )
     )
     (i32.const -9)
    )
   )
   (local.set $0
    (local.tee $3
     (i32.add
      (local.get $0)
      (i32.const 1)
     )
    )
   )
   (br_if $label$1
    (i32.eq
     (local.get $1)
     (i32.const 32)
    )
   )
   (local.set $0
    (local.get $3)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 5)
    )
   )
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.gt_u
        (local.tee $0
         (i32.add
          (local.get $1)
          (i32.const -43)
         )
        )
        (i32.const 2)
       )
      )
      (local.set $4
       (i32.const 0)
      )
      (br_table $label$3 $label$5 $label$4 $label$3
       (local.get $0)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const -1)
      )
     )
     (local.set $4
      (i32.const 0)
     )
     (br $label$2)
    )
    (local.set $4
     (i32.const 1)
    )
   )
   (local.set $1
    (i32.load8_s
     (local.get $3)
    )
   )
  )
  (local.set $2
   (i32.const 0)
  )
  (block $label$6
   (br_if $label$6
    (i32.gt_u
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -48)
      )
     )
     (i32.const 9)
    )
   )
   (local.set $0
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (local.set $2
    (i32.const 0)
   )
   (loop $label$7
    (local.set $2
     (i32.sub
      (i32.mul
       (local.get $2)
       (i32.const 10)
      )
      (local.get $1)
     )
    )
    (local.set $1
     (i32.load8_s
      (local.get $0)
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (i32.lt_u
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const -48)
       )
      )
      (i32.const 10)
     )
    )
   )
  )
  (select
   (local.get $2)
   (i32.sub
    (i32.const 0)
    (local.get $2)
   )
   (local.get $4)
  )
 )
 (func $48 (param $0 i32) (param $1 i32) (result i32)
  (block $label$1
   (br_if $label$1
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $49
   (local.get $0)
   (local.get $1)
   (i32.const 0)
  )
 )
 (func $49 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.const 1)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $0)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.gt_u
      (local.get $1)
      (i32.const 127)
     )
    )
    (i32.store8
     (local.get $0)
     (local.get $1)
    )
    (return
     (i32.const 1)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.load offset=4028
       (i32.const 0)
      )
     )
     (block $label$5
      (br_if $label$5
       (i32.eq
        (i32.and
         (local.get $1)
         (i32.const -128)
        )
        (i32.const 57216)
       )
      )
      (i32.store offset=4016
       (i32.const 0)
       (i32.const 25)
      )
      (br $label$3)
     )
     (i32.store8
      (local.get $0)
      (local.get $1)
     )
     (return
      (i32.const 1)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.gt_u
       (local.get $1)
       (i32.const 2047)
      )
     )
     (i32.store8 offset=1
      (local.get $0)
      (i32.or
       (i32.and
        (local.get $1)
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (i32.store8
      (local.get $0)
      (i32.or
       (i32.shr_u
        (local.get $1)
        (i32.const 6)
       )
       (i32.const 192)
      )
     )
     (return
      (i32.const 2)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.lt_u
        (local.get $1)
        (i32.const 55296)
       )
      )
      (br_if $label$7
       (i32.ne
        (i32.and
         (local.get $1)
         (i32.const -8192)
        )
        (i32.const 57344)
       )
      )
     )
     (i32.store8 offset=2
      (local.get $0)
      (i32.or
       (i32.and
        (local.get $1)
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (i32.store8
      (local.get $0)
      (i32.or
       (i32.shr_u
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 224)
      )
     )
     (i32.store8 offset=1
      (local.get $0)
      (i32.or
       (i32.and
        (i32.shr_u
         (local.get $1)
         (i32.const 6)
        )
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (return
      (i32.const 3)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.gt_u
       (i32.add
        (local.get $1)
        (i32.const -65536)
       )
       (i32.const 1048575)
      )
     )
     (i32.store8 offset=3
      (local.get $0)
      (i32.or
       (i32.and
        (local.get $1)
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (i32.store8
      (local.get $0)
      (i32.or
       (i32.shr_u
        (local.get $1)
        (i32.const 18)
       )
       (i32.const 240)
      )
     )
     (i32.store8 offset=2
      (local.get $0)
      (i32.or
       (i32.and
        (i32.shr_u
         (local.get $1)
         (i32.const 6)
        )
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (i32.store8 offset=1
      (local.get $0)
      (i32.or
       (i32.and
        (i32.shr_u
         (local.get $1)
         (i32.const 12)
        )
        (i32.const 63)
       )
       (i32.const 128)
      )
     )
     (return
      (i32.const 4)
     )
    )
    (i32.store offset=4016
     (i32.const 0)
     (i32.const 25)
    )
   )
   (local.set $3
    (i32.const -1)
   )
  )
  (local.get $3)
 )
 (func $50 (param $0 f64) (param $1 i32) (result f64)
  (local $2 i64)
  (local $3 i32)
  (block $label$1
   (br_if $label$1
    (i32.eq
     (local.tee $3
      (i32.and
       (i32.wrap_i64
        (i64.shr_u
         (local.tee $2
          (i64.reinterpret_f64
           (local.get $0)
          )
         )
         (i64.const 52)
        )
       )
       (i32.const 2047)
      )
     )
     (i32.const 2047)
    )
   )
   (block $label$2
    (br_if $label$2
     (local.get $3)
    )
    (block $label$3
     (br_if $label$3
      (f64.ne
       (local.get $0)
       (f64.const 0)
      )
     )
     (i32.store
      (local.get $1)
      (i32.const 0)
     )
     (return
      (local.get $0)
     )
    )
    (local.set $0
     (call $50
      (f64.mul
       (local.get $0)
       (f64.const 18446744073709551615)
      )
      (local.get $1)
     )
    )
    (i32.store
     (local.get $1)
     (i32.add
      (i32.load
       (local.get $1)
      )
      (i32.const -64)
     )
    )
    (return
     (local.get $0)
    )
   )
   (i32.store
    (local.get $1)
    (i32.add
     (local.get $3)
     (i32.const -1022)
    )
   )
   (local.set $0
    (f64.reinterpret_i64
     (i64.or
      (i64.and
       (local.get $2)
       (i64.const -9218868437227405313)
      )
      (i64.const 4602678819172646912)
     )
    )
   )
  )
  (local.get $0)
 )
 (func $research_fmod_body (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i64.eqz
      (local.tee $3
       (i64.shl
        (local.tee $2
         (i64.reinterpret_f64
          (local.get $1)
         )
        )
        (i64.const 1)
       )
      )
     )
    )
    (br_if $label$2
     (f64.ne
      (local.get $1)
      (local.get $1)
     )
    )
    (br_if $label$1
     (i32.ne
      (local.tee $5
       (i32.and
        (i32.wrap_i64
         (i64.shr_u
          (local.tee $4
           (i64.reinterpret_f64
            (local.get $0)
           )
          )
          (i64.const 52)
         )
        )
        (i32.const 2047)
       )
      )
      (i32.const 2047)
     )
    )
   )
   (return
    (f64.div
     (local.tee $1
      (f64.mul
       (local.get $0)
       (local.get $1)
      )
     )
     (local.get $1)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i64.le_u
     (local.tee $6
      (i64.shl
       (local.get $4)
       (i64.const 1)
      )
     )
     (local.get $3)
    )
   )
   (local.set $7
    (i32.and
     (i32.wrap_i64
      (i64.shr_u
       (local.get $2)
       (i64.const 52)
      )
     )
     (i32.const 2047)
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (local.get $5)
     )
     (local.set $5
      (i32.const 0)
     )
     (block $label$6
      (br_if $label$6
       (i64.lt_s
        (local.tee $3
         (i64.shl
          (local.get $4)
          (i64.const 12)
         )
        )
        (i64.const 0)
       )
      )
      (loop $label$7
       (local.set $5
        (i32.add
         (local.get $5)
         (i32.const -1)
        )
       )
       (br_if $label$7
        (i64.gt_s
         (local.tee $3
          (i64.shl
           (local.get $3)
           (i64.const 1)
          )
         )
         (i64.const -1)
        )
       )
      )
     )
     (local.set $3
      (i64.shl
       (local.get $4)
       (i64.extend_i32_u
        (i32.sub
         (i32.const 1)
         (local.get $5)
        )
       )
      )
     )
     (br $label$4)
    )
    (local.set $3
     (i64.or
      (i64.and
       (local.get $4)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
    )
   )
   (block $label$8
    (block $label$9
     (br_if $label$9
      (local.get $7)
     )
     (local.set $7
      (i32.const 0)
     )
     (block $label$10
      (br_if $label$10
       (i64.lt_s
        (local.tee $6
         (i64.shl
          (local.get $2)
          (i64.const 12)
         )
        )
        (i64.const 0)
       )
      )
      (loop $label$11
       (local.set $7
        (i32.add
         (local.get $7)
         (i32.const -1)
        )
       )
       (br_if $label$11
        (i64.gt_s
         (local.tee $6
          (i64.shl
           (local.get $6)
           (i64.const 1)
          )
         )
         (i64.const -1)
        )
       )
      )
     )
     (local.set $2
      (i64.shl
       (local.get $2)
       (i64.extend_i32_u
        (i32.sub
         (i32.const 1)
         (local.get $7)
        )
       )
      )
     )
     (br $label$8)
    )
    (local.set $2
     (i64.or
      (i64.and
       (local.get $2)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
    )
   )
   (local.set $8
    (i64.gt_s
     (local.tee $6
      (i64.sub
       (local.get $3)
       (local.get $2)
      )
     )
     (i64.const -1)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.le_s
      (local.get $5)
      (local.get $7)
     )
    )
    (loop $label$13
     (global.set $research_steps (i64.add (global.get $research_steps) (i64.const 1)))
     (block $label$14
      (br_if $label$14
       (i32.eqz
        (i32.and
         (local.get $8)
         (i32.const 1)
        )
       )
      )
      (local.set $3
       (local.get $6)
      )
      (br_if $label$14
       (i64.ne
        (local.get $6)
        (i64.const 0)
       )
      )
      (return
       (f64.mul
        (local.get $0)
        (f64.const 0)
       )
      )
     )
     (local.set $8
      (i64.gt_s
       (local.tee $6
        (i64.sub
         (local.tee $3
          (i64.shl
           (local.get $3)
           (i64.const 1)
          )
         )
         (local.get $2)
        )
       )
       (i64.const -1)
      )
     )
     (br_if $label$13
      (i32.gt_s
       (local.tee $5
        (i32.add
         (local.get $5)
         (i32.const -1)
        )
       )
       (local.get $7)
      )
     )
    )
   )
   (block $label$15
    (br_if $label$15
     (i32.eqz
      (local.get $8)
     )
    )
    (local.set $3
     (local.get $6)
    )
    (br_if $label$15
     (i64.ne
      (local.get $6)
      (i64.const 0)
     )
    )
    (return
     (f64.mul
      (local.get $0)
      (f64.const 0)
     )
    )
   )
   (block $label$16
    (br_if $label$16
     (i64.gt_u
      (local.get $3)
      (i64.const 4503599627370495)
     )
    )
    (loop $label$17
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const -1)
      )
     )
     (br_if $label$17
      (i64.lt_u
       (local.tee $3
        (i64.shl
         (local.get $3)
         (i64.const 1)
        )
       )
       (i64.const 4503599627370496)
      )
     )
    )
   )
   (local.set $6
    (i64.and
     (local.get $4)
     (i64.const -9223372036854775808)
    )
   )
   (block $label$18
    (block $label$19
     (br_if $label$19
      (i32.lt_s
       (local.get $5)
       (i32.const 1)
      )
     )
     (local.set $3
      (i64.or
       (i64.add
        (local.get $3)
        (i64.const -4503599627370496)
       )
       (i64.shl
        (i64.extend_i32_u
         (local.get $5)
        )
        (i64.const 52)
       )
      )
     )
     (br $label$18)
    )
    (local.set $3
     (i64.shr_u
      (local.get $3)
      (i64.extend_i32_u
       (i32.sub
        (i32.const 1)
        (local.get $5)
       )
      )
     )
    )
   )
   (return
    (f64.reinterpret_i64
     (i64.or
      (local.get $3)
      (local.get $6)
     )
    )
   )
  )
  (select
   (f64.mul
    (local.get $0)
    (f64.const 0)
   )
   (local.get $0)
   (i64.eq
    (local.get $6)
    (local.get $3)
   )
  )
 )
 (func $52 (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (br_if $label$5
        (i64.lt_s
         (local.tee $1
          (i64.reinterpret_f64
           (local.get $0)
          )
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.gt_u
         (local.tee $2
          (i32.wrap_i64
           (i64.shr_u
            (local.get $1)
            (i64.const 32)
           )
          )
         )
         (i32.const 1048575)
        )
       )
      )
      (block $label$6
       (br_if $label$6
        (i64.ne
         (i64.and
          (local.get $1)
          (i64.const 9223372036854775807)
         )
         (i64.const 0)
        )
       )
       (return
        (f64.div
         (f64.const -1)
         (f64.mul
          (local.get $0)
          (local.get $0)
         )
        )
       )
      )
      (br_if $label$3
       (i64.gt_s
        (local.get $1)
        (i64.const -1)
       )
      )
      (return
       (f64.div
        (f64.sub
         (local.get $0)
         (local.get $0)
        )
        (f64.const 0)
       )
      )
     )
     (br_if $label$1
      (i32.gt_u
       (local.get $2)
       (i32.const 2146435071)
      )
     )
     (local.set $3
      (i32.const 1072693248)
     )
     (local.set $4
      (i32.const -1023)
     )
     (block $label$7
      (br_if $label$7
       (i32.eq
        (local.get $2)
        (i32.const 1072693248)
       )
      )
      (local.set $3
       (local.get $2)
      )
      (br $label$2)
     )
     (br_if $label$2
      (i32.wrap_i64
       (local.get $1)
      )
     )
     (return
      (f64.const 0)
     )
    )
    (local.set $3
     (i32.wrap_i64
      (i64.shr_u
       (local.tee $1
        (i64.reinterpret_f64
         (f64.mul
          (local.get $0)
          (f64.const 18014398509481984)
         )
        )
       )
       (i64.const 32)
      )
     )
    )
    (local.set $4
     (i32.const -1077)
    )
   )
   (local.set $0
    (f64.add
     (f64.mul
      (local.tee $5
       (f64.convert_i32_s
        (i32.add
         (local.get $4)
         (i32.shr_u
          (local.tee $2
           (i32.add
            (local.get $3)
            (i32.const 614242)
           )
          )
          (i32.const 20)
         )
        )
       )
      )
      (f64.const 0.6931471803691238)
     )
     (f64.add
      (local.tee $0
       (f64.add
        (f64.reinterpret_i64
         (i64.or
          (i64.shl
           (i64.extend_i32_u
            (i32.add
             (i32.and
              (local.get $2)
              (i32.const 1048575)
             )
             (i32.const 1072079006)
            )
           )
           (i64.const 32)
          )
          (i64.and
           (local.get $1)
           (i64.const 4294967295)
          )
         )
        )
        (f64.const -1)
       )
      )
      (f64.sub
       (f64.add
        (f64.mul
         (local.get $5)
         (f64.const 1.9082149292705877e-10)
        )
        (f64.mul
         (local.tee $5
          (f64.div
           (local.get $0)
           (f64.add
            (local.get $0)
            (f64.const 2)
           )
          )
         )
         (f64.add
          (local.tee $6
           (f64.mul
            (local.get $0)
            (f64.mul
             (local.get $0)
             (f64.const 0.5)
            )
           )
          )
          (f64.add
           (f64.mul
            (local.tee $0
             (f64.mul
              (local.tee $5
               (f64.mul
                (local.get $5)
                (local.get $5)
               )
              )
              (local.get $5)
             )
            )
            (f64.add
             (f64.mul
              (local.get $0)
              (f64.add
               (f64.mul
                (local.get $0)
                (f64.const 0.15313837699209373)
               )
               (f64.const 0.22222198432149784)
              )
             )
             (f64.const 0.3999999999940942)
            )
           )
           (f64.mul
            (local.get $5)
            (f64.add
             (f64.mul
              (local.get $0)
              (f64.add
               (f64.mul
                (local.get $0)
                (f64.add
                 (f64.mul
                  (local.get $0)
                  (f64.const 0.14798198605116586)
                 )
                 (f64.const 0.1818357216161805)
                )
               )
               (f64.const 0.2857142874366239)
              )
             )
             (f64.const 0.6666666666666735)
            )
           )
          )
         )
        )
       )
       (local.get $6)
      )
     )
    )
   )
  )
  (local.get $0)
 )

 (func $51 (param $x f64) (param $y f64) (result f64)
  (global.set $research_calls (i64.add (global.get $research_calls) (i64.const 1)))
  (call $research_fmod_body (local.get $x) (local.get $y)))
 (func $research_counts_finish
  (i64.store (i32.const 16) (global.get $research_calls))
  (i64.store (i32.const 24) (global.get $research_steps))
  (i32.store (i32.const 32) (i32.const 16))
  (i32.store (i32.const 36) (i32.const 16))
  (if (call $fimport$10 (i32.const 2) (i32.const 32) (i32.const 1) (i32.const 48)) (then (unreachable))))
)
