002bb9 func[36] <_ZN4core3str7pattern14TwoWaySearcher4next17h9cda356f1d250783E>:
 002bba: 05 7f                      | local[7..11] type=i32
 002bbc: 01 7e                      | local[12] type=i64
 002bbe: 04 7f                      | local[13..16] type=i32
 002bc0: 02 40                      | block
 002bc2: 02 40                      |   block
 002bc4: 20 01                      |     local.get 1
 002bc6: 28 02 14                   |     i32.load 2 20
 002bc9: 22 07                      |     local.tee 7
 002bcb: 20 05                      |     local.get 5
 002bcd: 6a                         |     i32.add
 002bce: 41 7f                      |     i32.const 4294967295
 002bd0: 6a                         |     i32.add
 002bd1: 22 08                      |     local.tee 8
 002bd3: 20 03                      |     local.get 3
 002bd5: 4f                         |     i32.ge_u
 002bd6: 0d 00                      |     br_if 0
 002bd8: 20 05                      |     local.get 5
 002bda: 20 01                      |     local.get 1
 002bdc: 28 02 10                   |     i32.load 2 16
 002bdf: 22 09                      |     local.tee 9
 002be1: 6b                         |     i32.sub
 002be2: 21 0a                      |     local.set 10
 002be4: 20 01                      |     local.get 1
 002be6: 28 02 08                   |     i32.load 2 8
 002be9: 21 0b                      |     local.set 11
 002beb: 20 01                      |     local.get 1
 002bed: 29 03 00                   |     i64.load 3 0
 002bf0: 21 0c                      |     local.set 12
 002bf2: 03 40                      |     loop
 002bf4: 02 40                      |       block
 002bf6: 02 40                      |         block
 002bf8: 02 40                      |           block
 002bfa: 42 01                      |             i64.const 1
 002bfc: 20 02                      |             local.get 2
 002bfe: 20 08                      |             local.get 8
 002c00: 6a                         |             i32.add
 002c01: 31 00 00                   |             i64.load8_u 0 0
 002c04: 42 3f                      |             i64.const 63
 002c06: 83                         |             i64.and
 002c07: 86                         |             i64.shl
 002c08: 20 0c                      |             local.get 12
 002c0a: 83                         |             i64.and
 002c0b: 50                         |             i64.eqz
 002c0c: 0d 00                      |             br_if 0
 002c0e: 20 0b                      |             local.get 11
 002c10: 21 08                      |             local.set 8
 002c12: 02 40                      |             block
 002c14: 20 06                      |               local.get 6
 002c16: 0d 00                      |               br_if 0
 002c18: 20 0b                      |               local.get 11
 002c1a: 20 01                      |               local.get 1
 002c1c: 28 02 1c                   |               i32.load 2 28
 002c1f: 22 08                      |               local.tee 8
 002c21: 20 08                      |               local.get 8
 002c23: 20 0b                      |               local.get 11
 002c25: 49                         |               i32.lt_u
 002c26: 1b                         |               select
 002c27: 21 08                      |               local.set 8
 002c29: 0b                         |             end
 002c2a: 20 02                      |             local.get 2
 002c2c: 20 07                      |             local.get 7
 002c2e: 6a                         |             i32.add
 002c2f: 21 0d                      |             local.set 13
 002c31: 02 40                      |             block
 002c33: 03 40                      |               loop
 002c35: 02 40                      |                 block
 002c37: 02 40                      |                   block
 002c39: 20 08                      |                     local.get 8
 002c3b: 20 05                      |                     local.get 5
 002c3d: 4f                         |                     i32.ge_u
 002c3e: 0d 00                      |                     br_if 0
 002c40: 20 08                      |                     local.get 8
 002c42: 41 01                      |                     i32.const 1
 002c44: 6a                         |                     i32.add
 002c45: 22 0e                      |                     local.tee 14
 002c47: 20 08                      |                     local.get 8
 002c49: 4f                         |                     i32.ge_u
 002c4a: 0d 01                      |                     br_if 1
 002c4c: 0b                         |                   end
 002c4d: 41 00                      |                   i32.const 0
 002c4f: 20 01                      |                   local.get 1
 002c51: 28 02 1c                   |                   i32.load 2 28
 002c54: 20 06                      |                   local.get 6
 002c56: 1b                         |                   select
 002c57: 21 0f                      |                   local.set 15
 002c59: 20 0b                      |                   local.get 11
 002c5b: 21 08                      |                   local.set 8
 002c5d: 02 40                      |                   block
 002c5f: 02 40                      |                     block
 002c61: 03 40                      |                       loop
 002c63: 02 40                      |                         block
 002c65: 20 0f                      |                           local.get 15
 002c67: 20 08                      |                           local.get 8
 002c69: 49                         |                           i32.lt_u
 002c6a: 0d 00                      |                           br_if 0
 002c6c: 20 01                      |                           local.get 1
 002c6e: 20 07                      |                           local.get 7
 002c70: 20 05                      |                           local.get 5
 002c72: 6a                         |                           i32.add
 002c73: 22 08                      |                           local.tee 8
 002c75: 36 02 14                   |                           i32.store 2 20
 002c78: 02 40                      |                           block
 002c7a: 20 06                      |                             local.get 6
 002c7c: 0d 00                      |                             br_if 0
 002c7e: 20 01                      |                             local.get 1
 002c80: 41 00                      |                             i32.const 0
 002c82: 36 02 1c                   |                             i32.store 2 28
 002c85: 0b                         |                           end
 002c86: 20 00                      |                           local.get 0
 002c88: 20 07                      |                           local.get 7
 002c8a: 36 02 04                   |                           i32.store 2 4
 002c8d: 20 00                      |                           local.get 0
 002c8f: 41 08                      |                           i32.const 8
 002c91: 6a                         |                           i32.add
 002c92: 20 08                      |                           local.get 8
 002c94: 36 02 00                   |                           i32.store 2 0
 002c97: 41 01                      |                           i32.const 1
 002c99: 21 08                      |                           local.set 8
 002c9b: 0c 0c                      |                           br 12
 002c9d: 0b                         |                         end
 002c9e: 20 08                      |                         local.get 8
 002ca0: 41 7f                      |                         i32.const 4294967295
 002ca2: 6a                         |                         i32.add
 002ca3: 22 08                      |                         local.tee 8
 002ca5: 20 05                      |                         local.get 5
 002ca7: 4f                         |                         i32.ge_u
 002ca8: 0d 01                      |                         br_if 1
 002caa: 20 07                      |                         local.get 7
 002cac: 20 08                      |                         local.get 8
 002cae: 6a                         |                         i32.add
 002caf: 22 0e                      |                         local.tee 14
 002cb1: 20 03                      |                         local.get 3
 002cb3: 4f                         |                         i32.ge_u
 002cb4: 0d 02                      |                         br_if 2
 002cb6: 20 04                      |                         local.get 4
 002cb8: 20 08                      |                         local.get 8
 002cba: 6a                         |                         i32.add
 002cbb: 2d 00 00                   |                         i32.load8_u 0 0
 002cbe: 20 02                      |                         local.get 2
 002cc0: 20 0e                      |                         local.get 14
 002cc2: 6a                         |                         i32.add
 002cc3: 2d 00 00                   |                         i32.load8_u 0 0
 002cc6: 46                         |                         i32.eq
 002cc7: 0d 00                      |                         br_if 0
 002cc9: 0b                         |                       end
 002cca: 20 01                      |                       local.get 1
 002ccc: 20 09                      |                       local.get 9
 002cce: 20 07                      |                       local.get 7
 002cd0: 6a                         |                       i32.add
 002cd1: 22 07                      |                       local.tee 7
 002cd3: 36 02 14                   |                       i32.store 2 20
 002cd6: 20 06                      |                       local.get 6
 002cd8: 0d 07                      |                       br_if 7
 002cda: 20 01                      |                       local.get 1
 002cdc: 20 0a                      |                       local.get 10
 002cde: 36 02 1c                   |                       i32.store 2 28
 002ce1: 0c 07                      |                       br 7
 002ce3: 0b                         |                     end
 002ce4: 41 fc 80 c0 80 00          |                     i32.const 1048700
 002cea: 20 08                      |                     local.get 8
 002cec: 20 05                      |                     local.get 5
 002cee: 10 a5 80 80 80 00          |                     call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 002cf4: 00                         |                     unreachable
 002cf5: 0b                         |                   end
 002cf6: 41 8c 81 c0 80 00          |                   i32.const 1048716
 002cfc: 20 0e                      |                   local.get 14
 002cfe: 20 03                      |                   local.get 3
 002d00: 10 a5 80 80 80 00          |                   call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 002d06: 00                         |                   unreachable
 002d07: 0b                         |                 end
 002d08: 20 07                      |                 local.get 7
 002d0a: 20 08                      |                 local.get 8
 002d0c: 6a                         |                 i32.add
 002d0d: 22 0f                      |                 local.tee 15
 002d0f: 20 03                      |                 local.get 3
 002d11: 4f                         |                 i32.ge_u
 002d12: 0d 01                      |                 br_if 1
 002d14: 20 0d                      |                 local.get 13
 002d16: 20 08                      |                 local.get 8
 002d18: 6a                         |                 i32.add
 002d19: 21 0f                      |                 local.set 15
 002d1b: 20 04                      |                 local.get 4
 002d1d: 20 08                      |                 local.get 8
 002d1f: 6a                         |                 i32.add
 002d20: 21 10                      |                 local.set 16
 002d22: 20 0e                      |                 local.get 14
 002d24: 21 08                      |                 local.set 8
 002d26: 20 10                      |                 local.get 16
 002d28: 2d 00 00                   |                 i32.load8_u 0 0
 002d2b: 20 0f                      |                 local.get 15
 002d2d: 2d 00 00                   |                 i32.load8_u 0 0
 002d30: 46                         |                 i32.eq
 002d31: 0d 00                      |                 br_if 0
 002d33: 0b                         |               end
 002d34: 20 0e                      |               local.get 14
 002d36: 20 07                      |               local.get 7
 002d38: 6a                         |               i32.add
 002d39: 20 0b                      |               local.get 11
 002d3b: 6b                         |               i32.sub
 002d3c: 21 07                      |               local.set 7
 002d3e: 0c 02                      |               br 2
 002d40: 0b                         |             end
 002d41: 41 ec 80 c0 80 00          |             i32.const 1048684
 002d47: 20 0f                      |             local.get 15
 002d49: 20 03                      |             local.get 3
 002d4b: 10 a5 80 80 80 00          |             call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 002d51: 00                         |             unreachable
 002d52: 0b                         |           end
 002d53: 20 07                      |           local.get 7
 002d55: 20 05                      |           local.get 5
 002d57: 6a                         |           i32.add
 002d58: 21 07                      |           local.set 7
 002d5a: 0b                         |         end
 002d5b: 20 01                      |         local.get 1
 002d5d: 20 07                      |         local.get 7
 002d5f: 36 02 14                   |         i32.store 2 20
 002d62: 20 06                      |         local.get 6
 002d64: 0d 00                      |         br_if 0
 002d66: 20 01                      |         local.get 1
 002d68: 41 00                      |         i32.const 0
 002d6a: 36 02 1c                   |         i32.store 2 28
 002d6d: 0b                         |       end
 002d6e: 20 07                      |       local.get 7
 002d70: 20 05                      |       local.get 5
 002d72: 6a                         |       i32.add
 002d73: 41 7f                      |       i32.const 4294967295
 002d75: 6a                         |       i32.add
 002d76: 22 08                      |       local.tee 8
 002d78: 20 03                      |       local.get 3
 002d7a: 49                         |       i32.lt_u
 002d7b: 0d 00                      |       br_if 0
 002d7d: 0b                         |     end
 002d7e: 0b                         |   end
 002d7f: 20 01                      |   local.get 1
 002d81: 20 03                      |   local.get 3
 002d83: 36 02 14                   |   i32.store 2 20
 002d86: 41 00                      |   i32.const 0
 002d88: 21 08                      |   local.set 8
 002d8a: 0b                         | end
 002d8b: 20 00                      | local.get 0
 002d8d: 20 08                      | local.get 8
 002d8f: 36 02 00                   | i32.store 2 0
 002d92: 0b                         | end
