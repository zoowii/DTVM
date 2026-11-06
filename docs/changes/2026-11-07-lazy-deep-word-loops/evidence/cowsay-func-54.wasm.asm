008c94 func[54] <_ZN4clap3app6parser6Parser20derive_display_order17hea2c691694fa6eb4E>:
 008c95: 01 7f                      | local[1] type=i32
 008c97: 01 7e                      | local[2] type=i64
 008c99: 06 7f                      | local[3..8] type=i32
 008c9b: 23 80 80 80 80 00          | global.get 0
 008ca1: 41 20                      | i32.const 32
 008ca3: 6b                         | i32.sub
 008ca4: 22 01                      | local.tee 1
 008ca6: 24 80 80 80 80 00          | global.set 0
 008cac: 02 40                      | block
 008cae: 20 00                      |   local.get 0
 008cb0: 29 03 00                   |   i64.load 3 0
 008cb3: 22 02                      |   local.tee 2
 008cb5: 42 80 80 80 01             |   i64.const 2097152
 008cba: 83                         |   i64.and
 008cbb: 50                         |   i64.eqz
 008cbc: 0d 00                      |   br_if 0
 008cbe: 20 02                      |   local.get 2
 008cc0: 42 20                      |   i64.const 32
 008cc2: 83                         |   i64.and
 008cc3: 21 02                      |   local.set 2
 008cc5: 20 00                      |   local.get 0
 008cc7: 28 02 b0 01                |   i32.load 2 176
 008ccb: 22 03                      |   local.tee 3
 008ccd: 20 00                      |   local.get 0
 008ccf: 41 b8 01                   |   i32.const 184
 008cd2: 6a                         |   i32.add
 008cd3: 28 02 00                   |   i32.load 2 0
 008cd6: 41 90 02                   |   i32.const 272
 008cd9: 6c                         |   i32.mul
 008cda: 6a                         |   i32.add
 008cdb: 21 04                      |   local.set 4
 008cdd: 41 00                      |   i32.const 0
 008cdf: 21 05                      |   local.set 5
 008ce1: 03 40                      |   loop
 008ce3: 02 40                      |     block
 008ce5: 02 40                      |       block
 008ce7: 20 04                      |         local.get 4
 008ce9: 20 03                      |         local.get 3
 008ceb: 6b                         |         i32.sub
 008cec: 41 b0 06                   |         i32.const 816
 008cef: 4b                         |         i32.gt_u
 008cf0: 0d 00                      |         br_if 0
 008cf2: 02 40                      |         block
 008cf4: 02 40                      |           block
 008cf6: 20 03                      |             local.get 3
 008cf8: 20 04                      |             local.get 4
 008cfa: 46                         |             i32.eq
 008cfb: 0d 00                      |             br_if 0
 008cfd: 20 03                      |             local.get 3
 008cff: 21 06                      |             local.set 6
 008d01: 03 40                      |             loop
 008d03: 20 06                      |               local.get 6
 008d05: 41 88 02                   |               i32.const 264
 008d08: 6a                         |               i32.add
 008d09: 28 02 00                   |               i32.load 2 0
 008d0c: 41 e7 07                   |               i32.const 999
 008d0f: 46                         |               i32.eq
 008d10: 0d 02                      |               br_if 2
 008d12: 20 05                      |               local.get 5
 008d14: 41 01                      |               i32.const 1
 008d16: 6a                         |               i32.add
 008d17: 21 05                      |               local.set 5
 008d19: 20 04                      |               local.get 4
 008d1b: 20 06                      |               local.get 6
 008d1d: 41 90 02                   |               i32.const 272
 008d20: 6a                         |               i32.add
 008d21: 22 06                      |               local.tee 6
 008d23: 47                         |               i32.ne
 008d24: 0d 00                      |               br_if 0
 008d26: 0b                         |             end
 008d27: 0b                         |           end
 008d28: 20 00                      |           local.get 0
 008d2a: 28 02 a4 01                |           i32.load 2 164
 008d2e: 22 03                      |           local.tee 3
 008d30: 20 00                      |           local.get 0
 008d32: 41 ac 01                   |           i32.const 172
 008d35: 6a                         |           i32.add
 008d36: 28 02 00                   |           i32.load 2 0
 008d39: 41 f8 00                   |           i32.const 120
 008d3c: 6c                         |           i32.mul
 008d3d: 6a                         |           i32.add
 008d3e: 21 04                      |           local.set 4
 008d40: 41 00                      |           i32.const 0
 008d42: 21 05                      |           local.set 5
 008d44: 03 40                      |           loop
 008d46: 02 40                      |             block
 008d48: 02 40                      |               block
 008d4a: 02 40                      |                 block
 008d4c: 02 40                      |                   block
 008d4e: 02 40                      |                     block
 008d50: 02 40                      |                       block
 008d52: 20 04                      |                         local.get 4
 008d54: 20 03                      |                         local.get 3
 008d56: 6b                         |                         i32.sub
 008d57: 41 e8 02                   |                         i32.const 360
 008d5a: 4b                         |                         i32.gt_u
 008d5b: 0d 00                      |                         br_if 0
 008d5d: 02 40                      |                         block
 008d5f: 20 03                      |                           local.get 3
 008d61: 20 04                      |                           local.get 4
 008d63: 46                         |                           i32.eq
 008d64: 0d 00                      |                           br_if 0
 008d66: 20 03                      |                           local.get 3
 008d68: 21 06                      |                           local.set 6
 008d6a: 03 40                      |                           loop
 008d6c: 20 06                      |                             local.get 6
 008d6e: 41 f0 00                   |                             i32.const 112
 008d71: 6a                         |                             i32.add
 008d72: 28 02 00                   |                             i32.load 2 0
 008d75: 41 e7 07                   |                             i32.const 999
 008d78: 46                         |                             i32.eq
 008d79: 0d 03                      |                             br_if 3
 008d7b: 20 05                      |                             local.get 5
 008d7d: 41 01                      |                             i32.const 1
 008d7f: 6a                         |                             i32.add
 008d80: 21 05                      |                             local.set 5
 008d82: 20 04                      |                             local.get 4
 008d84: 20 06                      |                             local.get 6
 008d86: 41 f8 00                   |                             i32.const 120
 008d89: 6a                         |                             i32.add
 008d8a: 22 06                      |                             local.tee 6
 008d8c: 47                         |                             i32.ne
 008d8d: 0d 00                      |                             br_if 0
 008d8f: 0b                         |                           end
 008d90: 0b                         |                         end
 008d91: 20 01                      |                         local.get 1
 008d93: 41 00                      |                         i32.const 0
 008d95: 36 02 18                   |                         i32.store 2 24
 008d98: 20 01                      |                         local.get 1
 008d9a: 20 00                      |                         local.get 0
 008d9c: 28 02 cc 01                |                         i32.load 2 204
 008da0: 22 06                      |                         local.tee 6
 008da2: 36 02 10                   |                         i32.store 2 16
 008da5: 20 01                      |                         local.get 1
 008da7: 20 06                      |                         local.get 6
 008da9: 20 00                      |                         local.get 0
 008dab: 41 d4 01                   |                         i32.const 212
 008dae: 6a                         |                         i32.add
 008daf: 28 02 00                   |                         i32.load 2 0
 008db2: 41 b8 02                   |                         i32.const 312
 008db5: 6c                         |                         i32.mul
 008db6: 6a                         |                         i32.add
 008db7: 36 02 14                   |                         i32.store 2 20
 008dba: 20 01                      |                         local.get 1
 008dbc: 41 08                      |                         i32.const 8
 008dbe: 6a                         |                         i32.add
 008dbf: 20 01                      |                         local.get 1
 008dc1: 41 10                      |                         i32.const 16
 008dc3: 6a                         |                         i32.add
 008dc4: 10 e3 82 80 80 00          |                         call 355 <_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7558d50ef37776b3E>
 008dca: 20 01                      |                         local.get 1
 008dcc: 28 02 0c                   |                         i32.load 2 12
 008dcf: 22 06                      |                         local.tee 6
 008dd1: 45                         |                         i32.eqz
 008dd2: 0d 0b                      |                         br_if 11
 008dd4: 20 01                      |                         local.get 1
 008dd6: 28 02 08                   |                         i32.load 2 8
 008dd9: 21 05                      |                         local.set 5
 008ddb: 03 40                      |                         loop
 008ddd: 20 06                      |                           local.get 6
 008ddf: 20 05                      |                           local.get 5
 008de1: 36 02 88 01                |                           i32.store 2 136
 008de5: 20 01                      |                           local.get 1
 008de7: 20 01                      |                           local.get 1
 008de9: 41 10                      |                           i32.const 16
 008deb: 6a                         |                           i32.add
 008dec: 10 e3 82 80 80 00          |                           call 355 <_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7558d50ef37776b3E>
 008df2: 20 01                      |                           local.get 1
 008df4: 28 02 00                   |                           i32.load 2 0
 008df7: 21 05                      |                           local.set 5
 008df9: 20 01                      |                           local.get 1
 008dfb: 28 02 04                   |                           i32.load 2 4
 008dfe: 22 06                      |                           local.tee 6
 008e00: 0d 00                      |                           br_if 0
 008e02: 0c 0c                      |                           br 12
 008e04: 0b                         |                         end
 008e05: 0b                         |                       end
 008e06: 02 40                      |                       block
 008e08: 20 03                      |                         local.get 3
 008e0a: 28 02 70                   |                         i32.load 2 112
 008e0d: 41 e7 07                   |                         i32.const 999
 008e10: 47                         |                         i32.ne
 008e11: 0d 00                      |                         br_if 0
 008e13: 20 05                      |                         local.get 5
 008e15: 41 01                      |                         i32.const 1
 008e17: 6a                         |                         i32.add
 008e18: 21 07                      |                         local.set 7
 008e1a: 20 03                      |                         local.get 3
 008e1c: 21 06                      |                         local.set 6
 008e1e: 20 03                      |                         local.get 3
 008e20: 41 f8 00                   |                         i32.const 120
 008e23: 6a                         |                         i32.add
 008e24: 21 03                      |                         local.set 3
 008e26: 0c 05                      |                         br 5
 008e28: 0b                         |                       end
 008e29: 20 03                      |                       local.get 3
 008e2b: 41 e8 01                   |                       i32.const 232
 008e2e: 6a                         |                       i32.add
 008e2f: 28 02 00                   |                       i32.load 2 0
 008e32: 41 e7 07                   |                       i32.const 999
 008e35: 46                         |                       i32.eq
 008e36: 0d 01                      |                       br_if 1
 008e38: 20 03                      |                       local.get 3
 008e3a: 41 e0 02                   |                       i32.const 352
 008e3d: 6a                         |                       i32.add
 008e3e: 28 02 00                   |                       i32.load 2 0
 008e41: 41 e7 07                   |                       i32.const 999
 008e44: 46                         |                       i32.eq
 008e45: 0d 03                      |                       br_if 3
 008e47: 20 05                      |                       local.get 5
 008e49: 41 04                      |                       i32.const 4
 008e4b: 6a                         |                       i32.add
 008e4c: 21 07                      |                       local.set 7
 008e4e: 20 03                      |                       local.get 3
 008e50: 41 e0 03                   |                       i32.const 480
 008e53: 6a                         |                       i32.add
 008e54: 21 08                      |                       local.set 8
 008e56: 20 03                      |                       local.get 3
 008e58: 41 d8 03                   |                       i32.const 472
 008e5b: 6a                         |                       i32.add
 008e5c: 28 02 00                   |                       i32.load 2 0
 008e5f: 41 e7 07                   |                       i32.const 999
 008e62: 46                         |                       i32.eq
 008e63: 0d 02                      |                       br_if 2
 008e65: 20 07                      |                       local.get 7
 008e67: 21 05                      |                       local.set 5
 008e69: 20 08                      |                       local.get 8
 008e6b: 21 03                      |                       local.set 3
 008e6d: 0c 05                      |                       br 5
 008e6f: 0b                         |                     end
 008e70: 20 06                      |                     local.get 6
 008e72: 41 f8 00                   |                     i32.const 120
 008e75: 6a                         |                     i32.add
 008e76: 21 03                      |                     local.set 3
 008e78: 20 05                      |                     local.get 5
 008e7a: 41 01                      |                     i32.const 1
 008e7c: 6a                         |                     i32.add
 008e7d: 21 07                      |                     local.set 7
 008e7f: 0c 03                      |                     br 3
 008e81: 0b                         |                   end
 008e82: 20 03                      |                   local.get 3
 008e84: 41 f8 00                   |                   i32.const 120
 008e87: 6a                         |                   i32.add
 008e88: 21 06                      |                   local.set 6
 008e8a: 20 03                      |                   local.get 3
 008e8c: 41 f0 01                   |                   i32.const 240
 008e8f: 6a                         |                   i32.add
 008e90: 21 03                      |                   local.set 3
 008e92: 20 05                      |                   local.get 5
 008e94: 41 02                      |                   i32.const 2
 008e96: 6a                         |                   i32.add
 008e97: 21 07                      |                   local.set 7
 008e99: 20 05                      |                   local.get 5
 008e9b: 41 01                      |                   i32.const 1
 008e9d: 6a                         |                   i32.add
 008e9e: 21 05                      |                   local.set 5
 008ea0: 0c 02                      |                   br 2
 008ea2: 0b                         |                 end
 008ea3: 20 03                      |                 local.get 3
 008ea5: 41 e8 02                   |                 i32.const 360
 008ea8: 6a                         |                 i32.add
 008ea9: 21 06                      |                 local.set 6
 008eab: 20 05                      |                 local.get 5
 008ead: 41 03                      |                 i32.const 3
 008eaf: 6a                         |                 i32.add
 008eb0: 21 05                      |                 local.set 5
 008eb2: 20 08                      |                 local.get 8
 008eb4: 21 03                      |                 local.set 3
 008eb6: 0c 01                      |                 br 1
 008eb8: 0b                         |               end
 008eb9: 20 03                      |               local.get 3
 008ebb: 41 f0 01                   |               i32.const 240
 008ebe: 6a                         |               i32.add
 008ebf: 21 06                      |               local.set 6
 008ec1: 20 03                      |               local.get 3
 008ec3: 41 e8 02                   |               i32.const 360
 008ec6: 6a                         |               i32.add
 008ec7: 21 03                      |               local.set 3
 008ec9: 20 05                      |               local.get 5
 008ecb: 41 03                      |               i32.const 3
 008ecd: 6a                         |               i32.add
 008ece: 21 07                      |               local.set 7
 008ed0: 20 05                      |               local.get 5
 008ed2: 41 02                      |               i32.const 2
 008ed4: 6a                         |               i32.add
 008ed5: 21 05                      |               local.set 5
 008ed7: 0b                         |             end
 008ed8: 02 40                      |             block
 008eda: 20 02                      |               local.get 2
 008edc: 50                         |               i64.eqz
 008edd: 0d 00                      |               br_if 0
 008edf: 20 06                      |               local.get 6
 008ee1: 28 02 74                   |               i32.load 2 116
 008ee4: 21 05                      |               local.set 5
 008ee6: 0b                         |             end
 008ee7: 20 06                      |             local.get 6
 008ee9: 20 05                      |             local.get 5
 008eeb: 36 02 70                   |             i32.store 2 112
 008eee: 20 07                      |             local.get 7
 008ef0: 21 05                      |             local.set 5
 008ef2: 0c 00                      |             br 0
 008ef4: 0b                         |           end
 008ef5: 0b                         |         end
 008ef6: 20 06                      |         local.get 6
 008ef8: 41 90 02                   |         i32.const 272
 008efb: 6a                         |         i32.add
 008efc: 21 03                      |         local.set 3
 008efe: 20 05                      |         local.get 5
 008f00: 41 01                      |         i32.const 1
 008f02: 6a                         |         i32.add
 008f03: 21 07                      |         local.set 7
 008f05: 0c 01                      |         br 1
 008f07: 0b                         |       end
 008f08: 02 40                      |       block
 008f0a: 20 03                      |         local.get 3
 008f0c: 28 02 88 02                |         i32.load 2 264
 008f10: 41 e7 07                   |         i32.const 999
 008f13: 47                         |         i32.ne
 008f14: 0d 00                      |         br_if 0
 008f16: 20 05                      |         local.get 5
 008f18: 41 01                      |         i32.const 1
 008f1a: 6a                         |         i32.add
 008f1b: 21 07                      |         local.set 7
 008f1d: 20 03                      |         local.get 3
 008f1f: 21 06                      |         local.set 6
 008f21: 20 03                      |         local.get 3
 008f23: 41 90 02                   |         i32.const 272
 008f26: 6a                         |         i32.add
 008f27: 21 03                      |         local.set 3
 008f29: 0c 01                      |         br 1
 008f2b: 0b                         |       end
 008f2c: 02 40                      |       block
 008f2e: 02 40                      |         block
 008f30: 02 40                      |           block
 008f32: 20 03                      |             local.get 3
 008f34: 41 98 04                   |             i32.const 536
 008f37: 6a                         |             i32.add
 008f38: 28 02 00                   |             i32.load 2 0
 008f3b: 41 e7 07                   |             i32.const 999
 008f3e: 46                         |             i32.eq
 008f3f: 0d 00                      |             br_if 0
 008f41: 20 03                      |             local.get 3
 008f43: 41 a8 06                   |             i32.const 808
 008f46: 6a                         |             i32.add
 008f47: 28 02 00                   |             i32.load 2 0
 008f4a: 41 e7 07                   |             i32.const 999
 008f4d: 46                         |             i32.eq
 008f4e: 0d 02                      |             br_if 2
 008f50: 20 05                      |             local.get 5
 008f52: 41 04                      |             i32.const 4
 008f54: 6a                         |             i32.add
 008f55: 21 07                      |             local.set 7
 008f57: 20 03                      |             local.get 3
 008f59: 41 c0 08                   |             i32.const 1088
 008f5c: 6a                         |             i32.add
 008f5d: 21 08                      |             local.set 8
 008f5f: 20 03                      |             local.get 3
 008f61: 41 b8 08                   |             i32.const 1080
 008f64: 6a                         |             i32.add
 008f65: 28 02 00                   |             i32.load 2 0
 008f68: 41 e7 07                   |             i32.const 999
 008f6b: 46                         |             i32.eq
 008f6c: 0d 01                      |             br_if 1
 008f6e: 20 07                      |             local.get 7
 008f70: 21 05                      |             local.set 5
 008f72: 20 08                      |             local.get 8
 008f74: 21 03                      |             local.set 3
 008f76: 0c 04                      |             br 4
 008f78: 0b                         |           end
 008f79: 20 03                      |           local.get 3
 008f7b: 41 90 02                   |           i32.const 272
 008f7e: 6a                         |           i32.add
 008f7f: 21 06                      |           local.set 6
 008f81: 20 03                      |           local.get 3
 008f83: 41 a0 04                   |           i32.const 544
 008f86: 6a                         |           i32.add
 008f87: 21 03                      |           local.set 3
 008f89: 20 05                      |           local.get 5
 008f8b: 41 02                      |           i32.const 2
 008f8d: 6a                         |           i32.add
 008f8e: 21 07                      |           local.set 7
 008f90: 20 05                      |           local.get 5
 008f92: 41 01                      |           i32.const 1
 008f94: 6a                         |           i32.add
 008f95: 21 05                      |           local.set 5
 008f97: 0c 02                      |           br 2
 008f99: 0b                         |         end
 008f9a: 20 03                      |         local.get 3
 008f9c: 41 b0 06                   |         i32.const 816
 008f9f: 6a                         |         i32.add
 008fa0: 21 06                      |         local.set 6
 008fa2: 20 05                      |         local.get 5
 008fa4: 41 03                      |         i32.const 3
 008fa6: 6a                         |         i32.add
 008fa7: 21 05                      |         local.set 5
 008fa9: 20 08                      |         local.get 8
 008fab: 21 03                      |         local.set 3
 008fad: 0c 01                      |         br 1
 008faf: 0b                         |       end
 008fb0: 20 03                      |       local.get 3
 008fb2: 41 a0 04                   |       i32.const 544
 008fb5: 6a                         |       i32.add
 008fb6: 21 06                      |       local.set 6
 008fb8: 20 03                      |       local.get 3
 008fba: 41 b0 06                   |       i32.const 816
 008fbd: 6a                         |       i32.add
 008fbe: 21 03                      |       local.set 3
 008fc0: 20 05                      |       local.get 5
 008fc2: 41 03                      |       i32.const 3
 008fc4: 6a                         |       i32.add
 008fc5: 21 07                      |       local.set 7
 008fc7: 20 05                      |       local.get 5
 008fc9: 41 02                      |       i32.const 2
 008fcb: 6a                         |       i32.add
 008fcc: 21 05                      |       local.set 5
 008fce: 0b                         |     end
 008fcf: 02 40                      |     block
 008fd1: 20 02                      |       local.get 2
 008fd3: 50                         |       i64.eqz
 008fd4: 0d 00                      |       br_if 0
 008fd6: 20 06                      |       local.get 6
 008fd8: 41 8c 02                   |       i32.const 268
 008fdb: 6a                         |       i32.add
 008fdc: 28 02 00                   |       i32.load 2 0
 008fdf: 21 05                      |       local.set 5
 008fe1: 0b                         |     end
 008fe2: 20 06                      |     local.get 6
 008fe4: 20 05                      |     local.get 5
 008fe6: 36 02 88 02                |     i32.store 2 264
 008fea: 20 07                      |     local.get 7
 008fec: 21 05                      |     local.set 5
 008fee: 0c 00                      |     br 0
 008ff0: 0b                         |   end
 008ff1: 0b                         | end
 008ff2: 02 40                      | block
 008ff4: 20 00                      |   local.get 0
 008ff6: 41 d4 01                   |   i32.const 212
 008ff9: 6a                         |   i32.add
 008ffa: 28 02 00                   |   i32.load 2 0
 008ffd: 22 05                      |   local.tee 5
 008fff: 45                         |   i32.eqz
 009000: 0d 00                      |   br_if 0
 009002: 20 00                      |   local.get 0
 009004: 28 02 cc 01                |   i32.load 2 204
 009008: 21 06                      |   local.set 6
 00900a: 20 05                      |   local.get 5
 00900c: 41 b8 02                   |   i32.const 312
 00900f: 6c                         |   i32.mul
 009010: 21 05                      |   local.set 5
 009012: 03 40                      |   loop
 009014: 20 06                      |     local.get 6
 009016: 10 b6 80 80 80 00          |     call 54 <_ZN4clap3app6parser6Parser20derive_display_order17hea2c691694fa6eb4E>
 00901c: 20 06                      |     local.get 6
 00901e: 41 b8 02                   |     i32.const 312
 009021: 6a                         |     i32.add
 009022: 21 06                      |     local.set 6
 009024: 20 05                      |     local.get 5
 009026: 41 c8 7d                   |     i32.const 4294966984
 009029: 6a                         |     i32.add
 00902a: 22 05                      |     local.tee 5
 00902c: 0d 00                      |     br_if 0
 00902e: 0b                         |   end
 00902f: 0b                         | end
 009030: 20 01                      | local.get 1
 009032: 41 20                      | i32.const 32
 009034: 6a                         | i32.add
 009035: 24 80 80 80 80 00          | global.set 0
 00903b: 0b                         | end
