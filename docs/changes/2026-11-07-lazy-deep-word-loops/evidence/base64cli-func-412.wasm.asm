02b9bb func[412] <_ZN9hashbrown3raw5inner21RawTable$LT$T$C$A$GT$14reserve_rehash17hbcadf4dcd79f2cb9E>:
 02b9bc: 0e 7f                      | local[3..16] type=i32
 02b9be: 01 7e                      | local[17] type=i64
 02b9c0: 03 7f                      | local[18..20] type=i32
 02b9c2: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 02b9c8: 41 20                      | i32.const 32
 02b9ca: 6b                         | i32.sub
 02b9cb: 22 03                      | local.tee 3
 02b9cd: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 02b9d3: 02 40                      | block
 02b9d5: 02 40                      |   block
 02b9d7: 20 00                      |     local.get 0
 02b9d9: 28 02 0c                   |     i32.load 2 12
 02b9dc: 22 04                      |     local.tee 4
 02b9de: 41 01                      |     i32.const 1
 02b9e0: 6a                         |     i32.add
 02b9e1: 22 05                      |     local.tee 5
 02b9e3: 20 04                      |     local.get 4
 02b9e5: 4f                         |     i32.ge_u
 02b9e6: 0d 00                      |     br_if 0
 02b9e8: 20 03                      |     local.get 3
 02b9ea: 41 01                      |     i32.const 1
 02b9ec: 10 83 85 80 80 00          |     call 643 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17h699f9c6420961d96E>
 02b9f2: 20 03                      |     local.get 3
 02b9f4: 28 02 04                   |     i32.load 2 4
 02b9f7: 21 05                      |     local.set 5
 02b9f9: 0c 01                      |     br 1
 02b9fb: 0b                         |   end
 02b9fc: 02 40                      |   block
 02b9fe: 02 40                      |     block
 02ba00: 02 40                      |       block
 02ba02: 20 05                      |         local.get 5
 02ba04: 20 00                      |         local.get 0
 02ba06: 28 02 00                   |         i32.load 2 0
 02ba09: 22 06                      |         local.tee 6
 02ba0b: 20 06                      |         local.get 6
 02ba0d: 41 01                      |         i32.const 1
 02ba0f: 6a                         |         i32.add
 02ba10: 22 07                      |         local.tee 7
 02ba12: 41 03                      |         i32.const 3
 02ba14: 76                         |         i32.shr_u
 02ba15: 41 07                      |         i32.const 7
 02ba17: 6c                         |         i32.mul
 02ba18: 20 06                      |         local.get 6
 02ba1a: 41 08                      |         i32.const 8
 02ba1c: 49                         |         i32.lt_u
 02ba1d: 1b                         |         select
 02ba1e: 22 08                      |         local.tee 8
 02ba20: 41 01                      |         i32.const 1
 02ba22: 76                         |         i32.shr_u
 02ba23: 4d                         |         i32.le_u
 02ba24: 0d 00                      |         br_if 0
 02ba26: 20 05                      |         local.get 5
 02ba28: 20 08                      |         local.get 8
 02ba2a: 41 01                      |         i32.const 1
 02ba2c: 6a                         |         i32.add
 02ba2d: 22 09                      |         local.tee 9
 02ba2f: 20 05                      |         local.get 5
 02ba31: 20 09                      |         local.get 9
 02ba33: 4b                         |         i32.gt_u
 02ba34: 1b                         |         select
 02ba35: 22 05                      |         local.tee 5
 02ba37: 41 08                      |         i32.const 8
 02ba39: 49                         |         i32.lt_u
 02ba3a: 0d 01                      |         br_if 1
 02ba3c: 02 40                      |         block
 02ba3e: 20 05                      |           local.get 5
 02ba40: 41 ff ff ff ff 01          |           i32.const 536870911
 02ba46: 71                         |           i32.and
 02ba47: 20 05                      |           local.get 5
 02ba49: 47                         |           i32.ne
 02ba4a: 0d 00                      |           br_if 0
 02ba4c: 41 7f                      |           i32.const 4294967295
 02ba4e: 20 05                      |           local.get 5
 02ba50: 41 03                      |           i32.const 3
 02ba52: 74                         |           i32.shl
 02ba53: 41 07                      |           i32.const 7
 02ba55: 6e                         |           i32.div_u
 02ba56: 41 7f                      |           i32.const 4294967295
 02ba58: 6a                         |           i32.add
 02ba59: 67                         |           i32.clz
 02ba5a: 76                         |           i32.shr_u
 02ba5b: 41 01                      |           i32.const 1
 02ba5d: 6a                         |           i32.add
 02ba5e: 21 05                      |           local.set 5
 02ba60: 0c 03                      |           br 3
 02ba62: 0b                         |         end
 02ba63: 20 03                      |         local.get 3
 02ba65: 41 18                      |         i32.const 24
 02ba67: 6a                         |         i32.add
 02ba68: 41 01                      |         i32.const 1
 02ba6a: 10 83 85 80 80 00          |         call 643 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17h699f9c6420961d96E>
 02ba70: 20 03                      |         local.get 3
 02ba72: 28 02 1c                   |         i32.load 2 28
 02ba75: 21 05                      |         local.set 5
 02ba77: 0c 03                      |         br 3
 02ba79: 0b                         |       end
 02ba7a: 20 00                      |       local.get 0
 02ba7c: 41 04                      |       i32.const 4
 02ba7e: 6a                         |       i32.add
 02ba7f: 28 02 00                   |       i32.load 2 0
 02ba82: 21 0a                      |       local.set 10
 02ba84: 41 00                      |       i32.const 0
 02ba86: 21 09                      |       local.set 9
 02ba88: 41 00                      |       i32.const 0
 02ba8a: 21 05                      |       local.set 5
 02ba8c: 03 40                      |       loop
 02ba8e: 02 40                      |         block
 02ba90: 02 40                      |           block
 02ba92: 02 40                      |             block
 02ba94: 20 09                      |               local.get 9
 02ba96: 41 01                      |               i32.const 1
 02ba98: 71                         |               i32.and
 02ba99: 0d 00                      |               br_if 0
 02ba9b: 20 05                      |               local.get 5
 02ba9d: 20 07                      |               local.get 7
 02ba9f: 4f                         |               i32.ge_u
 02baa0: 0d 01                      |               br_if 1
 02baa2: 0c 02                      |               br 2
 02baa4: 0b                         |             end
 02baa5: 20 05                      |             local.get 5
 02baa7: 41 03                      |             i32.const 3
 02baa9: 6a                         |             i32.add
 02baaa: 22 09                      |             local.tee 9
 02baac: 20 05                      |             local.get 5
 02baae: 49                         |             i32.lt_u
 02baaf: 0d 00                      |             br_if 0
 02bab1: 20 09                      |             local.get 9
 02bab3: 21 05                      |             local.set 5
 02bab5: 20 09                      |             local.get 9
 02bab7: 20 07                      |             local.get 7
 02bab9: 49                         |             i32.lt_u
 02baba: 0d 01                      |             br_if 1
 02babc: 0b                         |           end
 02babd: 02 40                      |           block
 02babf: 02 40                      |             block
 02bac1: 02 40                      |               block
 02bac3: 20 07                      |                 local.get 7
 02bac5: 41 04                      |                 i32.const 4
 02bac7: 49                         |                 i32.lt_u
 02bac8: 0d 00                      |                 br_if 0
 02baca: 20 0a                      |                 local.get 10
 02bacc: 20 07                      |                 local.get 7
 02bace: 6a                         |                 i32.add
 02bacf: 20 0a                      |                 local.get 10
 02bad1: 28 00 00                   |                 i32.load 0 0
 02bad4: 36 00 00                   |                 i32.store 0 0
 02bad7: 0c 01                      |                 br 1
 02bad9: 0b                         |               end
 02bada: 20 0a                      |               local.get 10
 02badc: 41 04                      |               i32.const 4
 02bade: 6a                         |               i32.add
 02badf: 20 0a                      |               local.get 10
 02bae1: 20 07                      |               local.get 7
 02bae3: 10 de 86 80 80 00          |               call 862 <memmove>
 02bae9: 1a                         |               drop
 02baea: 20 07                      |               local.get 7
 02baec: 45                         |               i32.eqz
 02baed: 0d 01                      |               br_if 1
 02baef: 0b                         |             end
 02baf0: 20 0a                      |             local.get 10
 02baf2: 41 7c                      |             i32.const 4294967292
 02baf4: 6a                         |             i32.add
 02baf5: 21 0b                      |             local.set 11
 02baf7: 41 00                      |             i32.const 0
 02baf9: 21 05                      |             local.set 5
 02bafb: 03 40                      |             loop
 02bafd: 02 40                      |               block
 02baff: 20 0a                      |                 local.get 10
 02bb01: 20 05                      |                 local.get 5
 02bb03: 22 0c                      |                 local.tee 12
 02bb05: 6a                         |                 i32.add
 02bb06: 22 0d                      |                 local.tee 13
 02bb08: 2d 00 00                   |                 i32.load8_u 0 0
 02bb0b: 41 80 01                   |                 i32.const 128
 02bb0e: 47                         |                 i32.ne
 02bb0f: 0d 00                      |                 br_if 0
 02bb11: 02 40                      |                 block
 02bb13: 02 40                      |                   block
 02bb15: 02 40                      |                     block
 02bb17: 20 0b                      |                       local.get 11
 02bb19: 20 0c                      |                       local.get 12
 02bb1b: 41 02                      |                       i32.const 2
 02bb1d: 74                         |                       i32.shl
 02bb1e: 6b                         |                       i32.sub
 02bb1f: 22 0e                      |                       local.tee 14
 02bb21: 28 02 00                   |                       i32.load 2 0
 02bb24: 22 05                      |                       local.tee 5
 02bb26: 20 02                      |                       local.get 2
 02bb28: 4f                         |                       i32.ge_u
 02bb29: 0d 00                      |                       br_if 0
 02bb2b: 03 40                      |                       loop
 02bb2d: 20 01                      |                         local.get 1
 02bb2f: 20 05                      |                         local.get 5
 02bb31: 41 d0 00                   |                         i32.const 80
 02bb34: 6c                         |                         i32.mul
 02bb35: 6a                         |                         i32.add
 02bb36: 28 02 48                   |                         i32.load 2 72
 02bb39: 22 0f                      |                         local.tee 15
 02bb3b: 20 06                      |                         local.get 6
 02bb3d: 71                         |                         i32.and
 02bb3e: 22 10                      |                         local.tee 16
 02bb40: 21 09                      |                         local.set 9
 02bb42: 02 40                      |                         block
 02bb44: 20 0a                      |                           local.get 10
 02bb46: 20 10                      |                           local.get 16
 02bb48: 6a                         |                           i32.add
 02bb49: 28 00 00                   |                           i32.load 0 0
 02bb4c: 41 80 81 82 84 78          |                           i32.const 2155905152
 02bb52: 71                         |                           i32.and
 02bb53: 22 07                      |                           local.tee 7
 02bb55: 0d 00                      |                           br_if 0
 02bb57: 41 04                      |                           i32.const 4
 02bb59: 21 05                      |                           local.set 5
 02bb5b: 20 10                      |                           local.get 16
 02bb5d: 21 09                      |                           local.set 9
 02bb5f: 03 40                      |                           loop
 02bb61: 20 09                      |                             local.get 9
 02bb63: 20 05                      |                             local.get 5
 02bb65: 6a                         |                             i32.add
 02bb66: 21 09                      |                             local.set 9
 02bb68: 20 05                      |                             local.get 5
 02bb6a: 41 04                      |                             i32.const 4
 02bb6c: 6a                         |                             i32.add
 02bb6d: 21 05                      |                             local.set 5
 02bb6f: 20 0a                      |                             local.get 10
 02bb71: 20 09                      |                             local.get 9
 02bb73: 20 06                      |                             local.get 6
 02bb75: 71                         |                             i32.and
 02bb76: 22 09                      |                             local.tee 9
 02bb78: 6a                         |                             i32.add
 02bb79: 28 00 00                   |                             i32.load 0 0
 02bb7c: 41 80 81 82 84 78          |                             i32.const 2155905152
 02bb82: 71                         |                             i32.and
 02bb83: 22 07                      |                             local.tee 7
 02bb85: 45                         |                             i32.eqz
 02bb86: 0d 00                      |                             br_if 0
 02bb88: 0b                         |                           end
 02bb89: 0b                         |                         end
 02bb8a: 02 40                      |                         block
 02bb8c: 20 0a                      |                           local.get 10
 02bb8e: 20 07                      |                           local.get 7
 02bb90: 68                         |                           i32.ctz
 02bb91: 41 03                      |                           i32.const 3
 02bb93: 76                         |                           i32.shr_u
 02bb94: 20 09                      |                           local.get 9
 02bb96: 6a                         |                           i32.add
 02bb97: 20 06                      |                           local.get 6
 02bb99: 71                         |                           i32.and
 02bb9a: 22 05                      |                           local.tee 5
 02bb9c: 6a                         |                           i32.add
 02bb9d: 2c 00 00                   |                           i32.load8_s 0 0
 02bba0: 41 7f                      |                           i32.const 4294967295
 02bba2: 4c                         |                           i32.le_s
 02bba3: 0d 00                      |                           br_if 0
 02bba5: 20 0a                      |                           local.get 10
 02bba7: 28 02 00                   |                           i32.load 2 0
 02bbaa: 41 80 81 82 84 78          |                           i32.const 2155905152
 02bbb0: 71                         |                           i32.and
 02bbb1: 68                         |                           i32.ctz
 02bbb2: 41 03                      |                           i32.const 3
 02bbb4: 76                         |                           i32.shr_u
 02bbb5: 21 05                      |                           local.set 5
 02bbb7: 0b                         |                         end
 02bbb8: 20 05                      |                         local.get 5
 02bbba: 20 10                      |                         local.get 16
 02bbbc: 6b                         |                         i32.sub
 02bbbd: 20 0c                      |                         local.get 12
 02bbbf: 20 10                      |                         local.get 16
 02bbc1: 6b                         |                         i32.sub
 02bbc2: 73                         |                         i32.xor
 02bbc3: 20 06                      |                         local.get 6
 02bbc5: 71                         |                         i32.and
 02bbc6: 41 04                      |                         i32.const 4
 02bbc8: 49                         |                         i32.lt_u
 02bbc9: 0d 03                      |                         br_if 3
 02bbcb: 20 0a                      |                         local.get 10
 02bbcd: 20 05                      |                         local.get 5
 02bbcf: 6a                         |                         i32.add
 02bbd0: 22 09                      |                         local.tee 9
 02bbd2: 2d 00 00                   |                         i32.load8_u 0 0
 02bbd5: 21 07                      |                         local.set 7
 02bbd7: 20 09                      |                         local.get 9
 02bbd9: 20 0f                      |                         local.get 15
 02bbdb: 41 19                      |                         i32.const 25
 02bbdd: 76                         |                         i32.shr_u
 02bbde: 22 10                      |                         local.tee 16
 02bbe0: 3a 00 00                   |                         i32.store8 0 0
 02bbe3: 20 05                      |                         local.get 5
 02bbe5: 41 7c                      |                         i32.const 4294967292
 02bbe7: 6a                         |                         i32.add
 02bbe8: 20 06                      |                         local.get 6
 02bbea: 71                         |                         i32.and
 02bbeb: 20 0a                      |                         local.get 10
 02bbed: 6a                         |                         i32.add
 02bbee: 41 04                      |                         i32.const 4
 02bbf0: 6a                         |                         i32.add
 02bbf1: 20 10                      |                         local.get 16
 02bbf3: 3a 00 00                   |                         i32.store8 0 0
 02bbf6: 20 07                      |                         local.get 7
 02bbf8: 41 ff 01                   |                         i32.const 255
 02bbfb: 46                         |                         i32.eq
 02bbfc: 0d 02                      |                         br_if 2
 02bbfe: 20 0b                      |                         local.get 11
 02bc00: 20 05                      |                         local.get 5
 02bc02: 41 02                      |                         i32.const 2
 02bc04: 74                         |                         i32.shl
 02bc05: 6b                         |                         i32.sub
 02bc06: 22 09                      |                         local.tee 9
 02bc08: 28 02 00                   |                         i32.load 2 0
 02bc0b: 21 05                      |                         local.set 5
 02bc0d: 20 09                      |                         local.get 9
 02bc0f: 20 0e                      |                         local.get 14
 02bc11: 28 02 00                   |                         i32.load 2 0
 02bc14: 36 02 00                   |                         i32.store 2 0
 02bc17: 20 0e                      |                         local.get 14
 02bc19: 20 05                      |                         local.get 5
 02bc1b: 36 02 00                   |                         i32.store 2 0
 02bc1e: 20 05                      |                         local.get 5
 02bc20: 20 02                      |                         local.get 2
 02bc22: 49                         |                         i32.lt_u
 02bc23: 0d 00                      |                         br_if 0
 02bc25: 0b                         |                       end
 02bc26: 0b                         |                     end
 02bc27: 20 05                      |                     local.get 5
 02bc29: 20 02                      |                     local.get 2
 02bc2b: 41 ac d9 c0 80 00          |                     i32.const 1060012
 02bc31: 10 99 87 80 80 00          |                     call 921 <_ZN4core9panicking18panic_bounds_check17h12b713485dcf6439E>
 02bc37: 00                         |                     unreachable
 02bc38: 0b                         |                   end
 02bc39: 20 0d                      |                   local.get 13
 02bc3b: 41 ff 01                   |                   i32.const 255
 02bc3e: 3a 00 00                   |                   i32.store8 0 0
 02bc41: 20 0c                      |                   local.get 12
 02bc43: 41 7c                      |                   i32.const 4294967292
 02bc45: 6a                         |                   i32.add
 02bc46: 20 06                      |                   local.get 6
 02bc48: 71                         |                   i32.and
 02bc49: 20 0a                      |                   local.get 10
 02bc4b: 6a                         |                   i32.add
 02bc4c: 41 04                      |                   i32.const 4
 02bc4e: 6a                         |                   i32.add
 02bc4f: 41 ff 01                   |                   i32.const 255
 02bc52: 3a 00 00                   |                   i32.store8 0 0
 02bc55: 20 0b                      |                   local.get 11
 02bc57: 20 05                      |                   local.get 5
 02bc59: 41 02                      |                   i32.const 2
 02bc5b: 74                         |                   i32.shl
 02bc5c: 6b                         |                   i32.sub
 02bc5d: 20 0e                      |                   local.get 14
 02bc5f: 28 02 00                   |                   i32.load 2 0
 02bc62: 36 02 00                   |                   i32.store 2 0
 02bc65: 0c 01                      |                   br 1
 02bc67: 0b                         |                 end
 02bc68: 20 0d                      |                 local.get 13
 02bc6a: 20 0f                      |                 local.get 15
 02bc6c: 41 19                      |                 i32.const 25
 02bc6e: 76                         |                 i32.shr_u
 02bc6f: 22 05                      |                 local.tee 5
 02bc71: 3a 00 00                   |                 i32.store8 0 0
 02bc74: 20 0c                      |                 local.get 12
 02bc76: 41 7c                      |                 i32.const 4294967292
 02bc78: 6a                         |                 i32.add
 02bc79: 20 06                      |                 local.get 6
 02bc7b: 71                         |                 i32.and
 02bc7c: 20 0a                      |                 local.get 10
 02bc7e: 6a                         |                 i32.add
 02bc7f: 41 04                      |                 i32.const 4
 02bc81: 6a                         |                 i32.add
 02bc82: 20 05                      |                 local.get 5
 02bc84: 3a 00 00                   |                 i32.store8 0 0
 02bc87: 0b                         |               end
 02bc88: 20 0c                      |               local.get 12
 02bc8a: 41 01                      |               i32.const 1
 02bc8c: 6a                         |               i32.add
 02bc8d: 21 05                      |               local.set 5
 02bc8f: 20 0c                      |               local.get 12
 02bc91: 20 06                      |               local.get 6
 02bc93: 47                         |               i32.ne
 02bc94: 0d 00                      |               br_if 0
 02bc96: 0b                         |             end
 02bc97: 0b                         |           end
 02bc98: 20 00                      |           local.get 0
 02bc9a: 20 08                      |           local.get 8
 02bc9c: 20 04                      |           local.get 4
 02bc9e: 6b                         |           i32.sub
 02bc9f: 36 02 08                   |           i32.store 2 8
 02bca2: 41 81 80 80 80 78          |           i32.const 2147483649
 02bca8: 21 05                      |           local.set 5
 02bcaa: 0c 04                      |           br 4
 02bcac: 0b                         |         end
 02bcad: 20 0a                      |         local.get 10
 02bcaf: 20 05                      |         local.get 5
 02bcb1: 6a                         |         i32.add
 02bcb2: 22 09                      |         local.tee 9
 02bcb4: 20 09                      |         local.get 9
 02bcb6: 28 02 00                   |         i32.load 2 0
 02bcb9: 22 09                      |         local.tee 9
 02bcbb: 41 07                      |         i32.const 7
 02bcbd: 76                         |         i32.shr_u
 02bcbe: 41 7f                      |         i32.const 4294967295
 02bcc0: 73                         |         i32.xor
 02bcc1: 41 81 82 84 08             |         i32.const 16843009
 02bcc6: 71                         |         i32.and
 02bcc7: 20 09                      |         local.get 9
 02bcc9: 41 ff fe fd fb 07          |         i32.const 2139062143
 02bccf: 72                         |         i32.or
 02bcd0: 6a                         |         i32.add
 02bcd1: 36 02 00                   |         i32.store 2 0
 02bcd4: 41 01                      |         i32.const 1
 02bcd6: 21 09                      |         local.set 9
 02bcd8: 20 05                      |         local.get 5
 02bcda: 41 01                      |         i32.const 1
 02bcdc: 6a                         |         i32.add
 02bcdd: 21 05                      |         local.set 5
 02bcdf: 0c 00                      |         br 0
 02bce1: 0b                         |       end
 02bce2: 0b                         |     end
 02bce3: 41 04                      |     i32.const 4
 02bce5: 41 08                      |     i32.const 8
 02bce7: 20 05                      |     local.get 5
 02bce9: 41 04                      |     i32.const 4
 02bceb: 49                         |     i32.lt_u
 02bcec: 1b                         |     select
 02bced: 21 05                      |     local.set 5
 02bcef: 0b                         |   end
 02bcf0: 02 40                      |   block
 02bcf2: 20 05                      |     local.get 5
 02bcf4: 41 ff ff ff ff 03          |     i32.const 1073741823
 02bcfa: 71                         |     i32.and
 02bcfb: 20 05                      |     local.get 5
 02bcfd: 47                         |     i32.ne
 02bcfe: 0d 00                      |     br_if 0
 02bd00: 20 05                      |     local.get 5
 02bd02: 41 02                      |     i32.const 2
 02bd04: 74                         |     i32.shl
 02bd05: 22 09                      |     local.tee 9
 02bd07: 20 05                      |     local.get 5
 02bd09: 41 04                      |     i32.const 4
 02bd0b: 6a                         |     i32.add
 02bd0c: 22 10                      |     local.tee 16
 02bd0e: 6a                         |     i32.add
 02bd0f: 22 0a                      |     local.tee 10
 02bd11: 20 09                      |     local.get 9
 02bd13: 49                         |     i32.lt_u
 02bd14: 0d 00                      |     br_if 0
 02bd16: 02 40                      |     block
 02bd18: 20 0a                      |       local.get 10
 02bd1a: 41 04                      |       i32.const 4
 02bd1c: 10 c9 80 80 80 00          |       call 73 <__rust_alloc>
 02bd22: 22 0f                      |       local.tee 15
 02bd24: 0d 00                      |       br_if 0
 02bd26: 20 03                      |       local.get 3
 02bd28: 41 10                      |       i32.const 16
 02bd2a: 6a                         |       i32.add
 02bd2b: 41 01                      |       i32.const 1
 02bd2d: 20 0a                      |       local.get 10
 02bd2f: 41 04                      |       i32.const 4
 02bd31: 10 84 85 80 80 00          |       call 644 <_ZN9hashbrown3raw5inner11Fallibility9alloc_err17h461220be560825daE>
 02bd37: 20 03                      |       local.get 3
 02bd39: 28 02 14                   |       i32.load 2 20
 02bd3c: 21 05                      |       local.set 5
 02bd3e: 0c 02                      |       br 2
 02bd40: 0b                         |     end
 02bd41: 20 04                      |     local.get 4
 02bd43: ad                         |     i64.extend_i32_u
 02bd44: 42 20                      |     i64.const 32
 02bd46: 86                         |     i64.shl
 02bd47: 20 05                      |     local.get 5
 02bd49: 41 7f                      |     i32.const 4294967295
 02bd4b: 6a                         |     i32.add
 02bd4c: 22 0e                      |     local.tee 14
 02bd4e: 20 05                      |     local.get 5
 02bd50: 41 03                      |     i32.const 3
 02bd52: 76                         |     i32.shr_u
 02bd53: 41 07                      |     i32.const 7
 02bd55: 6c                         |     i32.mul
 02bd56: 20 0e                      |     local.get 14
 02bd58: 41 08                      |     i32.const 8
 02bd5a: 49                         |     i32.lt_u
 02bd5b: 1b                         |     select
 02bd5c: 20 04                      |     local.get 4
 02bd5e: 6b                         |     i32.sub
 02bd5f: ad                         |     i64.extend_i32_u
 02bd60: 84                         |     i64.or
 02bd61: 21 11                      |     local.set 17
 02bd63: 20 0f                      |     local.get 15
 02bd65: 20 09                      |     local.get 9
 02bd67: 6a                         |     i32.add
 02bd68: 41 ff 01                   |     i32.const 255
 02bd6b: 20 10                      |     local.get 16
 02bd6d: 10 e3 86 80 80 00          |     call 867 <memset>
 02bd73: 22 10                      |     local.tee 16
 02bd75: 41 7c                      |     i32.const 4294967292
 02bd77: 6a                         |     i32.add
 02bd78: 21 12                      |     local.set 18
 02bd7a: 20 00                      |     local.get 0
 02bd7c: 41 04                      |     i32.const 4
 02bd7e: 6a                         |     i32.add
 02bd7f: 28 02 00                   |     i32.load 2 0
 02bd82: 22 13                      |     local.tee 19
 02bd84: 41 04                      |     i32.const 4
 02bd86: 6a                         |     i32.add
 02bd87: 21 09                      |     local.set 9
 02bd89: 20 13                      |     local.get 19
 02bd8b: 20 07                      |     local.get 7
 02bd8d: 6a                         |     i32.add
 02bd8e: 21 0b                      |     local.set 11
 02bd90: 20 13                      |     local.get 19
 02bd92: 28 02 00                   |     i32.load 2 0
 02bd95: 41 7f                      |     i32.const 4294967295
 02bd97: 73                         |     i32.xor
 02bd98: 41 80 81 82 84 78          |     i32.const 2155905152
 02bd9e: 71                         |     i32.and
 02bd9f: 21 0d                      |     local.set 13
 02bda1: 20 13                      |     local.get 19
 02bda3: 21 0f                      |     local.set 15
 02bda5: 03 40                      |     loop
 02bda7: 02 40                      |       block
 02bda9: 02 40                      |         block
 02bdab: 02 40                      |           block
 02bdad: 20 0d                      |             local.get 13
 02bdaf: 0d 00                      |             br_if 0
 02bdb1: 03 40                      |             loop
 02bdb3: 20 09                      |               local.get 9
 02bdb5: 20 0b                      |               local.get 11
 02bdb7: 4f                         |               i32.ge_u
 02bdb8: 0d 02                      |               br_if 2
 02bdba: 20 0f                      |               local.get 15
 02bdbc: 41 70                      |               i32.const 4294967280
 02bdbe: 6a                         |               i32.add
 02bdbf: 21 0f                      |               local.set 15
 02bdc1: 20 09                      |               local.get 9
 02bdc3: 28 02 00                   |               i32.load 2 0
 02bdc6: 21 05                      |               local.set 5
 02bdc8: 20 09                      |               local.get 9
 02bdca: 41 04                      |               i32.const 4
 02bdcc: 6a                         |               i32.add
 02bdcd: 22 0a                      |               local.tee 10
 02bdcf: 21 09                      |               local.set 9
 02bdd1: 20 05                      |               local.get 5
 02bdd3: 41 80 81 82 84 78          |               i32.const 2155905152
 02bdd9: 71                         |               i32.and
 02bdda: 22 05                      |               local.tee 5
 02bddc: 41 80 81 82 84 78          |               i32.const 2155905152
 02bde2: 46                         |               i32.eq
 02bde3: 0d 00                      |               br_if 0
 02bde5: 0b                         |             end
 02bde6: 20 05                      |             local.get 5
 02bde8: 41 80 81 82 84 78          |             i32.const 2155905152
 02bdee: 73                         |             i32.xor
 02bdef: 21 0d                      |             local.set 13
 02bdf1: 20 0a                      |             local.get 10
 02bdf3: 21 09                      |             local.set 9
 02bdf5: 0b                         |           end
 02bdf6: 20 0f                      |           local.get 15
 02bdf8: 20 0d                      |           local.get 13
 02bdfa: 68                         |           i32.ctz
 02bdfb: 41 01                      |           i32.const 1
 02bdfd: 76                         |           i32.shr_u
 02bdfe: 41 1c                      |           i32.const 28
 02be00: 71                         |           i32.and
 02be01: 6b                         |           i32.sub
 02be02: 41 7c                      |           i32.const 4294967292
 02be04: 6a                         |           i32.add
 02be05: 22 04                      |           local.tee 4
 02be07: 28 02 00                   |           i32.load 2 0
 02be0a: 22 05                      |           local.tee 5
 02be0c: 20 02                      |           local.get 2
 02be0e: 49                         |           i32.lt_u
 02be0f: 0d 01                      |           br_if 1
 02be11: 20 05                      |           local.get 5
 02be13: 20 02                      |           local.get 2
 02be15: 41 ac d9 c0 80 00          |           i32.const 1060012
 02be1b: 10 99 87 80 80 00          |           call 921 <_ZN4core9panicking18panic_bounds_check17h12b713485dcf6439E>
 02be21: 00                         |           unreachable
 02be22: 0b                         |         end
 02be23: 20 00                      |         local.get 0
 02be25: 20 11                      |         local.get 17
 02be27: 37 02 08                   |         i64.store 2 8
 02be2a: 20 00                      |         local.get 0
 02be2c: 20 0e                      |         local.get 14
 02be2e: 36 02 00                   |         i32.store 2 0
 02be31: 20 00                      |         local.get 0
 02be33: 41 04                      |         i32.const 4
 02be35: 6a                         |         i32.add
 02be36: 20 10                      |         local.get 16
 02be38: 36 02 00                   |         i32.store 2 0
 02be3b: 41 81 80 80 80 78          |         i32.const 2147483649
 02be41: 21 05                      |         local.set 5
 02be43: 20 06                      |         local.get 6
 02be45: 45                         |         i32.eqz
 02be46: 0d 03                      |         br_if 3
 02be48: 20 13                      |         local.get 19
 02be4a: 20 07                      |         local.get 7
 02be4c: 41 02                      |         i32.const 2
 02be4e: 74                         |         i32.shl
 02be4f: 22 09                      |         local.tee 9
 02be51: 6b                         |         i32.sub
 02be52: 20 06                      |         local.get 6
 02be54: 20 09                      |         local.get 9
 02be56: 6a                         |         i32.add
 02be57: 41 05                      |         i32.const 5
 02be59: 6a                         |         i32.add
 02be5a: 41 04                      |         i32.const 4
 02be5c: 10 ca 80 80 80 00          |         call 74 <__rust_dealloc>
 02be62: 0c 03                      |         br 3
 02be64: 0b                         |       end
 02be65: 02 40                      |       block
 02be67: 20 10                      |         local.get 16
 02be69: 20 01                      |         local.get 1
 02be6b: 20 05                      |         local.get 5
 02be6d: 41 d0 00                   |         i32.const 80
 02be70: 6c                         |         i32.mul
 02be71: 6a                         |         i32.add
 02be72: 28 02 48                   |         i32.load 2 72
 02be75: 22 08                      |         local.tee 8
 02be77: 20 0e                      |         local.get 14
 02be79: 71                         |         i32.and
 02be7a: 22 0a                      |         local.tee 10
 02be7c: 6a                         |         i32.add
 02be7d: 28 00 00                   |         i32.load 0 0
 02be80: 41 80 81 82 84 78          |         i32.const 2155905152
 02be86: 71                         |         i32.and
 02be87: 22 0c                      |         local.tee 12
 02be89: 0d 00                      |         br_if 0
 02be8b: 41 04                      |         i32.const 4
 02be8d: 21 05                      |         local.set 5
 02be8f: 03 40                      |         loop
 02be91: 20 0a                      |           local.get 10
 02be93: 20 05                      |           local.get 5
 02be95: 6a                         |           i32.add
 02be96: 21 0a                      |           local.set 10
 02be98: 20 05                      |           local.get 5
 02be9a: 41 04                      |           i32.const 4
 02be9c: 6a                         |           i32.add
 02be9d: 21 05                      |           local.set 5
 02be9f: 20 10                      |           local.get 16
 02bea1: 20 0a                      |           local.get 10
 02bea3: 20 0e                      |           local.get 14
 02bea5: 71                         |           i32.and
 02bea6: 22 0a                      |           local.tee 10
 02bea8: 6a                         |           i32.add
 02bea9: 28 00 00                   |           i32.load 0 0
 02beac: 41 80 81 82 84 78          |           i32.const 2155905152
 02beb2: 71                         |           i32.and
 02beb3: 22 0c                      |           local.tee 12
 02beb5: 45                         |           i32.eqz
 02beb6: 0d 00                      |           br_if 0
 02beb8: 0b                         |         end
 02beb9: 0b                         |       end
 02beba: 20 0d                      |       local.get 13
 02bebc: 41 7f                      |       i32.const 4294967295
 02bebe: 6a                         |       i32.add
 02bebf: 21 14                      |       local.set 20
 02bec1: 02 40                      |       block
 02bec3: 20 10                      |         local.get 16
 02bec5: 20 0c                      |         local.get 12
 02bec7: 68                         |         i32.ctz
 02bec8: 41 03                      |         i32.const 3
 02beca: 76                         |         i32.shr_u
 02becb: 20 0a                      |         local.get 10
 02becd: 6a                         |         i32.add
 02bece: 20 0e                      |         local.get 14
 02bed0: 71                         |         i32.and
 02bed1: 22 05                      |         local.tee 5
 02bed3: 6a                         |         i32.add
 02bed4: 2c 00 00                   |         i32.load8_s 0 0
 02bed7: 41 7f                      |         i32.const 4294967295
 02bed9: 4c                         |         i32.le_s
 02beda: 0d 00                      |         br_if 0
 02bedc: 20 10                      |         local.get 16
 02bede: 28 02 00                   |         i32.load 2 0
 02bee1: 41 80 81 82 84 78          |         i32.const 2155905152
 02bee7: 71                         |         i32.and
 02bee8: 68                         |         i32.ctz
 02bee9: 41 03                      |         i32.const 3
 02beeb: 76                         |         i32.shr_u
 02beec: 21 05                      |         local.set 5
 02beee: 0b                         |       end
 02beef: 20 14                      |       local.get 20
 02bef1: 20 0d                      |       local.get 13
 02bef3: 71                         |       i32.and
 02bef4: 21 0d                      |       local.set 13
 02bef6: 20 10                      |       local.get 16
 02bef8: 20 05                      |       local.get 5
 02befa: 6a                         |       i32.add
 02befb: 20 08                      |       local.get 8
 02befd: 41 19                      |       i32.const 25
 02beff: 76                         |       i32.shr_u
 02bf00: 22 0a                      |       local.tee 10
 02bf02: 3a 00 00                   |       i32.store8 0 0
 02bf05: 20 05                      |       local.get 5
 02bf07: 41 7c                      |       i32.const 4294967292
 02bf09: 6a                         |       i32.add
 02bf0a: 20 0e                      |       local.get 14
 02bf0c: 71                         |       i32.and
 02bf0d: 20 10                      |       local.get 16
 02bf0f: 6a                         |       i32.add
 02bf10: 41 04                      |       i32.const 4
 02bf12: 6a                         |       i32.add
 02bf13: 20 0a                      |       local.get 10
 02bf15: 3a 00 00                   |       i32.store8 0 0
 02bf18: 20 12                      |       local.get 18
 02bf1a: 20 05                      |       local.get 5
 02bf1c: 41 02                      |       i32.const 2
 02bf1e: 74                         |       i32.shl
 02bf1f: 6b                         |       i32.sub
 02bf20: 20 04                      |       local.get 4
 02bf22: 28 02 00                   |       i32.load 2 0
 02bf25: 36 02 00                   |       i32.store 2 0
 02bf28: 0c 00                      |       br 0
 02bf2a: 0b                         |     end
 02bf2b: 0b                         |   end
 02bf2c: 20 03                      |   local.get 3
 02bf2e: 41 08                      |   i32.const 8
 02bf30: 6a                         |   i32.add
 02bf31: 41 01                      |   i32.const 1
 02bf33: 10 83 85 80 80 00          |   call 643 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17h699f9c6420961d96E>
 02bf39: 20 03                      |   local.get 3
 02bf3b: 28 02 0c                   |   i32.load 2 12
 02bf3e: 21 05                      |   local.set 5
 02bf40: 0b                         | end
 02bf41: 20 03                      | local.get 3
 02bf43: 41 20                      | i32.const 32
 02bf45: 6a                         | i32.add
 02bf46: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 02bf4c: 20 05                      | local.get 5
 02bf4e: 0b                         | end
