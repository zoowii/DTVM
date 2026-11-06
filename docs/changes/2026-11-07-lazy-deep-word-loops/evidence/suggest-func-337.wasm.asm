031b49 func[337] <_ZN4clap5build7command3App19unroll_arg_requires17h8741ca195d65a122E>:
 031b4a: 09 7f                      | local[5..13] type=i32
 031b4c: 01 7e                      | local[14] type=i64
 031b4e: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 031b54: 41 30                      | i32.const 48
 031b56: 6b                         | i32.sub
 031b57: 22 05                      | local.tee 5
 031b59: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 031b5f: 20 05                      | local.get 5
 031b61: 41 00                      | i32.const 0
 031b63: 36 02 18                   | i32.store 2 24
 031b66: 20 05                      | local.get 5
 031b68: 42 04                      | i64.const 4
 031b6a: 37 03 10                   | i64.store 3 16
 031b6d: 02 40                      | block
 031b6f: 02 40                      |   block
 031b71: 41 04                      |     i32.const 4
 031b73: 41 04                      |     i32.const 4
 031b75: 10 b1 80 80 80 00          |     call 49 <__rust_alloc>
 031b7b: 22 06                      |     local.tee 6
 031b7d: 45                         |     i32.eqz
 031b7e: 0d 00                      |     br_if 0
 031b80: 20 06                      |     local.get 6
 031b82: 20 04                      |     local.get 4
 031b84: 36 02 00                   |     i32.store 2 0
 031b87: 20 00                      |     local.get 0
 031b89: 41 00                      |     i32.const 0
 031b8b: 36 02 08                   |     i32.store 2 8
 031b8e: 20 00                      |     local.get 0
 031b90: 42 08                      |     i64.const 8
 031b92: 37 02 00                   |     i64.store 2 0
 031b95: 20 05                      |     local.get 5
 031b97: 20 06                      |     local.get 6
 031b99: 36 02 20                   |     i32.store 2 32
 031b9c: 20 05                      |     local.get 5
 031b9e: 42 01                      |     i64.const 1
 031ba0: 37 02 24                   |     i64.store 2 36
 031ba3: 20 04                      |     local.get 4
 031ba5: 45                         |     i32.eqz
 031ba6: 0d 01                      |     br_if 1
 031ba8: 20 02                      |     local.get 2
 031baa: 28 02 00                   |     i32.load 2 0
 031bad: 22 07                      |     local.tee 7
 031baf: 41 10                      |     i32.const 16
 031bb1: 6a                         |     i32.add
 031bb2: 21 08                      |     local.set 8
 031bb4: 20 03                      |     local.get 3
 031bb6: 28 02 00                   |     i32.load 2 0
 031bb9: 21 03                      |     local.set 3
 031bbb: 20 01                      |     local.get 1
 031bbd: 28 02 84 02                |     i32.load 2 260
 031bc1: 22 06                      |     local.tee 6
 031bc3: 41 c0 7d                   |     i32.const 4294966976
 031bc6: 6a                         |     i32.add
 031bc7: 21 09                      |     local.set 9
 031bc9: 20 01                      |     local.get 1
 031bcb: 41 8c 02                   |     i32.const 268
 031bce: 6a                         |     i32.add
 031bcf: 28 02 00                   |     i32.load 2 0
 031bd2: 41 c0 02                   |     i32.const 320
 031bd5: 6c                         |     i32.mul
 031bd6: 21 0a                      |     local.set 10
 031bd8: 20 06                      |     local.get 6
 031bda: 41 88 7e                   |     i32.const 4294967048
 031bdd: 6a                         |     i32.add
 031bde: 21 0b                      |     local.set 11
 031be0: 03 40                      |     loop
 031be2: 20 05                      |       local.get 5
 031be4: 28 02 18                   |       i32.load 2 24
 031be7: 22 0c                      |       local.tee 12
 031be9: 41 02                      |       i32.const 2
 031beb: 74                         |       i32.shl
 031bec: 21 06                      |       local.set 6
 031bee: 20 05                      |       local.get 5
 031bf0: 28 02 10                   |       i32.load 2 16
 031bf3: 22 0d                      |       local.tee 13
 031bf5: 21 01                      |       local.set 1
 031bf7: 02 40                      |       block
 031bf9: 02 40                      |         block
 031bfb: 03 40                      |           loop
 031bfd: 20 06                      |             local.get 6
 031bff: 45                         |             i32.eqz
 031c00: 0d 01                      |             br_if 1
 031c02: 20 06                      |             local.get 6
 031c04: 41 7c                      |             i32.const 4294967292
 031c06: 6a                         |             i32.add
 031c07: 21 06                      |             local.set 6
 031c09: 20 01                      |             local.get 1
 031c0b: 28 02 00                   |             i32.load 2 0
 031c0e: 21 02                      |             local.set 2
 031c10: 20 01                      |             local.get 1
 031c12: 41 04                      |             i32.const 4
 031c14: 6a                         |             i32.add
 031c15: 21 01                      |             local.set 1
 031c17: 20 04                      |             local.get 4
 031c19: 29 03 00                   |             i64.load 3 0
 031c1c: 20 02                      |             local.get 2
 031c1e: 29 03 00                   |             i64.load 3 0
 031c21: 52                         |             i64.ne
 031c22: 0d 00                      |             br_if 0
 031c24: 0c 02                      |             br 2
 031c26: 0b                         |           end
 031c27: 0b                         |         end
 031c28: 02 40                      |         block
 031c2a: 20 0c                      |           local.get 12
 031c2c: 20 05                      |           local.get 5
 031c2e: 28 02 14                   |           i32.load 2 20
 031c31: 47                         |           i32.ne
 031c32: 0d 00                      |           br_if 0
 031c34: 20 05                      |           local.get 5
 031c36: 41 10                      |           i32.const 16
 031c38: 6a                         |           i32.add
 031c39: 20 0c                      |           local.get 12
 031c3b: 10 d1 80 80 80 00          |           call 81 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h21a575b9c4cf47f2E>
 031c41: 20 05                      |           local.get 5
 031c43: 28 02 10                   |           i32.load 2 16
 031c46: 21 0d                      |           local.set 13
 031c48: 20 05                      |           local.get 5
 031c4a: 28 02 18                   |           i32.load 2 24
 031c4d: 21 0c                      |           local.set 12
 031c4f: 0b                         |         end
 031c50: 20 0d                      |         local.get 13
 031c52: 20 0c                      |         local.get 12
 031c54: 41 02                      |         i32.const 2
 031c56: 74                         |         i32.shl
 031c57: 6a                         |         i32.add
 031c58: 20 04                      |         local.get 4
 031c5a: 36 02 00                   |         i32.store 2 0
 031c5d: 20 05                      |         local.get 5
 031c5f: 20 05                      |         local.get 5
 031c61: 28 02 18                   |         i32.load 2 24
 031c64: 41 01                      |         i32.const 1
 031c66: 6a                         |         i32.add
 031c67: 36 02 18                   |         i32.store 2 24
 031c6a: 20 0a                      |         local.get 10
 031c6c: 21 06                      |         local.set 6
 031c6e: 20 0b                      |         local.get 11
 031c70: 21 01                      |         local.set 1
 031c72: 03 40                      |         loop
 031c74: 20 06                      |           local.get 6
 031c76: 45                         |           i32.eqz
 031c77: 0d 01                      |           br_if 1
 031c79: 20 06                      |           local.get 6
 031c7b: 41 c0 7d                   |           i32.const 4294966976
 031c7e: 6a                         |           i32.add
 031c7f: 21 06                      |           local.set 6
 031c81: 20 01                      |           local.get 1
 031c83: 41 f8 01                   |           i32.const 248
 031c86: 6a                         |           i32.add
 031c87: 21 02                      |           local.set 2
 031c89: 20 01                      |           local.get 1
 031c8b: 41 c0 02                   |           i32.const 320
 031c8e: 6a                         |           i32.add
 031c8f: 22 0c                      |           local.tee 12
 031c91: 21 01                      |           local.set 1
 031c93: 20 02                      |           local.get 2
 031c95: 29 03 00                   |           i64.load 3 0
 031c98: 20 04                      |           local.get 4
 031c9a: 29 03 00                   |           i64.load 3 0
 031c9d: 52                         |           i64.ne
 031c9e: 0d 00                      |           br_if 0
 031ca0: 0b                         |         end
 031ca1: 20 0c                      |         local.get 12
 031ca3: 28 02 00                   |         i32.load 2 0
 031ca6: 22 06                      |         local.tee 6
 031ca8: 20 0c                      |         local.get 12
 031caa: 41 08                      |         i32.const 8
 031cac: 6a                         |         i32.add
 031cad: 28 02 00                   |         i32.load 2 0
 031cb0: 41 04                      |         i32.const 4
 031cb2: 74                         |         i32.shl
 031cb3: 6a                         |         i32.add
 031cb4: 21 02                      |         local.set 2
 031cb6: 03 40                      |         loop
 031cb8: 20 06                      |           local.get 6
 031cba: 20 02                      |           local.get 2
 031cbc: 46                         |           i32.eq
 031cbd: 0d 01                      |           br_if 1
 031cbf: 20 06                      |           local.get 6
 031cc1: 41 08                      |           i32.const 8
 031cc3: 6a                         |           i32.add
 031cc4: 29 03 00                   |           i64.load 3 0
 031cc7: 21 0e                      |           local.set 14
 031cc9: 41 00                      |           i32.const 0
 031ccb: 21 01                      |           local.set 1
 031ccd: 02 40                      |           block
 031ccf: 02 40                      |             block
 031cd1: 02 40                      |               block
 031cd3: 20 07                      |                 local.get 7
 031cd5: 28 02 1c                   |                 i32.load 2 28
 031cd8: 45                         |                 i32.eqz
 031cd9: 0d 00                      |                 br_if 0
 031cdb: 20 06                      |                 local.get 6
 031cdd: 41 04                      |                 i32.const 4
 031cdf: 6a                         |                 i32.add
 031ce0: 28 02 00                   |                 i32.load 2 0
 031ce3: 21 04                      |                 local.set 4
 031ce5: 20 06                      |                 local.get 6
 031ce7: 28 02 00                   |                 i32.load 2 0
 031cea: 21 0c                      |                 local.set 12
 031cec: 20 05                      |                 local.get 5
 031cee: 41 08                      |                 i32.const 8
 031cf0: 6a                         |                 i32.add
 031cf1: 20 08                      |                 local.get 8
 031cf3: 20 07                      |                 local.get 7
 031cf5: 20 03                      |                 local.get 3
 031cf7: 10 a5 81 80 80 00          |                 call 165 <_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17hfa7ab18fb0bc285dE.llvm.2967388079870208263>
 031cfd: 20 03                      |                 local.get 3
 031cff: 10 e0 81 80 80 00          |                 call 224 <_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$12get_index_of17hab8bf83f4450f29cE>
 031d05: 20 05                      |                 local.get 5
 031d07: 28 02 08                   |                 i32.load 2 8
 031d0a: 41 01                      |                 i32.const 1
 031d0c: 47                         |                 i32.ne
 031d0d: 0d 00                      |                 br_if 0
 031d0f: 20 05                      |                 local.get 5
 031d11: 28 02 0c                   |                 i32.load 2 12
 031d14: 22 01                      |                 local.tee 1
 031d16: 20 07                      |                 local.get 7
 031d18: 28 02 28                   |                 i32.load 2 40
 031d1b: 22 0d                      |                 local.tee 13
 031d1d: 4f                         |                 i32.ge_u
 031d1e: 0d 01                      |                 br_if 1
 031d20: 20 07                      |                 local.get 7
 031d22: 28 02 20                   |                 i32.load 2 32
 031d25: 20 01                      |                 local.get 1
 031d27: 41 38                      |                 i32.const 56
 031d29: 6c                         |                 i32.mul
 031d2a: 6a                         |                 i32.add
 031d2b: 41 08                      |                 i32.const 8
 031d2d: 6a                         |                 i32.add
 031d2e: 20 0c                      |                 local.get 12
 031d30: 20 04                      |                 local.get 4
 031d32: 10 b5 82 80 80 00          |                 call 309 <_ZN4clap5parse7matches11matched_arg10MatchedArg14check_explicit17h25aa399b8a45b34fE>
 031d38: 21 01                      |                 local.set 1
 031d3a: 0b                         |               end
 031d3b: 20 06                      |               local.get 6
 031d3d: 41 10                      |               i32.const 16
 031d3f: 6a                         |               i32.add
 031d40: 21 06                      |               local.set 6
 031d42: 20 01                      |               local.get 1
 031d44: 45                         |               i32.eqz
 031d45: 0d 02                      |               br_if 2
 031d47: 20 0a                      |               local.get 10
 031d49: 21 01                      |               local.set 1
 031d4b: 20 09                      |               local.get 9
 031d4d: 21 04                      |               local.set 4
 031d4f: 03 40                      |               loop
 031d51: 20 01                      |                 local.get 1
 031d53: 45                         |                 i32.eqz
 031d54: 0d 02                      |                 br_if 2
 031d56: 20 01                      |                 local.get 1
 031d58: 41 c0 7d                   |                 i32.const 4294966976
 031d5b: 6a                         |                 i32.add
 031d5c: 21 01                      |                 local.set 1
 031d5e: 20 04                      |                 local.get 4
 031d60: 41 c0 02                   |                 i32.const 320
 031d63: 6a                         |                 i32.add
 031d64: 22 04                      |                 local.tee 4
 031d66: 29 03 00                   |                 i64.load 3 0
 031d69: 20 0e                      |                 local.get 14
 031d6b: 52                         |                 i64.ne
 031d6c: 0d 00                      |                 br_if 0
 031d6e: 0b                         |               end
 031d6f: 20 04                      |               local.get 4
 031d71: 41 d0 00                   |               i32.const 80
 031d74: 6a                         |               i32.add
 031d75: 28 02 00                   |               i32.load 2 0
 031d78: 45                         |               i32.eqz
 031d79: 0d 01                      |               br_if 1
 031d7b: 02 40                      |               block
 031d7d: 20 05                      |                 local.get 5
 031d7f: 28 02 28                   |                 i32.load 2 40
 031d82: 22 01                      |                 local.tee 1
 031d84: 20 05                      |                 local.get 5
 031d86: 28 02 24                   |                 i32.load 2 36
 031d89: 47                         |                 i32.ne
 031d8a: 0d 00                      |                 br_if 0
 031d8c: 20 05                      |                 local.get 5
 031d8e: 41 20                      |                 i32.const 32
 031d90: 6a                         |                 i32.add
 031d91: 20 01                      |                 local.get 1
 031d93: 10 d1 80 80 80 00          |                 call 81 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h21a575b9c4cf47f2E>
 031d99: 20 05                      |                 local.get 5
 031d9b: 28 02 28                   |                 i32.load 2 40
 031d9e: 21 01                      |                 local.set 1
 031da0: 0b                         |               end
 031da1: 20 05                      |               local.get 5
 031da3: 28 02 20                   |               i32.load 2 32
 031da6: 20 01                      |               local.get 1
 031da8: 41 02                      |               i32.const 2
 031daa: 74                         |               i32.shl
 031dab: 6a                         |               i32.add
 031dac: 20 04                      |               local.get 4
 031dae: 36 02 00                   |               i32.store 2 0
 031db1: 20 05                      |               local.get 5
 031db3: 20 05                      |               local.get 5
 031db5: 28 02 28                   |               i32.load 2 40
 031db8: 41 01                      |               i32.const 1
 031dba: 6a                         |               i32.add
 031dbb: 36 02 28                   |               i32.store 2 40
 031dbe: 0c 01                      |               br 1
 031dc0: 0b                         |             end
 031dc1: 20 01                      |             local.get 1
 031dc3: 20 0d                      |             local.get 13
 031dc5: 41 b8 97 c0 80 00          |             i32.const 1051576
 031dcb: 10 9a 86 80 80 00          |             call 794 <_ZN4core9panicking18panic_bounds_check17h8c564c2b20bece92E>
 031dd1: 00                         |             unreachable
 031dd2: 0b                         |           end
 031dd3: 02 40                      |           block
 031dd5: 20 00                      |             local.get 0
 031dd7: 28 02 08                   |             i32.load 2 8
 031dda: 22 01                      |             local.tee 1
 031ddc: 20 00                      |             local.get 0
 031dde: 28 02 04                   |             i32.load 2 4
 031de1: 47                         |             i32.ne
 031de2: 0d 00                      |             br_if 0
 031de4: 20 00                      |             local.get 0
 031de6: 20 01                      |             local.get 1
 031de8: 10 d7 80 80 80 00          |             call 87 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h8fbcfd7ffafeb64dE>
 031dee: 20 00                      |             local.get 0
 031df0: 28 02 08                   |             i32.load 2 8
 031df3: 21 01                      |             local.set 1
 031df5: 0b                         |           end
 031df6: 20 00                      |           local.get 0
 031df8: 28 02 00                   |           i32.load 2 0
 031dfb: 20 01                      |           local.get 1
 031dfd: 41 03                      |           i32.const 3
 031dff: 74                         |           i32.shl
 031e00: 6a                         |           i32.add
 031e01: 20 0e                      |           local.get 14
 031e03: 37 03 00                   |           i64.store 3 0
 031e06: 20 00                      |           local.get 0
 031e08: 20 00                      |           local.get 0
 031e0a: 28 02 08                   |           i32.load 2 8
 031e0d: 41 01                      |           i32.const 1
 031e0f: 6a                         |           i32.add
 031e10: 36 02 08                   |           i32.store 2 8
 031e13: 0c 00                      |           br 0
 031e15: 0b                         |         end
 031e16: 0b                         |       end
 031e17: 20 05                      |       local.get 5
 031e19: 28 02 28                   |       i32.load 2 40
 031e1c: 22 06                      |       local.tee 6
 031e1e: 45                         |       i32.eqz
 031e1f: 0d 02                      |       br_if 2
 031e21: 20 05                      |       local.get 5
 031e23: 20 06                      |       local.get 6
 031e25: 41 7f                      |       i32.const 4294967295
 031e27: 6a                         |       i32.add
 031e28: 22 06                      |       local.tee 6
 031e2a: 36 02 28                   |       i32.store 2 40
 031e2d: 20 05                      |       local.get 5
 031e2f: 28 02 20                   |       i32.load 2 32
 031e32: 20 06                      |       local.get 6
 031e34: 41 02                      |       i32.const 2
 031e36: 74                         |       i32.shl
 031e37: 6a                         |       i32.add
 031e38: 28 02 00                   |       i32.load 2 0
 031e3b: 22 04                      |       local.tee 4
 031e3d: 0d 00                      |       br_if 0
 031e3f: 0c 02                      |       br 2
 031e41: 0b                         |     end
 031e42: 0b                         |   end
 031e43: 41 04                      |   i32.const 4
 031e45: 41 04                      |   i32.const 4
 031e47: 10 83 86 80 80 00          |   call 771 <_ZN5alloc5alloc18handle_alloc_error17hc1d2868d8bd0f014E>
 031e4d: 00                         |   unreachable
 031e4e: 0b                         | end
 031e4f: 02 40                      | block
 031e51: 20 05                      |   local.get 5
 031e53: 28 02 24                   |   i32.load 2 36
 031e56: 22 06                      |   local.tee 6
 031e58: 45                         |   i32.eqz
 031e59: 0d 00                      |   br_if 0
 031e5b: 20 06                      |   local.get 6
 031e5d: 41 02                      |   i32.const 2
 031e5f: 74                         |   i32.shl
 031e60: 22 06                      |   local.tee 6
 031e62: 45                         |   i32.eqz
 031e63: 0d 00                      |   br_if 0
 031e65: 20 05                      |   local.get 5
 031e67: 28 02 20                   |   i32.load 2 32
 031e6a: 20 06                      |   local.get 6
 031e6c: 41 04                      |   i32.const 4
 031e6e: 10 b2 80 80 80 00          |   call 50 <__rust_dealloc>
 031e74: 0b                         | end
 031e75: 02 40                      | block
 031e77: 20 05                      |   local.get 5
 031e79: 28 02 14                   |   i32.load 2 20
 031e7c: 22 06                      |   local.tee 6
 031e7e: 45                         |   i32.eqz
 031e7f: 0d 00                      |   br_if 0
 031e81: 20 06                      |   local.get 6
 031e83: 41 02                      |   i32.const 2
 031e85: 74                         |   i32.shl
 031e86: 22 06                      |   local.tee 6
 031e88: 45                         |   i32.eqz
 031e89: 0d 00                      |   br_if 0
 031e8b: 20 05                      |   local.get 5
 031e8d: 28 02 10                   |   i32.load 2 16
 031e90: 20 06                      |   local.get 6
 031e92: 41 04                      |   i32.const 4
 031e94: 10 b2 80 80 80 00          |   call 50 <__rust_dealloc>
 031e9a: 0b                         | end
 031e9b: 20 05                      | local.get 5
 031e9d: 41 30                      | i32.const 48
 031e9f: 6a                         | i32.add
 031ea0: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 031ea6: 0b                         | end
