010d90 func[171] <_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hb640cac806bc59afE>:
 010d91: 0e 7f                      | local[2..15] type=i32
 010d93: 01 7e                      | local[16] type=i64
 010d95: 03 7f                      | local[17..19] type=i32
 010d97: 01 7e                      | local[20] type=i64
 010d99: 01 7f                      | local[21] type=i32
 010d9b: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 010da1: 41 20                      | i32.const 32
 010da3: 6b                         | i32.sub
 010da4: 22 02                      | local.tee 2
 010da6: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 010dac: 20 01                      | local.get 1
 010dae: 41 2c                      | i32.const 44
 010db0: 6a                         | i32.add
 010db1: 28 02 00                   | i32.load 2 0
 010db4: 21 03                      | local.set 3
 010db6: 20 01                      | local.get 1
 010db8: 41 28                      | i32.const 40
 010dba: 6a                         | i32.add
 010dbb: 28 02 00                   | i32.load 2 0
 010dbe: 21 04                      | local.set 4
 010dc0: 20 01                      | local.get 1
 010dc2: 41 24                      | i32.const 36
 010dc4: 6a                         | i32.add
 010dc5: 28 02 00                   | i32.load 2 0
 010dc8: 21 05                      | local.set 5
 010dca: 20 01                      | local.get 1
 010dcc: 41 1c                      | i32.const 28
 010dce: 6a                         | i32.add
 010dcf: 28 02 00                   | i32.load 2 0
 010dd2: 21 06                      | local.set 6
 010dd4: 20 01                      | local.get 1
 010dd6: 41 18                      | i32.const 24
 010dd8: 6a                         | i32.add
 010dd9: 28 02 00                   | i32.load 2 0
 010ddc: 21 07                      | local.set 7
 010dde: 20 01                      | local.get 1
 010de0: 41 14                      | i32.const 20
 010de2: 6a                         | i32.add
 010de3: 28 02 00                   | i32.load 2 0
 010de6: 21 08                      | local.set 8
 010de8: 20 01                      | local.get 1
 010dea: 41 0c                      | i32.const 12
 010dec: 6a                         | i32.add
 010ded: 28 02 00                   | i32.load 2 0
 010df0: 21 09                      | local.set 9
 010df2: 20 01                      | local.get 1
 010df4: 41 08                      | i32.const 8
 010df6: 6a                         | i32.add
 010df7: 28 02 00                   | i32.load 2 0
 010dfa: 21 0a                      | local.set 10
 010dfc: 20 01                      | local.get 1
 010dfe: 28 02 20                   | i32.load 2 32
 010e01: 21 0b                      | local.set 11
 010e03: 20 01                      | local.get 1
 010e05: 28 02 10                   | i32.load 2 16
 010e08: 21 0c                      | local.set 12
 010e0a: 20 01                      | local.get 1
 010e0c: 28 02 04                   | i32.load 2 4
 010e0f: 21 0d                      | local.set 13
 010e11: 20 01                      | local.get 1
 010e13: 28 02 00                   | i32.load 2 0
 010e16: 21 0e                      | local.set 14
 010e18: 02 40                      | block
 010e1a: 02 40                      |   block
 010e1c: 03 40                      |     loop
 010e1e: 02 40                      |       block
 010e20: 20 0c                      |         local.get 12
 010e22: 45                         |         i32.eqz
 010e23: 0d 00                      |         br_if 0
 010e25: 02 40                      |         block
 010e27: 20 06                      |           local.get 6
 010e29: 20 07                      |           local.get 7
 010e2b: 47                         |           i32.ne
 010e2c: 0d 00                      |           br_if 0
 010e2e: 20 08                      |           local.get 8
 010e30: 45                         |           i32.eqz
 010e31: 0d 01                      |           br_if 1
 010e33: 20 0c                      |           local.get 12
 010e35: 20 08                      |           local.get 8
 010e37: 41 03                      |           i32.const 3
 010e39: 74                         |           i32.shl
 010e3a: 41 08                      |           i32.const 8
 010e3c: 10 ca 80 80 80 00          |           call 74 <__rust_dealloc>
 010e42: 0c 01                      |           br 1
 010e44: 0b                         |         end
 010e45: 20 07                      |         local.get 7
 010e47: 41 08                      |         i32.const 8
 010e49: 6a                         |         i32.add
 010e4a: 21 0f                      |         local.set 15
 010e4c: 20 07                      |         local.get 7
 010e4e: 29 03 00                   |         i64.load 3 0
 010e51: 21 10                      |         local.set 16
 010e53: 0c 02                      |         br 2
 010e55: 0b                         |       end
 010e56: 02 40                      |       block
 010e58: 02 40                      |         block
 010e5a: 20 0e                      |           local.get 14
 010e5c: 0d 00                      |           br_if 0
 010e5e: 41 00                      |           i32.const 0
 010e60: 21 11                      |           local.set 17
 010e62: 0c 01                      |           br 1
 010e64: 0b                         |         end
 010e65: 02 40                      |         block
 010e67: 20 0d                      |           local.get 13
 010e69: 20 0e                      |           local.get 14
 010e6b: 47                         |           i32.ne
 010e6c: 0d 00                      |           br_if 0
 010e6e: 20 0e                      |           local.get 14
 010e70: 21 11                      |           local.set 17
 010e72: 0c 01                      |           br 1
 010e74: 0b                         |         end
 010e75: 20 0a                      |         local.get 10
 010e77: 28 02 08                   |         i32.load 2 8
 010e7a: 41 18                      |         i32.const 24
 010e7c: 6c                         |         i32.mul
 010e7d: 21 12                      |         local.set 18
 010e7f: 20 0a                      |         local.get 10
 010e81: 28 02 00                   |         i32.load 2 0
 010e84: 21 13                      |         local.set 19
 010e86: 03 40                      |         loop
 010e88: 20 0e                      |           local.get 14
 010e8a: 41 38                      |           i32.const 56
 010e8c: 6a                         |           i32.add
 010e8d: 21 11                      |           local.set 17
 010e8f: 20 0e                      |           local.get 14
 010e91: 29 03 00                   |           i64.load 3 0
 010e94: 21 14                      |           local.set 20
 010e96: 20 12                      |           local.get 18
 010e98: 21 0c                      |           local.set 12
 010e9a: 20 13                      |           local.get 19
 010e9c: 21 01                      |           local.set 1
 010e9e: 02 40                      |           block
 010ea0: 03 40                      |             loop
 010ea2: 20 0c                      |               local.get 12
 010ea4: 45                         |               i32.eqz
 010ea5: 0d 01                      |               br_if 1
 010ea7: 20 0c                      |               local.get 12
 010ea9: 41 68                      |               i32.const 4294967272
 010eab: 6a                         |               i32.add
 010eac: 21 0c                      |               local.set 12
 010eae: 20 01                      |               local.get 1
 010eb0: 29 03 00                   |               i64.load 3 0
 010eb3: 21 10                      |               local.set 16
 010eb5: 20 01                      |               local.get 1
 010eb7: 41 18                      |               i32.const 24
 010eb9: 6a                         |               i32.add
 010eba: 21 01                      |               local.set 1
 010ebc: 20 10                      |               local.get 16
 010ebe: 20 14                      |               local.get 20
 010ec0: 52                         |               i64.ne
 010ec1: 0d 00                      |               br_if 0
 010ec3: 0b                         |             end
 010ec4: 20 02                      |             local.get 2
 010ec6: 41 10                      |             i32.const 16
 010ec8: 6a                         |             i32.add
 010ec9: 20 09                      |             local.get 9
 010ecb: 20 0e                      |             local.get 14
 010ecd: 10 d0 83 80 80 00          |             call 464 <_ZN4clap7builder7command3App20unroll_args_in_group17hd82ff36671eb89ffE>
 010ed3: 20 02                      |             local.get 2
 010ed5: 28 02 10                   |             i32.load 2 16
 010ed8: 22 0c                      |             local.tee 12
 010eda: 45                         |             i32.eqz
 010edb: 0d 02                      |             br_if 2
 010edd: 20 0c                      |             local.get 12
 010edf: 20 02                      |             local.get 2
 010ee1: 28 02 18                   |             i32.load 2 24
 010ee4: 41 03                      |             i32.const 3
 010ee6: 74                         |             i32.shl
 010ee7: 6a                         |             i32.add
 010ee8: 21 06                      |             local.set 6
 010eea: 20 02                      |             local.get 2
 010eec: 28 02 14                   |             i32.load 2 20
 010eef: 21 08                      |             local.set 8
 010ef1: 20 0c                      |             local.get 12
 010ef3: 21 07                      |             local.set 7
 010ef5: 20 11                      |             local.get 17
 010ef7: 21 0e                      |             local.set 14
 010ef9: 0c 03                      |             br 3
 010efb: 0b                         |           end
 010efc: 20 11                      |           local.get 17
 010efe: 21 0e                      |           local.set 14
 010f00: 20 0d                      |           local.get 13
 010f02: 20 11                      |           local.get 17
 010f04: 47                         |           i32.ne
 010f05: 0d 00                      |           br_if 0
 010f07: 0b                         |         end
 010f08: 0b                         |       end
 010f09: 0b                         |     end
 010f0a: 02 40                      |     block
 010f0c: 02 40                      |       block
 010f0e: 20 0b                      |         local.get 11
 010f10: 45                         |         i32.eqz
 010f11: 0d 00                      |         br_if 0
 010f13: 20 04                      |         local.get 4
 010f15: 20 03                      |         local.get 3
 010f17: 47                         |         i32.ne
 010f18: 0d 01                      |         br_if 1
 010f1a: 20 05                      |         local.get 5
 010f1c: 45                         |         i32.eqz
 010f1d: 0d 00                      |         br_if 0
 010f1f: 20 0b                      |         local.get 11
 010f21: 20 05                      |         local.get 5
 010f23: 41 03                      |         i32.const 3
 010f25: 74                         |         i32.shl
 010f26: 41 08                      |         i32.const 8
 010f28: 10 ca 80 80 80 00          |         call 74 <__rust_dealloc>
 010f2e: 0b                         |       end
 010f2f: 20 00                      |       local.get 0
 010f31: 41 00                      |       i32.const 0
 010f33: 36 02 08                   |       i32.store 2 8
 010f36: 20 00                      |       local.get 0
 010f38: 42 08                      |       i64.const 8
 010f3a: 37 02 00                   |       i64.store 2 0
 010f3d: 0c 02                      |       br 2
 010f3f: 0b                         |     end
 010f40: 20 04                      |     local.get 4
 010f42: 29 03 00                   |     i64.load 3 0
 010f45: 21 10                      |     local.set 16
 010f47: 41 00                      |     i32.const 0
 010f49: 21 0c                      |     local.set 12
 010f4b: 20 11                      |     local.get 17
 010f4d: 21 0e                      |     local.set 14
 010f4f: 20 07                      |     local.get 7
 010f51: 21 0f                      |     local.set 15
 010f53: 20 04                      |     local.get 4
 010f55: 41 08                      |     i32.const 8
 010f57: 6a                         |     i32.add
 010f58: 21 04                      |     local.set 4
 010f5a: 0b                         |   end
 010f5b: 02 40                      |   block
 010f5d: 20 03                      |     local.get 3
 010f5f: 20 04                      |     local.get 4
 010f61: 6b                         |     i32.sub
 010f62: 41 03                      |     i32.const 3
 010f64: 76                         |     i32.shr_u
 010f65: 41 00                      |     i32.const 0
 010f67: 20 0b                      |     local.get 11
 010f69: 1b                         |     select
 010f6a: 20 06                      |     local.get 6
 010f6c: 20 0f                      |     local.get 15
 010f6e: 6b                         |     i32.sub
 010f6f: 41 03                      |     i32.const 3
 010f71: 76                         |     i32.shr_u
 010f72: 41 00                      |     i32.const 0
 010f74: 20 0c                      |     local.get 12
 010f76: 1b                         |     select
 010f77: 6a                         |     i32.add
 010f78: 22 01                      |     local.tee 1
 010f7a: 41 03                      |     i32.const 3
 010f7c: 20 01                      |     local.get 1
 010f7e: 41 03                      |     i32.const 3
 010f80: 4b                         |     i32.gt_u
 010f81: 1b                         |     select
 010f82: 41 01                      |     i32.const 1
 010f84: 6a                         |     i32.add
 010f85: 22 01                      |     local.tee 1
 010f87: 41 ff ff ff ff 01          |     i32.const 536870911
 010f8d: 71                         |     i32.and
 010f8e: 20 01                      |     local.get 1
 010f90: 47                         |     i32.ne
 010f91: 0d 00                      |     br_if 0
 010f93: 20 01                      |     local.get 1
 010f95: 41 03                      |     i32.const 3
 010f97: 74                         |     i32.shl
 010f98: 22 11                      |     local.tee 17
 010f9a: 41 00                      |     i32.const 0
 010f9c: 48                         |     i32.lt_s
 010f9d: 0d 00                      |     br_if 0
 010f9f: 02 40                      |     block
 010fa1: 20 11                      |       local.get 17
 010fa3: 41 08                      |       i32.const 8
 010fa5: 10 c9 80 80 80 00          |       call 73 <__rust_alloc>
 010fab: 22 15                      |       local.tee 21
 010fad: 45                         |       i32.eqz
 010fae: 0d 00                      |       br_if 0
 010fb0: 20 15                      |       local.get 21
 010fb2: 20 10                      |       local.get 16
 010fb4: 37 03 00                   |       i64.store 3 0
 010fb7: 20 02                      |       local.get 2
 010fb9: 41 01                      |       i32.const 1
 010fbb: 36 02 08                   |       i32.store 2 8
 010fbe: 20 02                      |       local.get 2
 010fc0: 20 01                      |       local.get 1
 010fc2: 36 02 04                   |       i32.store 2 4
 010fc5: 20 02                      |       local.get 2
 010fc7: 20 15                      |       local.get 21
 010fc9: 36 02 00                   |       i32.store 2 0
 010fcc: 41 01                      |       i32.const 1
 010fce: 21 07                      |       local.set 7
 010fd0: 03 40                      |       loop
 010fd2: 02 40                      |         block
 010fd4: 02 40                      |           block
 010fd6: 20 0c                      |             local.get 12
 010fd8: 45                         |             i32.eqz
 010fd9: 0d 00                      |             br_if 0
 010fdb: 02 40                      |             block
 010fdd: 20 06                      |               local.get 6
 010fdf: 20 0f                      |               local.get 15
 010fe1: 47                         |               i32.ne
 010fe2: 0d 00                      |               br_if 0
 010fe4: 20 08                      |               local.get 8
 010fe6: 45                         |               i32.eqz
 010fe7: 0d 01                      |               br_if 1
 010fe9: 20 0c                      |               local.get 12
 010feb: 20 08                      |               local.get 8
 010fed: 41 03                      |               i32.const 3
 010fef: 74                         |               i32.shl
 010ff0: 41 08                      |               i32.const 8
 010ff2: 10 ca 80 80 80 00          |               call 74 <__rust_dealloc>
 010ff8: 0c 01                      |               br 1
 010ffa: 0b                         |             end
 010ffb: 20 0f                      |             local.get 15
 010ffd: 29 03 00                   |             i64.load 3 0
 011000: 21 10                      |             local.set 16
 011002: 20 0f                      |             local.get 15
 011004: 41 08                      |             i32.const 8
 011006: 6a                         |             i32.add
 011007: 21 0f                      |             local.set 15
 011009: 0c 01                      |             br 1
 01100b: 0b                         |           end
 01100c: 02 40                      |           block
 01100e: 02 40                      |             block
 011010: 20 0e                      |               local.get 14
 011012: 0d 00                      |               br_if 0
 011014: 41 00                      |               i32.const 0
 011016: 21 11                      |               local.set 17
 011018: 0c 01                      |               br 1
 01101a: 0b                         |             end
 01101b: 02 40                      |             block
 01101d: 20 0d                      |               local.get 13
 01101f: 20 0e                      |               local.get 14
 011021: 47                         |               i32.ne
 011022: 0d 00                      |               br_if 0
 011024: 20 0e                      |               local.get 14
 011026: 21 11                      |               local.set 17
 011028: 0c 01                      |               br 1
 01102a: 0b                         |             end
 01102b: 20 0a                      |             local.get 10
 01102d: 28 02 08                   |             i32.load 2 8
 011030: 41 18                      |             i32.const 24
 011032: 6c                         |             i32.mul
 011033: 21 12                      |             local.set 18
 011035: 20 0a                      |             local.get 10
 011037: 28 02 00                   |             i32.load 2 0
 01103a: 21 13                      |             local.set 19
 01103c: 03 40                      |             loop
 01103e: 20 0e                      |               local.get 14
 011040: 41 38                      |               i32.const 56
 011042: 6a                         |               i32.add
 011043: 21 11                      |               local.set 17
 011045: 20 0e                      |               local.get 14
 011047: 29 03 00                   |               i64.load 3 0
 01104a: 21 14                      |               local.set 20
 01104c: 20 12                      |               local.get 18
 01104e: 21 0c                      |               local.set 12
 011050: 20 13                      |               local.get 19
 011052: 21 01                      |               local.set 1
 011054: 02 40                      |               block
 011056: 03 40                      |                 loop
 011058: 20 0c                      |                   local.get 12
 01105a: 45                         |                   i32.eqz
 01105b: 0d 01                      |                   br_if 1
 01105d: 20 0c                      |                   local.get 12
 01105f: 41 68                      |                   i32.const 4294967272
 011061: 6a                         |                   i32.add
 011062: 21 0c                      |                   local.set 12
 011064: 20 01                      |                   local.get 1
 011066: 29 03 00                   |                   i64.load 3 0
 011069: 21 10                      |                   local.set 16
 01106b: 20 01                      |                   local.get 1
 01106d: 41 18                      |                   i32.const 24
 01106f: 6a                         |                   i32.add
 011070: 21 01                      |                   local.set 1
 011072: 20 10                      |                   local.get 16
 011074: 20 14                      |                   local.get 20
 011076: 52                         |                   i64.ne
 011077: 0d 00                      |                   br_if 0
 011079: 0b                         |                 end
 01107a: 20 02                      |                 local.get 2
 01107c: 41 10                      |                 i32.const 16
 01107e: 6a                         |                 i32.add
 01107f: 20 09                      |                 local.get 9
 011081: 20 0e                      |                 local.get 14
 011083: 10 d0 83 80 80 00          |                 call 464 <_ZN4clap7builder7command3App20unroll_args_in_group17hd82ff36671eb89ffE>
 011089: 20 02                      |                 local.get 2
 01108b: 28 02 10                   |                 i32.load 2 16
 01108e: 22 0c                      |                 local.tee 12
 011090: 45                         |                 i32.eqz
 011091: 0d 02                      |                 br_if 2
 011093: 20 0c                      |                 local.get 12
 011095: 20 02                      |                 local.get 2
 011097: 28 02 18                   |                 i32.load 2 24
 01109a: 41 03                      |                 i32.const 3
 01109c: 74                         |                 i32.shl
 01109d: 6a                         |                 i32.add
 01109e: 21 06                      |                 local.set 6
 0110a0: 20 02                      |                 local.get 2
 0110a2: 28 02 14                   |                 i32.load 2 20
 0110a5: 21 08                      |                 local.set 8
 0110a7: 20 11                      |                 local.get 17
 0110a9: 21 0e                      |                 local.set 14
 0110ab: 20 0c                      |                 local.get 12
 0110ad: 21 0f                      |                 local.set 15
 0110af: 0c 04                      |                 br 4
 0110b1: 0b                         |               end
 0110b2: 20 11                      |               local.get 17
 0110b4: 21 0e                      |               local.set 14
 0110b6: 20 0d                      |               local.get 13
 0110b8: 20 11                      |               local.get 17
 0110ba: 47                         |               i32.ne
 0110bb: 0d 00                      |               br_if 0
 0110bd: 0b                         |             end
 0110be: 0b                         |           end
 0110bf: 02 40                      |           block
 0110c1: 02 40                      |             block
 0110c3: 20 0b                      |               local.get 11
 0110c5: 45                         |               i32.eqz
 0110c6: 0d 00                      |               br_if 0
 0110c8: 20 04                      |               local.get 4
 0110ca: 20 03                      |               local.get 3
 0110cc: 47                         |               i32.ne
 0110cd: 0d 01                      |               br_if 1
 0110cf: 20 05                      |               local.get 5
 0110d1: 45                         |               i32.eqz
 0110d2: 0d 00                      |               br_if 0
 0110d4: 20 0b                      |               local.get 11
 0110d6: 20 05                      |               local.get 5
 0110d8: 41 03                      |               i32.const 3
 0110da: 74                         |               i32.shl
 0110db: 41 08                      |               i32.const 8
 0110dd: 10 ca 80 80 80 00          |               call 74 <__rust_dealloc>
 0110e3: 0b                         |             end
 0110e4: 20 00                      |             local.get 0
 0110e6: 20 02                      |             local.get 2
 0110e8: 29 03 00                   |             i64.load 3 0
 0110eb: 37 02 00                   |             i64.store 2 0
 0110ee: 20 00                      |             local.get 0
 0110f0: 41 08                      |             i32.const 8
 0110f2: 6a                         |             i32.add
 0110f3: 20 02                      |             local.get 2
 0110f5: 41 08                      |             i32.const 8
 0110f7: 6a                         |             i32.add
 0110f8: 28 02 00                   |             i32.load 2 0
 0110fb: 36 02 00                   |             i32.store 2 0
 0110fe: 0c 05                      |             br 5
 011100: 0b                         |           end
 011101: 20 04                      |           local.get 4
 011103: 29 03 00                   |           i64.load 3 0
 011106: 21 10                      |           local.set 16
 011108: 41 00                      |           i32.const 0
 01110a: 21 0c                      |           local.set 12
 01110c: 20 04                      |           local.get 4
 01110e: 41 08                      |           i32.const 8
 011110: 6a                         |           i32.add
 011111: 21 04                      |           local.set 4
 011113: 20 11                      |           local.get 17
 011115: 21 0e                      |           local.set 14
 011117: 0b                         |         end
 011118: 02 40                      |         block
 01111a: 20 07                      |           local.get 7
 01111c: 20 02                      |           local.get 2
 01111e: 28 02 04                   |           i32.load 2 4
 011121: 47                         |           i32.ne
 011122: 0d 00                      |           br_if 0
 011124: 20 02                      |           local.get 2
 011126: 20 07                      |           local.get 7
 011128: 20 06                      |           local.get 6
 01112a: 20 0f                      |           local.get 15
 01112c: 6b                         |           i32.sub
 01112d: 41 03                      |           i32.const 3
 01112f: 76                         |           i32.shr_u
 011130: 41 01                      |           i32.const 1
 011132: 6a                         |           i32.add
 011133: 41 01                      |           i32.const 1
 011135: 20 0c                      |           local.get 12
 011137: 1b                         |           select
 011138: 20 03                      |           local.get 3
 01113a: 20 04                      |           local.get 4
 01113c: 6b                         |           i32.sub
 01113d: 41 03                      |           i32.const 3
 01113f: 76                         |           i32.shr_u
 011140: 41 00                      |           i32.const 0
 011142: 20 0b                      |           local.get 11
 011144: 1b                         |           select
 011145: 6a                         |           i32.add
 011146: 10 ed 80 80 80 00          |           call 109 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h0ea8a286bdbb3376E>
 01114c: 20 02                      |           local.get 2
 01114e: 28 02 00                   |           i32.load 2 0
 011151: 21 15                      |           local.set 21
 011153: 0b                         |         end
 011154: 20 15                      |         local.get 21
 011156: 20 07                      |         local.get 7
 011158: 41 03                      |         i32.const 3
 01115a: 74                         |         i32.shl
 01115b: 6a                         |         i32.add
 01115c: 20 10                      |         local.get 16
 01115e: 37 03 00                   |         i64.store 3 0
 011161: 20 02                      |         local.get 2
 011163: 20 07                      |         local.get 7
 011165: 41 01                      |         i32.const 1
 011167: 6a                         |         i32.add
 011168: 22 07                      |         local.tee 7
 01116a: 36 02 08                   |         i32.store 2 8
 01116d: 0c 00                      |         br 0
 01116f: 0b                         |       end
 011170: 0b                         |     end
 011171: 20 11                      |     local.get 17
 011173: 41 08                      |     i32.const 8
 011175: 10 f9 86 80 80 00          |     call 889 <_ZN5alloc5alloc18handle_alloc_error17h4c360394f7373f43E>
 01117b: 00                         |     unreachable
 01117c: 0b                         |   end
 01117d: 10 fa 86 80 80 00          |   call 890 <_ZN5alloc7raw_vec17capacity_overflow17h219802b05667b4c4E>
 011183: 00                         |   unreachable
 011184: 0b                         | end
 011185: 20 02                      | local.get 2
 011187: 41 20                      | i32.const 32
 011189: 6a                         | i32.add
 01118a: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 011190: 0b                         | end
