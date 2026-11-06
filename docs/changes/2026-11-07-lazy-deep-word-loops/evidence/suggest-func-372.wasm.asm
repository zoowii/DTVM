03b68d func[372] <_ZN9hashbrown3raw5inner21RawTable$LT$T$C$A$GT$14reserve_rehash17h3ac35ff684356992E>:
 03b68e: 03 7f                      | local[4..6] type=i32
 03b690: 01 7e                      | local[7] type=i64
 03b692: 0f 7f                      | local[8..22] type=i32
 03b694: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 03b69a: 41 20                      | i32.const 32
 03b69c: 6b                         | i32.sub
 03b69d: 22 04                      | local.tee 4
 03b69f: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 03b6a5: 02 40                      | block
 03b6a7: 02 40                      |   block
 03b6a9: 20 01                      |     local.get 1
 03b6ab: 28 02 0c                   |     i32.load 2 12
 03b6ae: 22 05                      |     local.tee 5
 03b6b0: 41 01                      |     i32.const 1
 03b6b2: 6a                         |     i32.add
 03b6b3: 22 06                      |     local.tee 6
 03b6b5: 20 05                      |     local.get 5
 03b6b7: 4f                         |     i32.ge_u
 03b6b8: 0d 00                      |     br_if 0
 03b6ba: 20 04                      |     local.get 4
 03b6bc: 41 01                      |     i32.const 1
 03b6be: 10 9e 84 80 80 00          |     call 542 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17hd54371fba02bba32E>
 03b6c4: 20 04                      |     local.get 4
 03b6c6: 29 03 00                   |     i64.load 3 0
 03b6c9: 21 07                      |     local.set 7
 03b6cb: 20 00                      |     local.get 0
 03b6cd: 41 01                      |     i32.const 1
 03b6cf: 36 02 00                   |     i32.store 2 0
 03b6d2: 20 00                      |     local.get 0
 03b6d4: 20 07                      |     local.get 7
 03b6d6: 37 02 04                   |     i64.store 2 4
 03b6d9: 0c 01                      |     br 1
 03b6db: 0b                         |   end
 03b6dc: 02 40                      |   block
 03b6de: 02 40                      |     block
 03b6e0: 02 40                      |       block
 03b6e2: 02 40                      |         block
 03b6e4: 02 40                      |           block
 03b6e6: 20 06                      |             local.get 6
 03b6e8: 20 01                      |             local.get 1
 03b6ea: 28 02 00                   |             i32.load 2 0
 03b6ed: 22 08                      |             local.tee 8
 03b6ef: 20 08                      |             local.get 8
 03b6f1: 41 01                      |             i32.const 1
 03b6f3: 6a                         |             i32.add
 03b6f4: 22 09                      |             local.tee 9
 03b6f6: 41 03                      |             i32.const 3
 03b6f8: 76                         |             i32.shr_u
 03b6f9: 41 07                      |             i32.const 7
 03b6fb: 6c                         |             i32.mul
 03b6fc: 20 08                      |             local.get 8
 03b6fe: 41 08                      |             i32.const 8
 03b700: 49                         |             i32.lt_u
 03b701: 1b                         |             select
 03b702: 22 0a                      |             local.tee 10
 03b704: 41 01                      |             i32.const 1
 03b706: 76                         |             i32.shr_u
 03b707: 4d                         |             i32.le_u
 03b708: 0d 00                      |             br_if 0
 03b70a: 20 06                      |             local.get 6
 03b70c: 20 0a                      |             local.get 10
 03b70e: 41 01                      |             i32.const 1
 03b710: 6a                         |             i32.add
 03b711: 22 0b                      |             local.tee 11
 03b713: 20 06                      |             local.get 6
 03b715: 20 0b                      |             local.get 11
 03b717: 4b                         |             i32.gt_u
 03b718: 1b                         |             select
 03b719: 22 06                      |             local.tee 6
 03b71b: 41 08                      |             i32.const 8
 03b71d: 49                         |             i32.lt_u
 03b71e: 0d 01                      |             br_if 1
 03b720: 02 40                      |             block
 03b722: 20 06                      |               local.get 6
 03b724: 41 ff ff ff ff 01          |               i32.const 536870911
 03b72a: 71                         |               i32.and
 03b72b: 20 06                      |               local.get 6
 03b72d: 47                         |               i32.ne
 03b72e: 0d 00                      |               br_if 0
 03b730: 41 7f                      |               i32.const 4294967295
 03b732: 20 06                      |               local.get 6
 03b734: 41 03                      |               i32.const 3
 03b736: 74                         |               i32.shl
 03b737: 41 07                      |               i32.const 7
 03b739: 6e                         |               i32.div_u
 03b73a: 41 7f                      |               i32.const 4294967295
 03b73c: 6a                         |               i32.add
 03b73d: 67                         |               i32.clz
 03b73e: 76                         |               i32.shr_u
 03b73f: 41 01                      |               i32.const 1
 03b741: 6a                         |               i32.add
 03b742: 21 06                      |               local.set 6
 03b744: 0c 03                      |               br 3
 03b746: 0b                         |             end
 03b747: 20 04                      |             local.get 4
 03b749: 41 18                      |             i32.const 24
 03b74b: 6a                         |             i32.add
 03b74c: 41 01                      |             i32.const 1
 03b74e: 10 9e 84 80 80 00          |             call 542 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17hd54371fba02bba32E>
 03b754: 20 04                      |             local.get 4
 03b756: 28 02 1c                   |             i32.load 2 28
 03b759: 21 06                      |             local.set 6
 03b75b: 20 04                      |             local.get 4
 03b75d: 28 02 18                   |             i32.load 2 24
 03b760: 21 0b                      |             local.set 11
 03b762: 0c 03                      |             br 3
 03b764: 0b                         |           end
 03b765: 20 01                      |           local.get 1
 03b767: 41 04                      |           i32.const 4
 03b769: 6a                         |           i32.add
 03b76a: 28 02 00                   |           i32.load 2 0
 03b76d: 21 0c                      |           local.set 12
 03b76f: 41 00                      |           i32.const 0
 03b771: 21 06                      |           local.set 6
 03b773: 41 00                      |           i32.const 0
 03b775: 21 0b                      |           local.set 11
 03b777: 03 40                      |           loop
 03b779: 02 40                      |             block
 03b77b: 02 40                      |               block
 03b77d: 02 40                      |                 block
 03b77f: 20 0b                      |                   local.get 11
 03b781: 41 01                      |                   i32.const 1
 03b783: 71                         |                   i32.and
 03b784: 0d 00                      |                   br_if 0
 03b786: 20 06                      |                   local.get 6
 03b788: 20 09                      |                   local.get 9
 03b78a: 4f                         |                   i32.ge_u
 03b78b: 0d 01                      |                   br_if 1
 03b78d: 0c 02                      |                   br 2
 03b78f: 0b                         |                 end
 03b790: 20 06                      |                 local.get 6
 03b792: 41 03                      |                 i32.const 3
 03b794: 6a                         |                 i32.add
 03b795: 22 0b                      |                 local.tee 11
 03b797: 20 06                      |                 local.get 6
 03b799: 49                         |                 i32.lt_u
 03b79a: 0d 00                      |                 br_if 0
 03b79c: 20 0b                      |                 local.get 11
 03b79e: 21 06                      |                 local.set 6
 03b7a0: 20 0b                      |                 local.get 11
 03b7a2: 20 09                      |                 local.get 9
 03b7a4: 49                         |                 i32.lt_u
 03b7a5: 0d 01                      |                 br_if 1
 03b7a7: 0b                         |               end
 03b7a8: 02 40                      |               block
 03b7aa: 02 40                      |                 block
 03b7ac: 02 40                      |                   block
 03b7ae: 20 09                      |                     local.get 9
 03b7b0: 41 04                      |                     i32.const 4
 03b7b2: 49                         |                     i32.lt_u
 03b7b3: 0d 00                      |                     br_if 0
 03b7b5: 20 0c                      |                     local.get 12
 03b7b7: 20 09                      |                     local.get 9
 03b7b9: 6a                         |                     i32.add
 03b7ba: 20 0c                      |                     local.get 12
 03b7bc: 28 00 00                   |                     i32.load 0 0
 03b7bf: 36 00 00                   |                     i32.store 0 0
 03b7c2: 0c 01                      |                     br 1
 03b7c4: 0b                         |                   end
 03b7c5: 20 0c                      |                   local.get 12
 03b7c7: 41 04                      |                   i32.const 4
 03b7c9: 6a                         |                   i32.add
 03b7ca: 20 0c                      |                   local.get 12
 03b7cc: 20 09                      |                   local.get 9
 03b7ce: 10 fb 85 80 80 00          |                   call 763 <memmove>
 03b7d4: 1a                         |                   drop
 03b7d5: 20 09                      |                   local.get 9
 03b7d7: 45                         |                   i32.eqz
 03b7d8: 0d 01                      |                   br_if 1
 03b7da: 0b                         |                 end
 03b7db: 20 0c                      |                 local.get 12
 03b7dd: 41 7c                      |                 i32.const 4294967292
 03b7df: 6a                         |                 i32.add
 03b7e0: 21 0d                      |                 local.set 13
 03b7e2: 41 00                      |                 i32.const 0
 03b7e4: 21 06                      |                 local.set 6
 03b7e6: 03 40                      |                 loop
 03b7e8: 02 40                      |                   block
 03b7ea: 20 0c                      |                     local.get 12
 03b7ec: 20 06                      |                     local.get 6
 03b7ee: 22 0e                      |                     local.tee 14
 03b7f0: 6a                         |                     i32.add
 03b7f1: 22 0f                      |                     local.tee 15
 03b7f3: 2d 00 00                   |                     i32.load8_u 0 0
 03b7f6: 41 80 01                   |                     i32.const 128
 03b7f9: 47                         |                     i32.ne
 03b7fa: 0d 00                      |                     br_if 0
 03b7fc: 02 40                      |                     block
 03b7fe: 02 40                      |                       block
 03b800: 02 40                      |                         block
 03b802: 20 0d                      |                           local.get 13
 03b804: 20 0e                      |                           local.get 14
 03b806: 41 02                      |                           i32.const 2
 03b808: 74                         |                           i32.shl
 03b809: 6b                         |                           i32.sub
 03b80a: 22 10                      |                           local.tee 16
 03b80c: 28 02 00                   |                           i32.load 2 0
 03b80f: 22 06                      |                           local.tee 6
 03b811: 20 03                      |                           local.get 3
 03b813: 4f                         |                           i32.ge_u
 03b814: 0d 00                      |                           br_if 0
 03b816: 03 40                      |                           loop
 03b818: 20 02                      |                             local.get 2
 03b81a: 20 06                      |                             local.get 6
 03b81c: 41 38                      |                             i32.const 56
 03b81e: 6c                         |                             i32.mul
 03b81f: 6a                         |                             i32.add
 03b820: 28 02 30                   |                             i32.load 2 48
 03b823: 22 11                      |                             local.tee 17
 03b825: 20 08                      |                             local.get 8
 03b827: 71                         |                             i32.and
 03b828: 22 12                      |                             local.tee 18
 03b82a: 21 0b                      |                             local.set 11
 03b82c: 02 40                      |                             block
 03b82e: 20 0c                      |                               local.get 12
 03b830: 20 12                      |                               local.get 18
 03b832: 6a                         |                               i32.add
 03b833: 28 00 00                   |                               i32.load 0 0
 03b836: 41 80 81 82 84 78          |                               i32.const 2155905152
 03b83c: 71                         |                               i32.and
 03b83d: 22 09                      |                               local.tee 9
 03b83f: 0d 00                      |                               br_if 0
 03b841: 41 04                      |                               i32.const 4
 03b843: 21 06                      |                               local.set 6
 03b845: 20 12                      |                               local.get 18
 03b847: 21 0b                      |                               local.set 11
 03b849: 03 40                      |                               loop
 03b84b: 20 0b                      |                                 local.get 11
 03b84d: 20 06                      |                                 local.get 6
 03b84f: 6a                         |                                 i32.add
 03b850: 21 0b                      |                                 local.set 11
 03b852: 20 06                      |                                 local.get 6
 03b854: 41 04                      |                                 i32.const 4
 03b856: 6a                         |                                 i32.add
 03b857: 21 06                      |                                 local.set 6
 03b859: 20 0c                      |                                 local.get 12
 03b85b: 20 0b                      |                                 local.get 11
 03b85d: 20 08                      |                                 local.get 8
 03b85f: 71                         |                                 i32.and
 03b860: 22 0b                      |                                 local.tee 11
 03b862: 6a                         |                                 i32.add
 03b863: 28 00 00                   |                                 i32.load 0 0
 03b866: 41 80 81 82 84 78          |                                 i32.const 2155905152
 03b86c: 71                         |                                 i32.and
 03b86d: 22 09                      |                                 local.tee 9
 03b86f: 45                         |                                 i32.eqz
 03b870: 0d 00                      |                                 br_if 0
 03b872: 0b                         |                               end
 03b873: 0b                         |                             end
 03b874: 02 40                      |                             block
 03b876: 20 0c                      |                               local.get 12
 03b878: 20 09                      |                               local.get 9
 03b87a: 68                         |                               i32.ctz
 03b87b: 41 03                      |                               i32.const 3
 03b87d: 76                         |                               i32.shr_u
 03b87e: 20 0b                      |                               local.get 11
 03b880: 6a                         |                               i32.add
 03b881: 20 08                      |                               local.get 8
 03b883: 71                         |                               i32.and
 03b884: 22 06                      |                               local.tee 6
 03b886: 6a                         |                               i32.add
 03b887: 2c 00 00                   |                               i32.load8_s 0 0
 03b88a: 41 7f                      |                               i32.const 4294967295
 03b88c: 4c                         |                               i32.le_s
 03b88d: 0d 00                      |                               br_if 0
 03b88f: 20 0c                      |                               local.get 12
 03b891: 28 02 00                   |                               i32.load 2 0
 03b894: 41 80 81 82 84 78          |                               i32.const 2155905152
 03b89a: 71                         |                               i32.and
 03b89b: 68                         |                               i32.ctz
 03b89c: 41 03                      |                               i32.const 3
 03b89e: 76                         |                               i32.shr_u
 03b89f: 21 06                      |                               local.set 6
 03b8a1: 0b                         |                             end
 03b8a2: 20 06                      |                             local.get 6
 03b8a4: 20 12                      |                             local.get 18
 03b8a6: 6b                         |                             i32.sub
 03b8a7: 20 0e                      |                             local.get 14
 03b8a9: 20 12                      |                             local.get 18
 03b8ab: 6b                         |                             i32.sub
 03b8ac: 73                         |                             i32.xor
 03b8ad: 20 08                      |                             local.get 8
 03b8af: 71                         |                             i32.and
 03b8b0: 41 04                      |                             i32.const 4
 03b8b2: 49                         |                             i32.lt_u
 03b8b3: 0d 03                      |                             br_if 3
 03b8b5: 20 0c                      |                             local.get 12
 03b8b7: 20 06                      |                             local.get 6
 03b8b9: 6a                         |                             i32.add
 03b8ba: 22 0b                      |                             local.tee 11
 03b8bc: 2d 00 00                   |                             i32.load8_u 0 0
 03b8bf: 21 09                      |                             local.set 9
 03b8c1: 20 0b                      |                             local.get 11
 03b8c3: 20 11                      |                             local.get 17
 03b8c5: 41 19                      |                             i32.const 25
 03b8c7: 76                         |                             i32.shr_u
 03b8c8: 22 12                      |                             local.tee 18
 03b8ca: 3a 00 00                   |                             i32.store8 0 0
 03b8cd: 20 06                      |                             local.get 6
 03b8cf: 41 7c                      |                             i32.const 4294967292
 03b8d1: 6a                         |                             i32.add
 03b8d2: 20 08                      |                             local.get 8
 03b8d4: 71                         |                             i32.and
 03b8d5: 20 0c                      |                             local.get 12
 03b8d7: 6a                         |                             i32.add
 03b8d8: 41 04                      |                             i32.const 4
 03b8da: 6a                         |                             i32.add
 03b8db: 20 12                      |                             local.get 18
 03b8dd: 3a 00 00                   |                             i32.store8 0 0
 03b8e0: 20 09                      |                             local.get 9
 03b8e2: 41 ff 01                   |                             i32.const 255
 03b8e5: 46                         |                             i32.eq
 03b8e6: 0d 02                      |                             br_if 2
 03b8e8: 20 0d                      |                             local.get 13
 03b8ea: 20 06                      |                             local.get 6
 03b8ec: 41 02                      |                             i32.const 2
 03b8ee: 74                         |                             i32.shl
 03b8ef: 6b                         |                             i32.sub
 03b8f0: 22 0b                      |                             local.tee 11
 03b8f2: 28 02 00                   |                             i32.load 2 0
 03b8f5: 21 06                      |                             local.set 6
 03b8f7: 20 0b                      |                             local.get 11
 03b8f9: 20 10                      |                             local.get 16
 03b8fb: 28 02 00                   |                             i32.load 2 0
 03b8fe: 36 02 00                   |                             i32.store 2 0
 03b901: 20 10                      |                             local.get 16
 03b903: 20 06                      |                             local.get 6
 03b905: 36 02 00                   |                             i32.store 2 0
 03b908: 20 06                      |                             local.get 6
 03b90a: 20 03                      |                             local.get 3
 03b90c: 49                         |                             i32.lt_u
 03b90d: 0d 00                      |                             br_if 0
 03b90f: 0b                         |                           end
 03b910: 0b                         |                         end
 03b911: 20 06                      |                         local.get 6
 03b913: 20 03                      |                         local.get 3
 03b915: 41 c0 d5 c0 80 00          |                         i32.const 1059520
 03b91b: 10 9a 86 80 80 00          |                         call 794 <_ZN4core9panicking18panic_bounds_check17h8c564c2b20bece92E>
 03b921: 00                         |                         unreachable
 03b922: 0b                         |                       end
 03b923: 20 0f                      |                       local.get 15
 03b925: 41 ff 01                   |                       i32.const 255
 03b928: 3a 00 00                   |                       i32.store8 0 0
 03b92b: 20 0e                      |                       local.get 14
 03b92d: 41 7c                      |                       i32.const 4294967292
 03b92f: 6a                         |                       i32.add
 03b930: 20 08                      |                       local.get 8
 03b932: 71                         |                       i32.and
 03b933: 20 0c                      |                       local.get 12
 03b935: 6a                         |                       i32.add
 03b936: 41 04                      |                       i32.const 4
 03b938: 6a                         |                       i32.add
 03b939: 41 ff 01                   |                       i32.const 255
 03b93c: 3a 00 00                   |                       i32.store8 0 0
 03b93f: 20 0d                      |                       local.get 13
 03b941: 20 06                      |                       local.get 6
 03b943: 41 02                      |                       i32.const 2
 03b945: 74                         |                       i32.shl
 03b946: 6b                         |                       i32.sub
 03b947: 20 10                      |                       local.get 16
 03b949: 28 02 00                   |                       i32.load 2 0
 03b94c: 36 02 00                   |                       i32.store 2 0
 03b94f: 0c 01                      |                       br 1
 03b951: 0b                         |                     end
 03b952: 20 0f                      |                     local.get 15
 03b954: 20 11                      |                     local.get 17
 03b956: 41 19                      |                     i32.const 25
 03b958: 76                         |                     i32.shr_u
 03b959: 22 06                      |                     local.tee 6
 03b95b: 3a 00 00                   |                     i32.store8 0 0
 03b95e: 20 0e                      |                     local.get 14
 03b960: 41 7c                      |                     i32.const 4294967292
 03b962: 6a                         |                     i32.add
 03b963: 20 08                      |                     local.get 8
 03b965: 71                         |                     i32.and
 03b966: 20 0c                      |                     local.get 12
 03b968: 6a                         |                     i32.add
 03b969: 41 04                      |                     i32.const 4
 03b96b: 6a                         |                     i32.add
 03b96c: 20 06                      |                     local.get 6
 03b96e: 3a 00 00                   |                     i32.store8 0 0
 03b971: 0b                         |                   end
 03b972: 20 0e                      |                   local.get 14
 03b974: 41 01                      |                   i32.const 1
 03b976: 6a                         |                   i32.add
 03b977: 21 06                      |                   local.set 6
 03b979: 20 0e                      |                   local.get 14
 03b97b: 20 08                      |                   local.get 8
 03b97d: 47                         |                   i32.ne
 03b97e: 0d 00                      |                   br_if 0
 03b980: 0b                         |                 end
 03b981: 0b                         |               end
 03b982: 20 00                      |               local.get 0
 03b984: 41 00                      |               i32.const 0
 03b986: 36 02 00                   |               i32.store 2 0
 03b989: 20 01                      |               local.get 1
 03b98b: 20 0a                      |               local.get 10
 03b98d: 20 05                      |               local.get 5
 03b98f: 6b                         |               i32.sub
 03b990: 36 02 08                   |               i32.store 2 8
 03b993: 0c 06                      |               br 6
 03b995: 0b                         |             end
 03b996: 20 0c                      |             local.get 12
 03b998: 20 06                      |             local.get 6
 03b99a: 6a                         |             i32.add
 03b99b: 22 0b                      |             local.tee 11
 03b99d: 20 0b                      |             local.get 11
 03b99f: 28 02 00                   |             i32.load 2 0
 03b9a2: 22 0b                      |             local.tee 11
 03b9a4: 41 07                      |             i32.const 7
 03b9a6: 76                         |             i32.shr_u
 03b9a7: 41 7f                      |             i32.const 4294967295
 03b9a9: 73                         |             i32.xor
 03b9aa: 41 81 82 84 08             |             i32.const 16843009
 03b9af: 71                         |             i32.and
 03b9b0: 20 0b                      |             local.get 11
 03b9b2: 41 ff fe fd fb 07          |             i32.const 2139062143
 03b9b8: 72                         |             i32.or
 03b9b9: 6a                         |             i32.add
 03b9ba: 36 02 00                   |             i32.store 2 0
 03b9bd: 41 01                      |             i32.const 1
 03b9bf: 21 0b                      |             local.set 11
 03b9c1: 20 06                      |             local.get 6
 03b9c3: 41 01                      |             i32.const 1
 03b9c5: 6a                         |             i32.add
 03b9c6: 21 06                      |             local.set 6
 03b9c8: 0c 00                      |             br 0
 03b9ca: 0b                         |           end
 03b9cb: 0b                         |         end
 03b9cc: 41 04                      |         i32.const 4
 03b9ce: 41 08                      |         i32.const 8
 03b9d0: 20 06                      |         local.get 6
 03b9d2: 41 04                      |         i32.const 4
 03b9d4: 49                         |         i32.lt_u
 03b9d5: 1b                         |         select
 03b9d6: 21 06                      |         local.set 6
 03b9d8: 0b                         |       end
 03b9d9: 02 40                      |       block
 03b9db: 20 06                      |         local.get 6
 03b9dd: 41 ff ff ff ff 03          |         i32.const 1073741823
 03b9e3: 71                         |         i32.and
 03b9e4: 20 06                      |         local.get 6
 03b9e6: 47                         |         i32.ne
 03b9e7: 0d 00                      |         br_if 0
 03b9e9: 20 06                      |         local.get 6
 03b9eb: 41 02                      |         i32.const 2
 03b9ed: 74                         |         i32.shl
 03b9ee: 22 0b                      |         local.tee 11
 03b9f0: 20 06                      |         local.get 6
 03b9f2: 41 04                      |         i32.const 4
 03b9f4: 6a                         |         i32.add
 03b9f5: 22 12                      |         local.tee 18
 03b9f7: 6a                         |         i32.add
 03b9f8: 22 0c                      |         local.tee 12
 03b9fa: 20 0b                      |         local.get 11
 03b9fc: 49                         |         i32.lt_u
 03b9fd: 0d 00                      |         br_if 0
 03b9ff: 20 0c                      |         local.get 12
 03ba01: 41 04                      |         i32.const 4
 03ba03: 10 b1 80 80 80 00          |         call 49 <__rust_alloc>
 03ba09: 22 11                      |         local.tee 17
 03ba0b: 0d 02                      |         br_if 2
 03ba0d: 20 04                      |         local.get 4
 03ba0f: 41 10                      |         i32.const 16
 03ba11: 6a                         |         i32.add
 03ba12: 41 01                      |         i32.const 1
 03ba14: 20 0c                      |         local.get 12
 03ba16: 41 04                      |         i32.const 4
 03ba18: 10 9f 84 80 80 00          |         call 543 <_ZN9hashbrown3raw5inner11Fallibility9alloc_err17h3a094e9c0383d46cE>
 03ba1e: 20 04                      |         local.get 4
 03ba20: 28 02 14                   |         i32.load 2 20
 03ba23: 21 06                      |         local.set 6
 03ba25: 20 04                      |         local.get 4
 03ba27: 28 02 10                   |         i32.load 2 16
 03ba2a: 21 0b                      |         local.set 11
 03ba2c: 0c 01                      |         br 1
 03ba2e: 0b                         |       end
 03ba2f: 20 04                      |       local.get 4
 03ba31: 41 08                      |       i32.const 8
 03ba33: 6a                         |       i32.add
 03ba34: 41 01                      |       i32.const 1
 03ba36: 10 9e 84 80 80 00          |       call 542 <_ZN9hashbrown3raw5inner11Fallibility17capacity_overflow17hd54371fba02bba32E>
 03ba3c: 20 04                      |       local.get 4
 03ba3e: 28 02 0c                   |       i32.load 2 12
 03ba41: 21 06                      |       local.set 6
 03ba43: 20 04                      |       local.get 4
 03ba45: 28 02 08                   |       i32.load 2 8
 03ba48: 21 0b                      |       local.set 11
 03ba4a: 0b                         |     end
 03ba4b: 20 00                      |     local.get 0
 03ba4d: 20 0b                      |     local.get 11
 03ba4f: 36 02 04                   |     i32.store 2 4
 03ba52: 20 00                      |     local.get 0
 03ba54: 41 01                      |     i32.const 1
 03ba56: 36 02 00                   |     i32.store 2 0
 03ba59: 20 00                      |     local.get 0
 03ba5b: 41 08                      |     i32.const 8
 03ba5d: 6a                         |     i32.add
 03ba5e: 20 06                      |     local.get 6
 03ba60: 36 02 00                   |     i32.store 2 0
 03ba63: 0c 01                      |     br 1
 03ba65: 0b                         |   end
 03ba66: 20 06                      |   local.get 6
 03ba68: 41 7f                      |   i32.const 4294967295
 03ba6a: 6a                         |   i32.add
 03ba6b: 22 10                      |   local.tee 16
 03ba6d: 20 06                      |   local.get 6
 03ba6f: 41 03                      |   i32.const 3
 03ba71: 76                         |   i32.shr_u
 03ba72: 41 07                      |   i32.const 7
 03ba74: 6c                         |   i32.mul
 03ba75: 20 10                      |   local.get 16
 03ba77: 41 08                      |   i32.const 8
 03ba79: 49                         |   i32.lt_u
 03ba7a: 1b                         |   select
 03ba7b: 20 05                      |   local.get 5
 03ba7d: 6b                         |   i32.sub
 03ba7e: 21 13                      |   local.set 19
 03ba80: 20 11                      |   local.get 17
 03ba82: 20 0b                      |   local.get 11
 03ba84: 6a                         |   i32.add
 03ba85: 41 ff 01                   |   i32.const 255
 03ba88: 20 12                      |   local.get 18
 03ba8a: 10 f9 85 80 80 00          |   call 761 <memset>
 03ba90: 22 12                      |   local.tee 18
 03ba92: 41 7c                      |   i32.const 4294967292
 03ba94: 6a                         |   i32.add
 03ba95: 21 14                      |   local.set 20
 03ba97: 20 01                      |   local.get 1
 03ba99: 41 04                      |   i32.const 4
 03ba9b: 6a                         |   i32.add
 03ba9c: 28 02 00                   |   i32.load 2 0
 03ba9f: 22 15                      |   local.tee 21
 03baa1: 41 04                      |   i32.const 4
 03baa3: 6a                         |   i32.add
 03baa4: 21 0b                      |   local.set 11
 03baa6: 20 15                      |   local.get 21
 03baa8: 20 09                      |   local.get 9
 03baaa: 6a                         |   i32.add
 03baab: 21 0d                      |   local.set 13
 03baad: 20 15                      |   local.get 21
 03baaf: 28 02 00                   |   i32.load 2 0
 03bab2: 41 7f                      |   i32.const 4294967295
 03bab4: 73                         |   i32.xor
 03bab5: 41 80 81 82 84 78          |   i32.const 2155905152
 03babb: 71                         |   i32.and
 03babc: 21 0f                      |   local.set 15
 03babe: 20 15                      |   local.get 21
 03bac0: 21 11                      |   local.set 17
 03bac2: 03 40                      |   loop
 03bac4: 02 40                      |     block
 03bac6: 02 40                      |       block
 03bac8: 02 40                      |         block
 03baca: 20 0f                      |           local.get 15
 03bacc: 0d 00                      |           br_if 0
 03bace: 03 40                      |           loop
 03bad0: 20 0b                      |             local.get 11
 03bad2: 20 0d                      |             local.get 13
 03bad4: 4f                         |             i32.ge_u
 03bad5: 0d 02                      |             br_if 2
 03bad7: 20 11                      |             local.get 17
 03bad9: 41 70                      |             i32.const 4294967280
 03badb: 6a                         |             i32.add
 03badc: 21 11                      |             local.set 17
 03bade: 20 0b                      |             local.get 11
 03bae0: 28 02 00                   |             i32.load 2 0
 03bae3: 21 06                      |             local.set 6
 03bae5: 20 0b                      |             local.get 11
 03bae7: 41 04                      |             i32.const 4
 03bae9: 6a                         |             i32.add
 03baea: 22 0c                      |             local.tee 12
 03baec: 21 0b                      |             local.set 11
 03baee: 20 06                      |             local.get 6
 03baf0: 41 80 81 82 84 78          |             i32.const 2155905152
 03baf6: 71                         |             i32.and
 03baf7: 22 06                      |             local.tee 6
 03baf9: 41 80 81 82 84 78          |             i32.const 2155905152
 03baff: 46                         |             i32.eq
 03bb00: 0d 00                      |             br_if 0
 03bb02: 0b                         |           end
 03bb03: 20 06                      |           local.get 6
 03bb05: 41 80 81 82 84 78          |           i32.const 2155905152
 03bb0b: 73                         |           i32.xor
 03bb0c: 21 0f                      |           local.set 15
 03bb0e: 20 0c                      |           local.get 12
 03bb10: 21 0b                      |           local.set 11
 03bb12: 0b                         |         end
 03bb13: 20 11                      |         local.get 17
 03bb15: 20 0f                      |         local.get 15
 03bb17: 68                         |         i32.ctz
 03bb18: 41 01                      |         i32.const 1
 03bb1a: 76                         |         i32.shr_u
 03bb1b: 41 1c                      |         i32.const 28
 03bb1d: 71                         |         i32.and
 03bb1e: 6b                         |         i32.sub
 03bb1f: 41 7c                      |         i32.const 4294967292
 03bb21: 6a                         |         i32.add
 03bb22: 22 05                      |         local.tee 5
 03bb24: 28 02 00                   |         i32.load 2 0
 03bb27: 22 06                      |         local.tee 6
 03bb29: 20 03                      |         local.get 3
 03bb2b: 49                         |         i32.lt_u
 03bb2c: 0d 01                      |         br_if 1
 03bb2e: 20 06                      |         local.get 6
 03bb30: 20 03                      |         local.get 3
 03bb32: 41 c0 d5 c0 80 00          |         i32.const 1059520
 03bb38: 10 9a 86 80 80 00          |         call 794 <_ZN4core9panicking18panic_bounds_check17h8c564c2b20bece92E>
 03bb3e: 00                         |         unreachable
 03bb3f: 0b                         |       end
 03bb40: 20 01                      |       local.get 1
 03bb42: 20 13                      |       local.get 19
 03bb44: 36 02 08                   |       i32.store 2 8
 03bb47: 20 01                      |       local.get 1
 03bb49: 20 10                      |       local.get 16
 03bb4b: 36 02 00                   |       i32.store 2 0
 03bb4e: 20 00                      |       local.get 0
 03bb50: 41 00                      |       i32.const 0
 03bb52: 36 02 00                   |       i32.store 2 0
 03bb55: 20 01                      |       local.get 1
 03bb57: 41 04                      |       i32.const 4
 03bb59: 6a                         |       i32.add
 03bb5a: 20 12                      |       local.get 18
 03bb5c: 36 02 00                   |       i32.store 2 0
 03bb5f: 20 08                      |       local.get 8
 03bb61: 45                         |       i32.eqz
 03bb62: 0d 02                      |       br_if 2
 03bb64: 20 15                      |       local.get 21
 03bb66: 20 09                      |       local.get 9
 03bb68: 41 02                      |       i32.const 2
 03bb6a: 74                         |       i32.shl
 03bb6b: 22 06                      |       local.tee 6
 03bb6d: 6b                         |       i32.sub
 03bb6e: 20 08                      |       local.get 8
 03bb70: 20 06                      |       local.get 6
 03bb72: 6a                         |       i32.add
 03bb73: 41 05                      |       i32.const 5
 03bb75: 6a                         |       i32.add
 03bb76: 41 04                      |       i32.const 4
 03bb78: 10 b2 80 80 80 00          |       call 50 <__rust_dealloc>
 03bb7e: 0c 02                      |       br 2
 03bb80: 0b                         |     end
 03bb81: 02 40                      |     block
 03bb83: 20 12                      |       local.get 18
 03bb85: 20 02                      |       local.get 2
 03bb87: 20 06                      |       local.get 6
 03bb89: 41 38                      |       i32.const 56
 03bb8b: 6c                         |       i32.mul
 03bb8c: 6a                         |       i32.add
 03bb8d: 28 02 30                   |       i32.load 2 48
 03bb90: 22 0a                      |       local.tee 10
 03bb92: 20 10                      |       local.get 16
 03bb94: 71                         |       i32.and
 03bb95: 22 0c                      |       local.tee 12
 03bb97: 6a                         |       i32.add
 03bb98: 28 00 00                   |       i32.load 0 0
 03bb9b: 41 80 81 82 84 78          |       i32.const 2155905152
 03bba1: 71                         |       i32.and
 03bba2: 22 0e                      |       local.tee 14
 03bba4: 0d 00                      |       br_if 0
 03bba6: 41 04                      |       i32.const 4
 03bba8: 21 06                      |       local.set 6
 03bbaa: 03 40                      |       loop
 03bbac: 20 0c                      |         local.get 12
 03bbae: 20 06                      |         local.get 6
 03bbb0: 6a                         |         i32.add
 03bbb1: 21 0c                      |         local.set 12
 03bbb3: 20 06                      |         local.get 6
 03bbb5: 41 04                      |         i32.const 4
 03bbb7: 6a                         |         i32.add
 03bbb8: 21 06                      |         local.set 6
 03bbba: 20 12                      |         local.get 18
 03bbbc: 20 0c                      |         local.get 12
 03bbbe: 20 10                      |         local.get 16
 03bbc0: 71                         |         i32.and
 03bbc1: 22 0c                      |         local.tee 12
 03bbc3: 6a                         |         i32.add
 03bbc4: 28 00 00                   |         i32.load 0 0
 03bbc7: 41 80 81 82 84 78          |         i32.const 2155905152
 03bbcd: 71                         |         i32.and
 03bbce: 22 0e                      |         local.tee 14
 03bbd0: 45                         |         i32.eqz
 03bbd1: 0d 00                      |         br_if 0
 03bbd3: 0b                         |       end
 03bbd4: 0b                         |     end
 03bbd5: 20 0f                      |     local.get 15
 03bbd7: 41 7f                      |     i32.const 4294967295
 03bbd9: 6a                         |     i32.add
 03bbda: 21 16                      |     local.set 22
 03bbdc: 02 40                      |     block
 03bbde: 20 12                      |       local.get 18
 03bbe0: 20 0e                      |       local.get 14
 03bbe2: 68                         |       i32.ctz
 03bbe3: 41 03                      |       i32.const 3
 03bbe5: 76                         |       i32.shr_u
 03bbe6: 20 0c                      |       local.get 12
 03bbe8: 6a                         |       i32.add
 03bbe9: 20 10                      |       local.get 16
 03bbeb: 71                         |       i32.and
 03bbec: 22 06                      |       local.tee 6
 03bbee: 6a                         |       i32.add
 03bbef: 2c 00 00                   |       i32.load8_s 0 0
 03bbf2: 41 7f                      |       i32.const 4294967295
 03bbf4: 4c                         |       i32.le_s
 03bbf5: 0d 00                      |       br_if 0
 03bbf7: 20 12                      |       local.get 18
 03bbf9: 28 02 00                   |       i32.load 2 0
 03bbfc: 41 80 81 82 84 78          |       i32.const 2155905152
 03bc02: 71                         |       i32.and
 03bc03: 68                         |       i32.ctz
 03bc04: 41 03                      |       i32.const 3
 03bc06: 76                         |       i32.shr_u
 03bc07: 21 06                      |       local.set 6
 03bc09: 0b                         |     end
 03bc0a: 20 16                      |     local.get 22
 03bc0c: 20 0f                      |     local.get 15
 03bc0e: 71                         |     i32.and
 03bc0f: 21 0f                      |     local.set 15
 03bc11: 20 12                      |     local.get 18
 03bc13: 20 06                      |     local.get 6
 03bc15: 6a                         |     i32.add
 03bc16: 20 0a                      |     local.get 10
 03bc18: 41 19                      |     i32.const 25
 03bc1a: 76                         |     i32.shr_u
 03bc1b: 22 0c                      |     local.tee 12
 03bc1d: 3a 00 00                   |     i32.store8 0 0
 03bc20: 20 06                      |     local.get 6
 03bc22: 41 7c                      |     i32.const 4294967292
 03bc24: 6a                         |     i32.add
 03bc25: 20 10                      |     local.get 16
 03bc27: 71                         |     i32.and
 03bc28: 20 12                      |     local.get 18
 03bc2a: 6a                         |     i32.add
 03bc2b: 41 04                      |     i32.const 4
 03bc2d: 6a                         |     i32.add
 03bc2e: 20 0c                      |     local.get 12
 03bc30: 3a 00 00                   |     i32.store8 0 0
 03bc33: 20 14                      |     local.get 20
 03bc35: 20 06                      |     local.get 6
 03bc37: 41 02                      |     i32.const 2
 03bc39: 74                         |     i32.shl
 03bc3a: 6b                         |     i32.sub
 03bc3b: 20 05                      |     local.get 5
 03bc3d: 28 02 00                   |     i32.load 2 0
 03bc40: 36 02 00                   |     i32.store 2 0
 03bc43: 0c 00                      |     br 0
 03bc45: 0b                         |   end
 03bc46: 0b                         | end
 03bc47: 20 04                      | local.get 4
 03bc49: 41 20                      | i32.const 32
 03bc4b: 6a                         | i32.add
 03bc4c: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 03bc52: 0b                         | end
