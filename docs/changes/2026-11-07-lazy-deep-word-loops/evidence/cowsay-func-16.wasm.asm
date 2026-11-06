000bc3 func[16] <_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h9f26c681f527ae23E>:
 000bc4: 11 7f                      | local[2..18] type=i32
 000bc6: 01 7e                      | local[19] type=i64
 000bc8: 04 7f                      | local[20..23] type=i32
 000bca: 23 80 80 80 80 00          | global.get 0
 000bd0: 41 20                      | i32.const 32
 000bd2: 6b                         | i32.sub
 000bd3: 22 02                      | local.tee 2
 000bd5: 24 80 80 80 80 00          | global.set 0
 000bdb: 02 40                      | block
 000bdd: 02 40                      |   block
 000bdf: 02 40                      |     block
 000be1: 02 40                      |       block
 000be3: 20 01                      |         local.get 1
 000be5: 28 02 00                   |         i32.load 2 0
 000be8: 22 03                      |         local.tee 3
 000bea: 41 01                      |         i32.const 1
 000bec: 46                         |         i32.eq
 000bed: 0d 00                      |         br_if 0
 000bef: 41 00                      |         i32.const 0
 000bf1: 21 04                      |         local.set 4
 000bf3: 02 40                      |         block
 000bf5: 03 40                      |           loop
 000bf7: 02 40                      |             block
 000bf9: 20 04                      |               local.get 4
 000bfb: 41 01                      |               i32.const 1
 000bfd: 46                         |               i32.eq
 000bfe: 0d 00                      |               br_if 0
 000c00: 20 01                      |               local.get 1
 000c02: 20 01                      |               local.get 1
 000c04: 2d 00 0c                   |               i32.load8_u 0 12
 000c07: 22 05                      |               local.tee 5
 000c09: 45                         |               i32.eqz
 000c0a: 3a 00 0c                   |               i32.store8 0 12
 000c0d: 20 01                      |               local.get 1
 000c0f: 28 02 04                   |               i32.load 2 4
 000c12: 21 06                      |               local.set 6
 000c14: 20 01                      |               local.get 1
 000c16: 28 02 30                   |               i32.load 2 48
 000c19: 21 07                      |               local.set 7
 000c1b: 20 02                      |               local.get 2
 000c1d: 20 01                      |               local.get 1
 000c1f: 28 02 34                   |               i32.load 2 52
 000c22: 22 04                      |               local.tee 4
 000c24: 36 02 04                   |               i32.store 2 4
 000c27: 20 02                      |               local.get 2
 000c29: 20 07                      |               local.get 7
 000c2b: 36 02 00                   |               i32.store 2 0
 000c2e: 20 02                      |               local.get 2
 000c30: 20 06                      |               local.get 6
 000c32: 36 02 08                   |               i32.store 2 8
 000c35: 20 02                      |               local.get 2
 000c37: 20 04                      |               local.get 4
 000c39: 36 02 0c                   |               i32.store 2 12
 000c3c: 02 40                      |               block
 000c3e: 20 06                      |                 local.get 6
 000c40: 45                         |                 i32.eqz
 000c41: 0d 00                      |                 br_if 0
 000c43: 20 04                      |                 local.get 4
 000c45: 20 06                      |                 local.get 6
 000c47: 46                         |                 i32.eq
 000c48: 0d 00                      |                 br_if 0
 000c4a: 20 04                      |                 local.get 4
 000c4c: 20 06                      |                 local.get 6
 000c4e: 4d                         |                 i32.le_u
 000c4f: 0d 03                      |                 br_if 3
 000c51: 20 07                      |                 local.get 7
 000c53: 20 06                      |                 local.get 6
 000c55: 6a                         |                 i32.add
 000c56: 2c 00 00                   |                 i32.load8_s 0 0
 000c59: 41 bf 7f                   |                 i32.const 4294967231
 000c5c: 4c                         |                 i32.le_s
 000c5d: 0d 03                      |                 br_if 3
 000c5f: 0b                         |               end
 000c60: 41 80 80 c4 00             |               i32.const 1114112
 000c65: 21 08                      |               local.set 8
 000c67: 02 40                      |               block
 000c69: 20 04                      |                 local.get 4
 000c6b: 20 06                      |                 local.get 6
 000c6d: 46                         |                 i32.eq
 000c6e: 0d 00                      |                 br_if 0
 000c70: 02 40                      |                 block
 000c72: 20 07                      |                   local.get 7
 000c74: 20 06                      |                   local.get 6
 000c76: 6a                         |                   i32.add
 000c77: 22 09                      |                   local.tee 9
 000c79: 2c 00 00                   |                   i32.load8_s 0 0
 000c7c: 22 08                      |                   local.tee 8
 000c7e: 41 7f                      |                   i32.const 4294967295
 000c80: 4c                         |                   i32.le_s
 000c81: 0d 00                      |                   br_if 0
 000c83: 20 08                      |                   local.get 8
 000c85: 41 ff 01                   |                   i32.const 255
 000c88: 71                         |                   i32.and
 000c89: 21 08                      |                   local.set 8
 000c8b: 0c 01                      |                   br 1
 000c8d: 0b                         |                 end
 000c8e: 02 40                      |                 block
 000c90: 02 40                      |                   block
 000c92: 20 09                      |                     local.get 9
 000c94: 41 01                      |                     i32.const 1
 000c96: 6a                         |                     i32.add
 000c97: 20 07                      |                     local.get 7
 000c99: 20 04                      |                     local.get 4
 000c9b: 6a                         |                     i32.add
 000c9c: 22 04                      |                     local.tee 4
 000c9e: 47                         |                     i32.ne
 000c9f: 0d 00                      |                     br_if 0
 000ca1: 41 00                      |                     i32.const 0
 000ca3: 21 09                      |                     local.set 9
 000ca5: 20 04                      |                     local.get 4
 000ca7: 21 07                      |                     local.set 7
 000ca9: 0c 01                      |                     br 1
 000cab: 0b                         |                   end
 000cac: 20 09                      |                   local.get 9
 000cae: 41 02                      |                   i32.const 2
 000cb0: 6a                         |                   i32.add
 000cb1: 21 07                      |                   local.set 7
 000cb3: 20 09                      |                   local.get 9
 000cb5: 2d 00 01                   |                   i32.load8_u 0 1
 000cb8: 41 3f                      |                   i32.const 63
 000cba: 71                         |                   i32.and
 000cbb: 21 09                      |                   local.set 9
 000cbd: 0b                         |                 end
 000cbe: 20 08                      |                 local.get 8
 000cc0: 41 1f                      |                 i32.const 31
 000cc2: 71                         |                 i32.and
 000cc3: 21 0a                      |                 local.set 10
 000cc5: 02 40                      |                 block
 000cc7: 20 08                      |                   local.get 8
 000cc9: 41 ff 01                   |                   i32.const 255
 000ccc: 71                         |                   i32.and
 000ccd: 22 08                      |                   local.tee 8
 000ccf: 41 df 01                   |                   i32.const 223
 000cd2: 4b                         |                   i32.gt_u
 000cd3: 0d 00                      |                   br_if 0
 000cd5: 20 09                      |                   local.get 9
 000cd7: 20 0a                      |                   local.get 10
 000cd9: 41 06                      |                   i32.const 6
 000cdb: 74                         |                   i32.shl
 000cdc: 72                         |                   i32.or
 000cdd: 21 08                      |                   local.set 8
 000cdf: 0c 01                      |                   br 1
 000ce1: 0b                         |                 end
 000ce2: 02 40                      |                 block
 000ce4: 02 40                      |                   block
 000ce6: 20 07                      |                     local.get 7
 000ce8: 20 04                      |                     local.get 4
 000cea: 47                         |                     i32.ne
 000ceb: 0d 00                      |                     br_if 0
 000ced: 41 00                      |                     i32.const 0
 000cef: 21 07                      |                     local.set 7
 000cf1: 20 04                      |                     local.get 4
 000cf3: 21 0b                      |                     local.set 11
 000cf5: 0c 01                      |                     br 1
 000cf7: 0b                         |                   end
 000cf8: 20 07                      |                   local.get 7
 000cfa: 41 01                      |                   i32.const 1
 000cfc: 6a                         |                   i32.add
 000cfd: 21 0b                      |                   local.set 11
 000cff: 20 07                      |                   local.get 7
 000d01: 2d 00 00                   |                   i32.load8_u 0 0
 000d04: 41 3f                      |                   i32.const 63
 000d06: 71                         |                   i32.and
 000d07: 21 07                      |                   local.set 7
 000d09: 0b                         |                 end
 000d0a: 20 07                      |                 local.get 7
 000d0c: 20 09                      |                 local.get 9
 000d0e: 41 06                      |                 i32.const 6
 000d10: 74                         |                 i32.shl
 000d11: 72                         |                 i32.or
 000d12: 21 07                      |                 local.set 7
 000d14: 02 40                      |                 block
 000d16: 20 08                      |                   local.get 8
 000d18: 41 f0 01                   |                   i32.const 240
 000d1b: 4f                         |                   i32.ge_u
 000d1c: 0d 00                      |                   br_if 0
 000d1e: 20 07                      |                   local.get 7
 000d20: 20 0a                      |                   local.get 10
 000d22: 41 0c                      |                   i32.const 12
 000d24: 74                         |                   i32.shl
 000d25: 72                         |                   i32.or
 000d26: 21 08                      |                   local.set 8
 000d28: 0c 01                      |                   br 1
 000d2a: 0b                         |                 end
 000d2b: 02 40                      |                 block
 000d2d: 02 40                      |                   block
 000d2f: 20 0b                      |                     local.get 11
 000d31: 20 04                      |                     local.get 4
 000d33: 47                         |                     i32.ne
 000d34: 0d 00                      |                     br_if 0
 000d36: 41 00                      |                     i32.const 0
 000d38: 21 04                      |                     local.set 4
 000d3a: 0c 01                      |                     br 1
 000d3c: 0b                         |                   end
 000d3d: 20 0b                      |                   local.get 11
 000d3f: 2d 00 00                   |                   i32.load8_u 0 0
 000d42: 41 3f                      |                   i32.const 63
 000d44: 71                         |                   i32.and
 000d45: 21 04                      |                   local.set 4
 000d47: 0b                         |                 end
 000d48: 20 07                      |                 local.get 7
 000d4a: 41 06                      |                 i32.const 6
 000d4c: 74                         |                 i32.shl
 000d4d: 20 0a                      |                 local.get 10
 000d4f: 41 12                      |                 i32.const 18
 000d51: 74                         |                 i32.shl
 000d52: 41 80 80 f0 00             |                 i32.const 1835008
 000d57: 71                         |                 i32.and
 000d58: 72                         |                 i32.or
 000d59: 20 04                      |                 local.get 4
 000d5b: 72                         |                 i32.or
 000d5c: 21 08                      |                 local.set 8
 000d5e: 0b                         |               end
 000d5f: 02 40                      |               block
 000d61: 20 05                      |                 local.get 5
 000d63: 45                         |                 i32.eqz
 000d64: 0d 00                      |                 br_if 0
 000d66: 20 06                      |                 local.get 6
 000d68: 21 07                      |                 local.set 7
 000d6a: 0c 06                      |                 br 6
 000d6c: 0b                         |               end
 000d6d: 20 08                      |               local.get 8
 000d6f: 41 80 80 c4 00             |               i32.const 1114112
 000d74: 46                         |               i32.eq
 000d75: 0d 04                      |               br_if 4
 000d77: 41 01                      |               i32.const 1
 000d79: 21 04                      |               local.set 4
 000d7b: 02 40                      |               block
 000d7d: 20 08                      |                 local.get 8
 000d7f: 41 80 01                   |                 i32.const 128
 000d82: 49                         |                 i32.lt_u
 000d83: 0d 00                      |                 br_if 0
 000d85: 41 02                      |                 i32.const 2
 000d87: 21 04                      |                 local.set 4
 000d89: 20 08                      |                 local.get 8
 000d8b: 41 80 10                   |                 i32.const 2048
 000d8e: 49                         |                 i32.lt_u
 000d8f: 0d 00                      |                 br_if 0
 000d91: 41 03                      |                 i32.const 3
 000d93: 41 04                      |                 i32.const 4
 000d95: 20 08                      |                 local.get 8
 000d97: 41 80 80 04                |                 i32.const 65536
 000d9b: 49                         |                 i32.lt_u
 000d9c: 1b                         |                 select
 000d9d: 21 04                      |                 local.set 4
 000d9f: 0b                         |               end
 000da0: 20 01                      |               local.get 1
 000da2: 20 06                      |               local.get 6
 000da4: 20 04                      |               local.get 4
 000da6: 6a                         |               i32.add
 000da7: 36 02 04                   |               i32.store 2 4
 000daa: 20 03                      |               local.get 3
 000dac: 21 04                      |               local.set 4
 000dae: 0c 01                      |               br 1
 000db0: 0b                         |             end
 000db1: 20 01                      |             local.get 1
 000db3: 28 02 1c                   |             i32.load 2 28
 000db6: 22 07                      |             local.tee 7
 000db8: 20 01                      |             local.get 1
 000dba: 28 02 34                   |             i32.load 2 52
 000dbd: 22 08                      |             local.tee 8
 000dbf: 46                         |             i32.eq
 000dc0: 0d 03                      |             br_if 3
 000dc2: 02 40                      |             block
 000dc4: 02 40                      |               block
 000dc6: 20 01                      |                 local.get 1
 000dc8: 28 02 3c                   |                 i32.load 2 60
 000dcb: 22 05                      |                 local.tee 5
 000dcd: 20 07                      |                 local.get 7
 000dcf: 6a                         |                 i32.add
 000dd0: 22 06                      |                 local.tee 6
 000dd2: 41 7f                      |                 i32.const 4294967295
 000dd4: 6a                         |                 i32.add
 000dd5: 22 0a                      |                 local.tee 10
 000dd7: 20 08                      |                 local.get 8
 000dd9: 4f                         |                 i32.ge_u
 000dda: 0d 00                      |                 br_if 0
 000ddc: 20 01                      |                 local.get 1
 000dde: 28 02 38                   |                 i32.load 2 56
 000de1: 21 09                      |                 local.set 9
 000de3: 20 01                      |                 local.get 1
 000de5: 28 02 30                   |                 i32.load 2 48
 000de8: 22 0c                      |                 local.tee 12
 000dea: 20 07                      |                 local.get 7
 000dec: 6a                         |                 i32.add
 000ded: 21 0d                      |                 local.set 13
 000def: 20 05                      |                 local.get 5
 000df1: 41 7f                      |                 i32.const 4294967295
 000df3: 6a                         |                 i32.add
 000df4: 21 0e                      |                 local.set 14
 000df6: 20 07                      |                 local.get 7
 000df8: 20 01                      |                 local.get 1
 000dfa: 28 02 10                   |                 i32.load 2 16
 000dfd: 22 0f                      |                 local.tee 15
 000dff: 6b                         |                 i32.sub
 000e00: 21 10                      |                 local.set 16
 000e02: 20 05                      |                 local.get 5
 000e04: 20 01                      |                 local.get 1
 000e06: 28 02 18                   |                 i32.load 2 24
 000e09: 22 11                      |                 local.tee 17
 000e0b: 6b                         |                 i32.sub
 000e0c: 21 12                      |                 local.set 18
 000e0e: 20 01                      |                 local.get 1
 000e10: 29 03 08                   |                 i64.load 3 8
 000e13: 21 13                      |                 local.set 19
 000e15: 20 01                      |                 local.get 1
 000e17: 28 02 24                   |                 i32.load 2 36
 000e1a: 22 14                      |                 local.tee 20
 000e1c: 21 15                      |                 local.set 21
 000e1e: 20 07                      |                 local.get 7
 000e20: 21 04                      |                 local.set 4
 000e22: 03 40                      |                 loop
 000e24: 02 40                      |                   block
 000e26: 02 40                      |                     block
 000e28: 02 40                      |                       block
 000e2a: 20 07                      |                         local.get 7
 000e2c: 20 04                      |                         local.get 4
 000e2e: 47                         |                         i32.ne
 000e2f: 0d 00                      |                         br_if 0
 000e31: 42 01                      |                         i64.const 1
 000e33: 20 0c                      |                         local.get 12
 000e35: 20 0a                      |                         local.get 10
 000e37: 6a                         |                         i32.add
 000e38: 31 00 00                   |                         i64.load8_u 0 0
 000e3b: 42 3f                      |                         i64.const 63
 000e3d: 83                         |                         i64.and
 000e3e: 86                         |                         i64.shl
 000e3f: 20 13                      |                         local.get 19
 000e41: 83                         |                         i64.and
 000e42: 50                         |                         i64.eqz
 000e43: 0d 01                      |                         br_if 1
 000e45: 20 0f                      |                         local.get 15
 000e47: 20 0f                      |                         local.get 15
 000e49: 20 15                      |                         local.get 21
 000e4b: 20 15                      |                         local.get 21
 000e4d: 20 0f                      |                         local.get 15
 000e4f: 49                         |                         i32.lt_u
 000e50: 1b                         |                         select
 000e51: 20 14                      |                         local.get 20
 000e53: 41 7f                      |                         i32.const 4294967295
 000e55: 46                         |                         i32.eq
 000e56: 22 16                      |                         local.tee 22
 000e58: 1b                         |                         select
 000e59: 21 04                      |                         local.set 4
 000e5b: 02 40                      |                         block
 000e5d: 03 40                      |                           loop
 000e5f: 02 40                      |                             block
 000e61: 02 40                      |                               block
 000e63: 20 04                      |                                 local.get 4
 000e65: 20 05                      |                                 local.get 5
 000e67: 4f                         |                                 i32.ge_u
 000e68: 0d 00                      |                                 br_if 0
 000e6a: 20 04                      |                                 local.get 4
 000e6c: 41 01                      |                                 i32.const 1
 000e6e: 6a                         |                                 i32.add
 000e6f: 22 0a                      |                                 local.tee 10
 000e71: 20 04                      |                                 local.get 4
 000e73: 4f                         |                                 i32.ge_u
 000e74: 0d 01                      |                                 br_if 1
 000e76: 0b                         |                               end
 000e77: 41 00                      |                               i32.const 0
 000e79: 20 15                      |                               local.get 21
 000e7b: 20 16                      |                               local.get 22
 000e7d: 1b                         |                               select
 000e7e: 21 0b                      |                               local.set 11
 000e80: 20 0f                      |                               local.get 15
 000e82: 21 04                      |                               local.set 4
 000e84: 02 40                      |                               block
 000e86: 02 40                      |                                 block
 000e88: 03 40                      |                                   loop
 000e8a: 02 40                      |                                     block
 000e8c: 20 0b                      |                                       local.get 11
 000e8e: 20 04                      |                                       local.get 4
 000e90: 49                         |                                       i32.lt_u
 000e91: 0d 00                      |                                       br_if 0
 000e93: 20 01                      |                                       local.get 1
 000e95: 20 06                      |                                       local.get 6
 000e97: 36 02 1c                   |                                       i32.store 2 28
 000e9a: 20 14                      |                                       local.get 20
 000e9c: 41 7f                      |                                       i32.const 4294967295
 000e9e: 46                         |                                       i32.eq
 000e9f: 0d 11                      |                                       br_if 17
 000ea1: 20 01                      |                                       local.get 1
 000ea3: 41 00                      |                                       i32.const 0
 000ea5: 36 02 24                   |                                       i32.store 2 36
 000ea8: 0c 11                      |                                       br 17
 000eaa: 0b                         |                                     end
 000eab: 20 04                      |                                     local.get 4
 000ead: 41 7f                      |                                     i32.const 4294967295
 000eaf: 6a                         |                                     i32.add
 000eb0: 22 04                      |                                     local.tee 4
 000eb2: 20 05                      |                                     local.get 5
 000eb4: 4f                         |                                     i32.ge_u
 000eb5: 0d 01                      |                                     br_if 1
 000eb7: 20 04                      |                                     local.get 4
 000eb9: 20 07                      |                                     local.get 7
 000ebb: 6a                         |                                     i32.add
 000ebc: 22 0a                      |                                     local.tee 10
 000ebe: 20 08                      |                                     local.get 8
 000ec0: 4f                         |                                     i32.ge_u
 000ec1: 0d 02                      |                                     br_if 2
 000ec3: 20 09                      |                                     local.get 9
 000ec5: 20 04                      |                                     local.get 4
 000ec7: 6a                         |                                     i32.add
 000ec8: 2d 00 00                   |                                     i32.load8_u 0 0
 000ecb: 20 0c                      |                                     local.get 12
 000ecd: 20 0a                      |                                     local.get 10
 000ecf: 6a                         |                                     i32.add
 000ed0: 2d 00 00                   |                                     i32.load8_u 0 0
 000ed3: 46                         |                                     i32.eq
 000ed4: 0d 00                      |                                     br_if 0
 000ed6: 0b                         |                                   end
 000ed7: 20 01                      |                                   local.get 1
 000ed9: 20 11                      |                                   local.get 17
 000edb: 20 07                      |                                   local.get 7
 000edd: 6a                         |                                   i32.add
 000ede: 22 04                      |                                   local.tee 4
 000ee0: 36 02 1c                   |                                   i32.store 2 28
 000ee3: 20 16                      |                                   local.get 22
 000ee5: 0d 07                      |                                   br_if 7
 000ee7: 20 01                      |                                   local.get 1
 000ee9: 20 12                      |                                   local.get 18
 000eeb: 36 02 24                   |                                   i32.store 2 36
 000eee: 20 12                      |                                   local.get 18
 000ef0: 21 15                      |                                   local.set 21
 000ef2: 0c 07                      |                                   br 7
 000ef4: 0b                         |                                 end
 000ef5: 41 fc 80 c0 80 00          |                                 i32.const 1048700
 000efb: 20 04                      |                                 local.get 4
 000efd: 20 05                      |                                 local.get 5
 000eff: 10 a5 80 80 80 00          |                                 call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 000f05: 00                         |                                 unreachable
 000f06: 0b                         |                               end
 000f07: 41 8c 81 c0 80 00          |                               i32.const 1048716
 000f0d: 20 0a                      |                               local.get 10
 000f0f: 20 08                      |                               local.get 8
 000f11: 10 a5 80 80 80 00          |                               call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 000f17: 00                         |                               unreachable
 000f18: 0b                         |                             end
 000f19: 20 07                      |                             local.get 7
 000f1b: 20 04                      |                             local.get 4
 000f1d: 6a                         |                             i32.add
 000f1e: 22 0b                      |                             local.tee 11
 000f20: 20 08                      |                             local.get 8
 000f22: 4f                         |                             i32.ge_u
 000f23: 0d 01                      |                             br_if 1
 000f25: 20 0d                      |                             local.get 13
 000f27: 20 04                      |                             local.get 4
 000f29: 6a                         |                             i32.add
 000f2a: 21 0b                      |                             local.set 11
 000f2c: 20 09                      |                             local.get 9
 000f2e: 20 04                      |                             local.get 4
 000f30: 6a                         |                             i32.add
 000f31: 21 17                      |                             local.set 23
 000f33: 20 0a                      |                             local.get 10
 000f35: 21 04                      |                             local.set 4
 000f37: 20 17                      |                             local.get 23
 000f39: 2d 00 00                   |                             i32.load8_u 0 0
 000f3c: 20 0b                      |                             local.get 11
 000f3e: 2d 00 00                   |                             i32.load8_u 0 0
 000f41: 46                         |                             i32.eq
 000f42: 0d 00                      |                             br_if 0
 000f44: 0b                         |                           end
 000f45: 20 01                      |                           local.get 1
 000f47: 20 10                      |                           local.get 16
 000f49: 20 0a                      |                           local.get 10
 000f4b: 6a                         |                           i32.add
 000f4c: 22 04                      |                           local.tee 4
 000f4e: 36 02 1c                   |                           i32.store 2 28
 000f51: 20 16                      |                           local.get 22
 000f53: 0d 03                      |                           br_if 3
 000f55: 41 00                      |                           i32.const 0
 000f57: 21 15                      |                           local.set 21
 000f59: 20 01                      |                           local.get 1
 000f5b: 41 00                      |                           i32.const 0
 000f5d: 36 02 24                   |                           i32.store 2 36
 000f60: 0c 03                      |                           br 3
 000f62: 0b                         |                         end
 000f63: 41 ec 80 c0 80 00          |                         i32.const 1048684
 000f69: 20 0b                      |                         local.get 11
 000f6b: 20 08                      |                         local.get 8
 000f6d: 10 a5 80 80 80 00          |                         call 37 <_ZN4core9panicking18panic_bounds_check17h55b51e817be982c8E>
 000f73: 00                         |                         unreachable
 000f74: 0b                         |                       end
 000f75: 02 40                      |                       block
 000f77: 20 04                      |                         local.get 4
 000f79: 45                         |                         i32.eqz
 000f7a: 0d 00                      |                         br_if 0
 000f7c: 20 08                      |                         local.get 8
 000f7e: 20 04                      |                         local.get 4
 000f80: 46                         |                         i32.eq
 000f81: 0d 00                      |                         br_if 0
 000f83: 20 08                      |                         local.get 8
 000f85: 41 7f                      |                         i32.const 4294967295
 000f87: 6a                         |                         i32.add
 000f88: 21 0a                      |                         local.set 10
 000f8a: 20 04                      |                         local.get 4
 000f8c: 21 07                      |                         local.set 7
 000f8e: 03 40                      |                         loop
 000f90: 02 40                      |                           block
 000f92: 20 08                      |                             local.get 8
 000f94: 20 07                      |                             local.get 7
 000f96: 4d                         |                             i32.le_u
 000f97: 0d 00                      |                             br_if 0
 000f99: 20 0c                      |                             local.get 12
 000f9b: 20 07                      |                             local.get 7
 000f9d: 6a                         |                             i32.add
 000f9e: 2c 00 00                   |                             i32.load8_s 0 0
 000fa1: 41 40                      |                             i32.const 4294967232
 000fa3: 48                         |                             i32.lt_s
 000fa4: 0d 00                      |                             br_if 0
 000fa6: 20 04                      |                             local.get 4
 000fa8: 21 08                      |                             local.set 8
 000faa: 20 07                      |                             local.get 7
 000fac: 21 04                      |                             local.set 4
 000fae: 0c 07                      |                             br 7
 000fb0: 0b                         |                           end
 000fb1: 02 40                      |                           block
 000fb3: 20 07                      |                             local.get 7
 000fb5: 41 01                      |                             i32.const 1
 000fb7: 6a                         |                             i32.add
 000fb8: 22 05                      |                             local.tee 5
 000fba: 20 07                      |                             local.get 7
 000fbc: 49                         |                             i32.lt_u
 000fbd: 0d 00                      |                             br_if 0
 000fbf: 20 0a                      |                             local.get 10
 000fc1: 20 07                      |                             local.get 7
 000fc3: 46                         |                             i32.eq
 000fc4: 21 09                      |                             local.set 9
 000fc6: 20 05                      |                             local.get 5
 000fc8: 21 07                      |                             local.set 7
 000fca: 20 09                      |                             local.get 9
 000fcc: 45                         |                             i32.eqz
 000fcd: 0d 01                      |                             br_if 1
 000fcf: 0b                         |                           end
 000fd0: 0b                         |                         end
 000fd1: 20 04                      |                         local.get 4
 000fd3: 21 08                      |                         local.set 8
 000fd5: 20 05                      |                         local.get 5
 000fd7: 21 04                      |                         local.set 4
 000fd9: 0c 05                      |                         br 5
 000fdb: 0b                         |                       end
 000fdc: 20 04                      |                       local.get 4
 000fde: 21 08                      |                       local.set 8
 000fe0: 0c 04                      |                       br 4
 000fe2: 0b                         |                     end
 000fe3: 20 01                      |                     local.get 1
 000fe5: 20 06                      |                     local.get 6
 000fe7: 36 02 1c                   |                     i32.store 2 28
 000fea: 20 06                      |                     local.get 6
 000fec: 21 04                      |                     local.set 4
 000fee: 20 14                      |                     local.get 20
 000ff0: 41 7f                      |                     i32.const 4294967295
 000ff2: 46                         |                     i32.eq
 000ff3: 0d 00                      |                     br_if 0
 000ff5: 41 00                      |                     i32.const 0
 000ff7: 21 15                      |                     local.set 21
 000ff9: 20 01                      |                     local.get 1
 000ffb: 41 00                      |                     i32.const 0
 000ffd: 36 02 24                   |                     i32.store 2 36
 001000: 20 06                      |                     local.get 6
 001002: 21 04                      |                     local.set 4
 001004: 0b                         |                   end
 001005: 20 0e                      |                   local.get 14
 001007: 20 04                      |                   local.get 4
 001009: 6a                         |                   i32.add
 00100a: 22 0a                      |                   local.tee 10
 00100c: 20 08                      |                   local.get 8
 00100e: 49                         |                   i32.lt_u
 00100f: 0d 00                      |                   br_if 0
 001011: 0b                         |                 end
 001012: 0b                         |               end
 001013: 20 01                      |               local.get 1
 001015: 20 08                      |               local.get 8
 001017: 36 02 1c                   |               i32.store 2 28
 00101a: 20 08                      |               local.get 8
 00101c: 21 04                      |               local.set 4
 00101e: 0b                         |             end
 00101f: 20 01                      |             local.get 1
 001021: 20 04                      |             local.get 4
 001023: 20 08                      |             local.get 8
 001025: 20 08                      |             local.get 8
 001027: 20 04                      |             local.get 4
 001029: 49                         |             i32.lt_u
 00102a: 1b                         |             select
 00102b: 36 02 1c                   |             i32.store 2 28
 00102e: 20 03                      |             local.get 3
 001030: 21 04                      |             local.set 4
 001032: 0c 00                      |             br 0
 001034: 0b                         |           end
 001035: 0b                         |         end
 001036: 20 02                      |         local.get 2
 001038: 20 02                      |         local.get 2
 00103a: 41 0c                      |         i32.const 12
 00103c: 6a                         |         i32.add
 00103d: 36 02 18                   |         i32.store 2 24
 001040: 20 02                      |         local.get 2
 001042: 20 02                      |         local.get 2
 001044: 41 08                      |         i32.const 8
 001046: 6a                         |         i32.add
 001047: 36 02 14                   |         i32.store 2 20
 00104a: 20 02                      |         local.get 2
 00104c: 20 02                      |         local.get 2
 00104e: 36 02 10                   |         i32.store 2 16
 001051: 20 02                      |         local.get 2
 001053: 41 10                      |         i32.const 16
 001055: 6a                         |         i32.add
 001056: 10 a1 80 80 80 00          |         call 33 <_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h06708c0e26fbba3aE>
 00105c: 00                         |         unreachable
 00105d: 0b                         |       end
 00105e: 20 01                      |       local.get 1
 001060: 41 08                      |       i32.const 8
 001062: 6a                         |       i32.add
 001063: 21 04                      |       local.set 4
 001065: 20 01                      |       local.get 1
 001067: 41 3c                      |       i32.const 60
 001069: 6a                         |       i32.add
 00106a: 28 02 00                   |       i32.load 2 0
 00106d: 21 08                      |       local.set 8
 00106f: 20 01                      |       local.get 1
 001071: 41 34                      |       i32.const 52
 001073: 6a                         |       i32.add
 001074: 28 02 00                   |       i32.load 2 0
 001077: 21 07                      |       local.set 7
 001079: 20 01                      |       local.get 1
 00107b: 28 02 38                   |       i32.load 2 56
 00107e: 21 05                      |       local.set 5
 001080: 20 01                      |       local.get 1
 001082: 28 02 30                   |       i32.load 2 48
 001085: 21 09                      |       local.set 9
 001087: 02 40                      |       block
 001089: 20 01                      |         local.get 1
 00108b: 41 24                      |         i32.const 36
 00108d: 6a                         |         i32.add
 00108e: 28 02 00                   |         i32.load 2 0
 001091: 41 7f                      |         i32.const 4294967295
 001093: 47                         |         i32.ne
 001094: 0d 00                      |         br_if 0
 001096: 20 00                      |         local.get 0
 001098: 20 04                      |         local.get 4
 00109a: 20 09                      |         local.get 9
 00109c: 20 07                      |         local.get 7
 00109e: 20 05                      |         local.get 5
 0010a0: 20 08                      |         local.get 8
 0010a2: 41 01                      |         i32.const 1
 0010a4: 10 a4 80 80 80 00          |         call 36 <_ZN4core3str7pattern14TwoWaySearcher4next17h9cda356f1d250783E>
 0010aa: 0c 03                      |         br 3
 0010ac: 0b                         |       end
 0010ad: 20 00                      |       local.get 0
 0010af: 20 04                      |       local.get 4
 0010b1: 20 09                      |       local.get 9
 0010b3: 20 07                      |       local.get 7
 0010b5: 20 05                      |       local.get 5
 0010b7: 20 08                      |       local.get 8
 0010b9: 41 00                      |       i32.const 0
 0010bb: 10 a4 80 80 80 00          |       call 36 <_ZN4core3str7pattern14TwoWaySearcher4next17h9cda356f1d250783E>
 0010c1: 0c 02                      |       br 2
 0010c3: 0b                         |     end
 0010c4: 20 00                      |     local.get 0
 0010c6: 41 00                      |     i32.const 0
 0010c8: 36 02 00                   |     i32.store 2 0
 0010cb: 0c 01                      |     br 1
 0010cd: 0b                         |   end
 0010ce: 20 00                      |   local.get 0
 0010d0: 20 07                      |   local.get 7
 0010d2: 36 02 04                   |   i32.store 2 4
 0010d5: 20 00                      |   local.get 0
 0010d7: 41 01                      |   i32.const 1
 0010d9: 36 02 00                   |   i32.store 2 0
 0010dc: 20 00                      |   local.get 0
 0010de: 41 08                      |   i32.const 8
 0010e0: 6a                         |   i32.add
 0010e1: 20 06                      |   local.get 6
 0010e3: 36 02 00                   |   i32.store 2 0
 0010e6: 0b                         | end
 0010e7: 20 02                      | local.get 2
 0010e9: 41 20                      | i32.const 32
 0010eb: 6a                         | i32.add
 0010ec: 24 80 80 80 80 00          | global.set 0
 0010f2: 0b                         | end
