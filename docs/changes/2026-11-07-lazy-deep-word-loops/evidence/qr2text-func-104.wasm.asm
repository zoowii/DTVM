00bf7c func[104] <_ZN6qrcode6canvas6Canvas14draw_codewords17h9f3dc1e3c9a1aa07E.llvm.17894972068481763253>:
 00bf7d: 0d 7f                      | local[5..17] type=i32
 00bf7f: 02 40                      | block
 00bf81: 20 02                      |   local.get 2
 00bf83: 45                         |   i32.eqz
 00bf84: 0d 00                      |   br_if 0
 00bf86: 20 01                      |   local.get 1
 00bf88: 20 02                      |   local.get 2
 00bf8a: 6a                         |   i32.add
 00bf8b: 21 05                      |   local.set 5
 00bf8d: 20 02                      |   local.get 2
 00bf8f: 20 03                      |   local.get 3
 00bf91: 6b                         |   i32.sub
 00bf92: 21 06                      |   local.set 6
 00bf94: 20 00                      |   local.get 0
 00bf96: 41 0c                      |   i32.const 12
 00bf98: 6a                         |   i32.add
 00bf99: 21 07                      |   local.set 7
 00bf9b: 41 00                      |   i32.const 0
 00bf9d: 21 08                      |   local.set 8
 00bf9f: 03 40                      |   loop
 00bfa1: 02 40                      |     block
 00bfa3: 20 08                      |       local.get 8
 00bfa5: 20 06                      |       local.get 6
 00bfa7: 46                         |       i32.eq
 00bfa8: 41 02                      |       i32.const 2
 00bfaa: 74                         |       i32.shl
 00bfab: 22 09                      |       local.tee 9
 00bfad: 41 07                      |       i32.const 7
 00bfaf: 4a                         |       i32.gt_s
 00bfb0: 0d 00                      |       br_if 0
 00bfb2: 41 08                      |       i32.const 8
 00bfb4: 21 0a                      |       local.set 10
 00bfb6: 03 40                      |       loop
 00bfb8: 20 04                      |         local.get 4
 00bfba: 2e 01 06                   |         i32.load16_s 1 6
 00bfbd: 22 0b                      |         local.tee 11
 00bfbf: 41 01                      |         i32.const 1
 00bfc1: 6a                         |         i32.add
 00bfc2: 21 0c                      |         local.set 12
 00bfc4: 20 0a                      |         local.get 10
 00bfc6: 41 7f                      |         i32.const 4294967295
 00bfc8: 6a                         |         i32.add
 00bfc9: 22 02                      |         local.tee 2
 00bfcb: 41 10                      |         i32.const 16
 00bfcd: 74                         |         i32.shl
 00bfce: 41 10                      |         i32.const 16
 00bfd0: 75                         |         i32.shr_s
 00bfd1: 21 0a                      |         local.set 10
 00bfd3: 41 01                      |         i32.const 1
 00bfd5: 20 02                      |         local.get 2
 00bfd7: 41 07                      |         i32.const 7
 00bfd9: 71                         |         i32.and
 00bfda: 74                         |         i32.shl
 00bfdb: 20 01                      |         local.get 1
 00bfdd: 2d 00 00                   |         i32.load8_u 0 0
 00bfe0: 71                         |         i32.and
 00bfe1: 41 00                      |         i32.const 0
 00bfe3: 47                         |         i32.ne
 00bfe4: 21 0d                      |         local.set 13
 00bfe6: 20 04                      |         local.get 4
 00bfe8: 2f 01 00                   |         i32.load16_u 1 0
 00bfeb: 21 02                      |         local.set 2
 00bfed: 02 40                      |         block
 00bfef: 03 40                      |           loop
 00bff1: 20 02                      |             local.get 2
 00bff3: 20 02                      |             local.get 2
 00bff5: 41 01                      |             i32.const 1
 00bff7: 6a                         |             i32.add
 00bff8: 22 0e                      |             local.tee 14
 00bffa: 20 02                      |             local.get 2
 00bffc: 41 10                      |             i32.const 16
 00bffe: 74                         |             i32.shl
 00bfff: 41 10                      |             i32.const 16
 00c001: 75                         |             i32.shr_s
 00c002: 22 0f                      |             local.tee 15
 00c004: 20 0b                      |             local.get 11
 00c006: 4a                         |             i32.gt_s
 00c007: 1b                         |             select
 00c008: 41 10                      |             i32.const 16
 00c00a: 74                         |             i32.shl
 00c00b: 41 10                      |             i32.const 16
 00c00d: 75                         |             i32.shr_s
 00c00e: 22 10                      |             local.tee 16
 00c010: 41 01                      |             i32.const 1
 00c012: 48                         |             i32.lt_s
 00c013: 0d 05                      |             br_if 5
 00c015: 20 04                      |             local.get 4
 00c017: 2e 01 02                   |             i32.load16_s 1 2
 00c01a: 21 03                      |             local.set 3
 00c01c: 02 40                      |             block
 00c01e: 02 40                      |               block
 00c020: 20 04                      |                 local.get 4
 00c022: 2f 01 04                   |                 i32.load16_u 1 4
 00c025: 22 11                      |                 local.tee 17
 00c027: 20 10                      |                 local.get 16
 00c029: 6b                         |                 i32.sub
 00c02a: 41 10                      |                 i32.const 16
 00c02c: 74                         |                 i32.shl
 00c02d: 41 10                      |                 i32.const 16
 00c02f: 75                         |                 i32.shr_s
 00c030: 41 04                      |                 i32.const 4
 00c032: 6f                         |                 i32.rem_s
 00c033: 41 ff ff 03                |                 i32.const 65535
 00c037: 71                         |                 i32.and
 00c038: 22 10                      |                 local.tee 16
 00c03a: 41 02                      |                 i32.const 2
 00c03c: 4b                         |                 i32.gt_u
 00c03d: 0d 00                      |                 br_if 0
 00c03f: 02 40                      |                 block
 00c041: 02 40                      |                   block
 00c043: 02 40                      |                     block
 00c045: 20 10                      |                       local.get 16
 00c047: 0e 03 01 03 00 01          |                       br_table 1 3 0 1
 00c04d: 0b                         |                     end
 00c04e: 02 40                      |                     block
 00c050: 20 03                      |                       local.get 3
 00c052: 41 01                      |                       i32.const 1
 00c054: 48                         |                       i32.lt_s
 00c055: 0d 00                      |                       br_if 0
 00c057: 20 04                      |                       local.get 4
 00c059: 20 03                      |                       local.get 3
 00c05b: 41 7f                      |                       i32.const 4294967295
 00c05d: 6a                         |                       i32.add
 00c05e: 3b 01 02                   |                       i32.store16 1 2
 00c061: 0c 04                      |                       br 4
 00c063: 0b                         |                     end
 00c064: 20 02                      |                     local.get 2
 00c066: 41 ff ff 03                |                     i32.const 65535
 00c06a: 71                         |                     i32.and
 00c06b: 20 0c                      |                     local.get 12
 00c06d: 41 ff ff 03                |                     i32.const 65535
 00c071: 71                         |                     i32.and
 00c072: 46                         |                     i32.eq
 00c073: 0d 01                      |                     br_if 1
 00c075: 0c 02                      |                     br 2
 00c077: 0b                         |                   end
 00c078: 02 40                      |                   block
 00c07a: 20 03                      |                     local.get 3
 00c07c: 20 11                      |                     local.get 17
 00c07e: 41 10                      |                     i32.const 16
 00c080: 74                         |                     i32.shl
 00c081: 41 80 80 7c                |                     i32.const 4294901760
 00c085: 6a                         |                     i32.add
 00c086: 41 10                      |                     i32.const 16
 00c088: 75                         |                     i32.shr_s
 00c089: 4e                         |                     i32.ge_s
 00c08a: 0d 00                      |                     br_if 0
 00c08c: 20 04                      |                     local.get 4
 00c08e: 20 03                      |                     local.get 3
 00c090: 41 01                      |                     i32.const 1
 00c092: 6a                         |                     i32.add
 00c093: 3b 01 02                   |                     i32.store16 1 2
 00c096: 0c 03                      |                     br 3
 00c098: 0b                         |                   end
 00c099: 20 02                      |                   local.get 2
 00c09b: 41 ff ff 03                |                   i32.const 65535
 00c09f: 71                         |                   i32.and
 00c0a0: 20 0c                      |                   local.get 12
 00c0a2: 41 ff ff 03                |                   i32.const 65535
 00c0a6: 71                         |                   i32.and
 00c0a7: 47                         |                   i32.ne
 00c0a8: 0d 01                      |                   br_if 1
 00c0aa: 0b                         |                 end
 00c0ab: 20 02                      |                 local.get 2
 00c0ad: 41 7e                      |                 i32.const 4294967294
 00c0af: 6a                         |                 i32.add
 00c0b0: 21 0e                      |                 local.set 14
 00c0b2: 0c 01                      |                 br 1
 00c0b4: 0b                         |               end
 00c0b5: 20 02                      |               local.get 2
 00c0b7: 41 7f                      |               i32.const 4294967295
 00c0b9: 6a                         |               i32.add
 00c0ba: 21 0e                      |               local.set 14
 00c0bc: 0b                         |             end
 00c0bd: 20 04                      |             local.get 4
 00c0bf: 20 0e                      |             local.get 14
 00c0c1: 3b 01 00                   |             i32.store16 1 0
 00c0c4: 20 00                      |             local.get 0
 00c0c6: 28 02 08                   |             i32.load 2 8
 00c0c9: 22 11                      |             local.tee 17
 00c0cb: 20 03                      |             local.get 3
 00c0cd: 41 0f                      |             i32.const 15
 00c0cf: 76                         |             i32.shr_u
 00c0d0: 20 07                      |             local.get 7
 00c0d2: 2e 01 00                   |             i32.load16_s 1 0
 00c0d5: 22 10                      |             local.tee 16
 00c0d7: 71                         |             i32.and
 00c0d8: 20 03                      |             local.get 3
 00c0da: 6a                         |             i32.add
 00c0db: 41 10                      |             i32.const 16
 00c0dd: 74                         |             i32.shl
 00c0de: 41 10                      |             i32.const 16
 00c0e0: 75                         |             i32.shr_s
 00c0e1: 20 10                      |             local.get 16
 00c0e3: 6c                         |             i32.mul
 00c0e4: 20 0f                      |             local.get 15
 00c0e6: 41 0f                      |             i32.const 15
 00c0e8: 76                         |             i32.shr_u
 00c0e9: 20 10                      |             local.get 16
 00c0eb: 71                         |             i32.and
 00c0ec: 20 02                      |             local.get 2
 00c0ee: 6a                         |             i32.add
 00c0ef: 41 10                      |             i32.const 16
 00c0f1: 74                         |             i32.shl
 00c0f2: 41 10                      |             i32.const 16
 00c0f4: 75                         |             i32.shr_s
 00c0f5: 6a                         |             i32.add
 00c0f6: 22 03                      |             local.tee 3
 00c0f8: 4d                         |             i32.le_u
 00c0f9: 0d 01                      |             br_if 1
 00c0fb: 20 0e                      |             local.get 14
 00c0fd: 21 02                      |             local.set 2
 00c0ff: 20 00                      |             local.get 0
 00c101: 28 02 00                   |             i32.load 2 0
 00c104: 20 03                      |             local.get 3
 00c106: 41 01                      |             i32.const 1
 00c108: 74                         |             i32.shl
 00c109: 6a                         |             i32.add
 00c10a: 22 03                      |             local.tee 3
 00c10c: 2d 00 00                   |             i32.load8_u 0 0
 00c10f: 0d 00                      |             br_if 0
 00c111: 0b                         |           end
 00c112: 20 03                      |           local.get 3
 00c114: 41 02                      |           i32.const 2
 00c116: 3a 00 00                   |           i32.store8 0 0
 00c119: 20 03                      |           local.get 3
 00c11b: 20 0d                      |           local.get 13
 00c11d: 3a 00 01                   |           i32.store8 0 1
 00c120: 20 09                      |           local.get 9
 00c122: 20 0a                      |           local.get 10
 00c124: 4e                         |           i32.ge_s
 00c125: 0d 02                      |           br_if 2
 00c127: 0c 01                      |           br 1
 00c129: 0b                         |         end
 00c12a: 0b                         |       end
 00c12b: 41 ac b4 c0 80 00          |       i32.const 1055276
 00c131: 20 03                      |       local.get 3
 00c133: 20 11                      |       local.get 17
 00c135: 10 9d 80 80 80 00          |       call 29 <_ZN4core9panicking18panic_bounds_check17h00b7e5f45a3d3836E>
 00c13b: 00                         |       unreachable
 00c13c: 0b                         |     end
 00c13d: 20 08                      |     local.get 8
 00c13f: 41 01                      |     i32.const 1
 00c141: 6a                         |     i32.add
 00c142: 21 08                      |     local.set 8
 00c144: 20 01                      |     local.get 1
 00c146: 41 01                      |     i32.const 1
 00c148: 6a                         |     i32.add
 00c149: 22 01                      |     local.tee 1
 00c14b: 20 05                      |     local.get 5
 00c14d: 47                         |     i32.ne
 00c14e: 0d 00                      |     br_if 0
 00c150: 0b                         |   end
 00c151: 0b                         | end
 00c152: 0b                         | end
