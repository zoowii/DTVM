02b4c4 func[304] <_ZN4clap5parse9validator9Conflicts23gather_direct_conflicts17h0c3c9068807d0251E>:
 02b4c5: 02 7f                      | local[4..5] type=i32
 02b4c7: 02 7e                      | local[6..7] type=i64
 02b4c9: 07 7f                      | local[8..14] type=i32
 02b4cb: 01 7e                      | local[15] type=i64
 02b4cd: 04 7f                      | local[16..19] type=i32
 02b4cf: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 02b4d5: 41 20                      | i32.const 32
 02b4d7: 6b                         | i32.sub
 02b4d8: 22 04                      | local.tee 4
 02b4da: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 02b4e0: 20 04                      | local.get 4
 02b4e2: 20 01                      | local.get 1
 02b4e4: 20 03                      | local.get 3
 02b4e6: 10 f8 81 80 80 00          | call 248 <_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h8f98bf4d66077fd9E>
 02b4ec: 20 04                      | local.get 4
 02b4ee: 41 18                      | i32.const 24
 02b4f0: 6a                         | i32.add
 02b4f1: 28 02 00                   | i32.load 2 0
 02b4f4: 21 05                      | local.set 5
 02b4f6: 02 40                      | block
 02b4f8: 02 40                      |   block
 02b4fa: 02 40                      |     block
 02b4fc: 20 04                      |       local.get 4
 02b4fe: 29 03 00                   |       i64.load 3 0
 02b501: 42 00                      |       i64.const 0
 02b503: 52                         |       i64.ne
 02b504: 0d 00                      |       br_if 0
 02b506: 20 05                      |       local.get 5
 02b508: 41 70                      |       i32.const 4294967280
 02b50a: 6a                         |       i32.add
 02b50b: 21 01                      |       local.set 1
 02b50d: 0c 01                      |       br 1
 02b50f: 0b                         |     end
 02b510: 20 04                      |     local.get 4
 02b512: 41 10                      |     i32.const 16
 02b514: 6a                         |     i32.add
 02b515: 29 03 00                   |     i64.load 3 0
 02b518: 21 06                      |     local.set 6
 02b51a: 20 04                      |     local.get 4
 02b51c: 29 03 08                   |     i64.load 3 8
 02b51f: 21 07                      |     local.set 7
 02b521: 20 02                      |     local.get 2
 02b523: 28 02 84 02                |     i32.load 2 260
 02b527: 41 e0 7d                   |     i32.const 4294967008
 02b52a: 6a                         |     i32.add
 02b52b: 21 08                      |     local.set 8
 02b52d: 20 02                      |     local.get 2
 02b52f: 41 8c 02                   |     i32.const 268
 02b532: 6a                         |     i32.add
 02b533: 28 02 00                   |     i32.load 2 0
 02b536: 41 c0 02                   |     i32.const 320
 02b539: 6c                         |     i32.mul
 02b53a: 21 01                      |     local.set 1
 02b53c: 02 40                      |     block
 02b53e: 02 40                      |       block
 02b540: 02 40                      |         block
 02b542: 02 40                      |           block
 02b544: 02 40                      |             block
 02b546: 02 40                      |               block
 02b548: 02 40                      |                 block
 02b54a: 03 40                      |                   loop
 02b54c: 20 01                      |                     local.get 1
 02b54e: 45                         |                     i32.eqz
 02b54f: 0d 01                      |                     br_if 1
 02b551: 20 01                      |                     local.get 1
 02b553: 41 c0 7d                   |                     i32.const 4294966976
 02b556: 6a                         |                     i32.add
 02b557: 21 01                      |                     local.set 1
 02b559: 20 08                      |                     local.get 8
 02b55b: 41 a0 02                   |                     i32.const 288
 02b55e: 6a                         |                     i32.add
 02b55f: 21 09                      |                     local.set 9
 02b561: 20 08                      |                     local.get 8
 02b563: 41 c0 02                   |                     i32.const 320
 02b566: 6a                         |                     i32.add
 02b567: 22 0a                      |                     local.tee 10
 02b569: 21 08                      |                     local.set 8
 02b56b: 20 09                      |                     local.get 9
 02b56d: 29 03 00                   |                     i64.load 3 0
 02b570: 20 03                      |                     local.get 3
 02b572: 52                         |                     i64.ne
 02b573: 0d 00                      |                     br_if 0
 02b575: 0b                         |                   end
 02b576: 20 0a                      |                   local.get 10
 02b578: 41 08                      |                   i32.const 8
 02b57a: 6a                         |                   i32.add
 02b57b: 28 02 00                   |                   i32.load 2 0
 02b57e: 22 09                      |                   local.tee 9
 02b580: 41 ff ff ff ff 01          |                   i32.const 536870911
 02b586: 71                         |                   i32.and
 02b587: 20 09                      |                   local.get 9
 02b589: 47                         |                   i32.ne
 02b58a: 0d 01                      |                   br_if 1
 02b58c: 20 09                      |                   local.get 9
 02b58e: 41 03                      |                   i32.const 3
 02b590: 74                         |                   i32.shl
 02b591: 22 0b                      |                   local.tee 11
 02b593: 41 00                      |                   i32.const 0
 02b595: 48                         |                   i32.lt_s
 02b596: 0d 01                      |                   br_if 1
 02b598: 20 0a                      |                   local.get 10
 02b59a: 28 02 00                   |                   i32.load 2 0
 02b59d: 21 08                      |                   local.set 8
 02b59f: 02 40                      |                   block
 02b5a1: 02 40                      |                     block
 02b5a3: 02 40                      |                       block
 02b5a5: 02 40                      |                         block
 02b5a7: 20 0b                      |                           local.get 11
 02b5a9: 0d 00                      |                           br_if 0
 02b5ab: 41 08                      |                           i32.const 8
 02b5ad: 21 01                      |                           local.set 1
 02b5af: 0c 01                      |                           br 1
 02b5b1: 0b                         |                         end
 02b5b2: 20 0b                      |                         local.get 11
 02b5b4: 41 08                      |                         i32.const 8
 02b5b6: 10 b1 80 80 80 00          |                         call 49 <__rust_alloc>
 02b5bc: 22 01                      |                         local.tee 1
 02b5be: 45                         |                         i32.eqz
 02b5bf: 0d 01                      |                         br_if 1
 02b5c1: 0b                         |                       end
 02b5c2: 20 04                      |                       local.get 4
 02b5c4: 20 09                      |                       local.get 9
 02b5c6: 36 02 04                   |                       i32.store 2 4
 02b5c9: 20 04                      |                       local.get 4
 02b5cb: 20 01                      |                       local.get 1
 02b5cd: 36 02 00                   |                       i32.store 2 0
 02b5d0: 02 40                      |                       block
 02b5d2: 20 09                      |                         local.get 9
 02b5d4: 45                         |                         i32.eqz
 02b5d5: 0d 00                      |                         br_if 0
 02b5d7: 20 09                      |                         local.get 9
 02b5d9: 41 03                      |                         i32.const 3
 02b5db: 74                         |                         i32.shl
 02b5dc: 21 0b                      |                         local.set 11
 02b5de: 20 09                      |                         local.get 9
 02b5e0: 21 0c                      |                         local.set 12
 02b5e2: 03 40                      |                         loop
 02b5e4: 20 0b                      |                           local.get 11
 02b5e6: 45                         |                           i32.eqz
 02b5e7: 0d 01                      |                           br_if 1
 02b5e9: 20 01                      |                           local.get 1
 02b5eb: 20 08                      |                           local.get 8
 02b5ed: 29 03 00                   |                           i64.load 3 0
 02b5f0: 37 03 00                   |                           i64.store 3 0
 02b5f3: 20 01                      |                           local.get 1
 02b5f5: 41 08                      |                           i32.const 8
 02b5f7: 6a                         |                           i32.add
 02b5f8: 21 01                      |                           local.set 1
 02b5fa: 20 0b                      |                           local.get 11
 02b5fc: 41 78                      |                           i32.const 4294967288
 02b5fe: 6a                         |                           i32.add
 02b5ff: 21 0b                      |                           local.set 11
 02b601: 20 08                      |                           local.get 8
 02b603: 41 08                      |                           i32.const 8
 02b605: 6a                         |                           i32.add
 02b606: 21 08                      |                           local.set 8
 02b608: 20 0c                      |                           local.get 12
 02b60a: 41 7f                      |                           i32.const 4294967295
 02b60c: 6a                         |                           i32.add
 02b60d: 22 0c                      |                           local.tee 12
 02b60f: 0d 00                      |                           br_if 0
 02b611: 0b                         |                         end
 02b612: 0b                         |                       end
 02b613: 20 04                      |                       local.get 4
 02b615: 20 09                      |                       local.get 9
 02b617: 36 02 08                   |                       i32.store 2 8
 02b61a: 20 02                      |                       local.get 2
 02b61c: 41 b0 02                   |                       i32.const 304
 02b61f: 6a                         |                       i32.add
 02b620: 28 02 00                   |                       i32.load 2 0
 02b623: 22 01                      |                       local.tee 1
 02b625: 45                         |                       i32.eqz
 02b626: 0d 01                      |                       br_if 1
 02b628: 20 02                      |                       local.get 2
 02b62a: 28 02 a8 02                |                       i32.load 2 296
 02b62e: 22 0b                      |                       local.tee 11
 02b630: 20 01                      |                       local.get 1
 02b632: 41 38                      |                       i32.const 56
 02b634: 6c                         |                       i32.mul
 02b635: 22 02                      |                       local.tee 2
 02b637: 6a                         |                       i32.add
 02b638: 21 0d                      |                       local.set 13
 02b63a: 20 0b                      |                       local.get 11
 02b63c: 21 0e                      |                       local.set 14
 02b63e: 03 40                      |                       loop
 02b640: 20 0e                      |                         local.get 14
 02b642: 21 0c                      |                         local.set 12
 02b644: 02 40                      |                         block
 02b646: 02 40                      |                           block
 02b648: 02 40                      |                             block
 02b64a: 02 40                      |                               block
 02b64c: 03 40                      |                                 loop
 02b64e: 20 0c                      |                                   local.get 12
 02b650: 41 38                      |                                   i32.const 56
 02b652: 6a                         |                                   i32.add
 02b653: 21 0e                      |                                   local.set 14
 02b655: 20 0c                      |                                   local.get 12
 02b657: 41 18                      |                                   i32.const 24
 02b659: 6a                         |                                   i32.add
 02b65a: 28 02 00                   |                                   i32.load 2 0
 02b65d: 41 03                      |                                   i32.const 3
 02b65f: 74                         |                                   i32.shl
 02b660: 21 01                      |                                   local.set 1
 02b662: 20 0c                      |                                   local.get 12
 02b664: 28 02 10                   |                                   i32.load 2 16
 02b667: 21 08                      |                                   local.set 8
 02b669: 02 40                      |                                   block
 02b66b: 02 40                      |                                     block
 02b66d: 03 40                      |                                       loop
 02b66f: 20 01                      |                                         local.get 1
 02b671: 45                         |                                         i32.eqz
 02b672: 0d 01                      |                                         br_if 1
 02b674: 20 01                      |                                         local.get 1
 02b676: 41 78                      |                                         i32.const 4294967288
 02b678: 6a                         |                                         i32.add
 02b679: 21 01                      |                                         local.set 1
 02b67b: 20 08                      |                                         local.get 8
 02b67d: 29 03 00                   |                                         i64.load 3 0
 02b680: 21 0f                      |                                         local.set 15
 02b682: 20 08                      |                                         local.get 8
 02b684: 41 08                      |                                         i32.const 8
 02b686: 6a                         |                                         i32.add
 02b687: 21 08                      |                                         local.set 8
 02b689: 20 0f                      |                                         local.get 15
 02b68b: 20 03                      |                                         local.get 3
 02b68d: 52                         |                                         i64.ne
 02b68e: 0d 00                      |                                         br_if 0
 02b690: 0b                         |                                       end
 02b691: 20 0c                      |                                       local.get 12
 02b693: 29 03 00                   |                                       i64.load 3 0
 02b696: 21 0f                      |                                       local.set 15
 02b698: 41 00                      |                                       i32.const 0
 02b69a: 21 01                      |                                       local.set 1
 02b69c: 03 40                      |                                       loop
 02b69e: 20 02                      |                                         local.get 2
 02b6a0: 20 01                      |                                         local.get 1
 02b6a2: 46                         |                                         i32.eq
 02b6a3: 0d 06                      |                                         br_if 6
 02b6a5: 20 0b                      |                                         local.get 11
 02b6a7: 20 01                      |                                         local.get 1
 02b6a9: 6a                         |                                         i32.add
 02b6aa: 21 08                      |                                         local.set 8
 02b6ac: 20 01                      |                                         local.get 1
 02b6ae: 41 38                      |                                         i32.const 56
 02b6b0: 6a                         |                                         i32.add
 02b6b1: 22 0c                      |                                         local.tee 12
 02b6b3: 21 01                      |                                         local.set 1
 02b6b5: 20 08                      |                                         local.get 8
 02b6b7: 29 03 00                   |                                         i64.load 3 0
 02b6ba: 20 0f                      |                                         local.get 15
 02b6bc: 52                         |                                         i64.ne
 02b6bd: 0d 00                      |                                         br_if 0
 02b6bf: 0b                         |                                       end
 02b6c0: 20 0b                      |                                       local.get 11
 02b6c2: 20 0c                      |                                       local.get 12
 02b6c4: 6a                         |                                       i32.add
 02b6c5: 22 10                      |                                       local.tee 16
 02b6c7: 41 70                      |                                       i32.const 4294967280
 02b6c9: 6a                         |                                       i32.add
 02b6ca: 28 02 00                   |                                       i32.load 2 0
 02b6cd: 21 11                      |                                       local.set 17
 02b6cf: 20 04                      |                                       local.get 4
 02b6d1: 28 02 04                   |                                       i32.load 2 4
 02b6d4: 20 09                      |                                       local.get 9
 02b6d6: 6b                         |                                       i32.sub
 02b6d7: 20 10                      |                                       local.get 16
 02b6d9: 41 78                      |                                       i32.const 4294967288
 02b6db: 6a                         |                                       i32.add
 02b6dc: 28 02 00                   |                                       i32.load 2 0
 02b6df: 22 12                      |                                       local.tee 18
 02b6e1: 4f                         |                                       i32.ge_u
 02b6e2: 0d 01                      |                                       br_if 1
 02b6e4: 20 04                      |                                       local.get 4
 02b6e6: 20 09                      |                                       local.get 9
 02b6e8: 20 12                      |                                       local.get 18
 02b6ea: 10 cd 80 80 80 00          |                                       call 77 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h87e9026fba10094fE>
 02b6f0: 20 04                      |                                       local.get 4
 02b6f2: 28 02 08                   |                                       i32.load 2 8
 02b6f5: 21 09                      |                                       local.set 9
 02b6f7: 0c 03                      |                                       br 3
 02b6f9: 0b                         |                                     end
 02b6fa: 20 0e                      |                                     local.get 14
 02b6fc: 21 0c                      |                                     local.set 12
 02b6fe: 20 0d                      |                                     local.get 13
 02b700: 20 0e                      |                                     local.get 14
 02b702: 47                         |                                     i32.ne
 02b703: 0d 01                      |                                     br_if 1
 02b705: 0c 08                      |                                     br 8
 02b707: 0b                         |                                   end
 02b708: 0b                         |                                 end
 02b709: 20 12                      |                                 local.get 18
 02b70b: 45                         |                                 i32.eqz
 02b70c: 0d 01                      |                                 br_if 1
 02b70e: 0b                         |                               end
 02b70f: 20 12                      |                               local.get 18
 02b711: 41 7f                      |                               i32.const 4294967295
 02b713: 6a                         |                               i32.add
 02b714: 41 ff ff ff ff 01          |                               i32.const 536870911
 02b71a: 71                         |                               i32.and
 02b71b: 21 13                      |                               local.set 19
 02b71d: 20 04                      |                               local.get 4
 02b71f: 28 02 00                   |                               i32.load 2 0
 02b722: 20 09                      |                               local.get 9
 02b724: 41 03                      |                               i32.const 3
 02b726: 74                         |                               i32.shl
 02b727: 6a                         |                               i32.add
 02b728: 21 01                      |                               local.set 1
 02b72a: 20 11                      |                               local.get 17
 02b72c: 21 08                      |                               local.set 8
 02b72e: 02 40                      |                               block
 02b730: 20 12                      |                                 local.get 18
 02b732: 41 07                      |                                 i32.const 7
 02b734: 71                         |                                 i32.and
 02b735: 22 0c                      |                                 local.tee 12
 02b737: 45                         |                                 i32.eqz
 02b738: 0d 00                      |                                 br_if 0
 02b73a: 03 40                      |                                 loop
 02b73c: 20 01                      |                                   local.get 1
 02b73e: 20 08                      |                                   local.get 8
 02b740: 29 03 00                   |                                   i64.load 3 0
 02b743: 37 03 00                   |                                   i64.store 3 0
 02b746: 20 09                      |                                   local.get 9
 02b748: 41 01                      |                                   i32.const 1
 02b74a: 6a                         |                                   i32.add
 02b74b: 21 09                      |                                   local.set 9
 02b74d: 20 01                      |                                   local.get 1
 02b74f: 41 08                      |                                   i32.const 8
 02b751: 6a                         |                                   i32.add
 02b752: 21 01                      |                                   local.set 1
 02b754: 20 08                      |                                   local.get 8
 02b756: 41 08                      |                                   i32.const 8
 02b758: 6a                         |                                   i32.add
 02b759: 21 08                      |                                   local.set 8
 02b75b: 20 0c                      |                                   local.get 12
 02b75d: 41 7f                      |                                   i32.const 4294967295
 02b75f: 6a                         |                                   i32.add
 02b760: 22 0c                      |                                   local.tee 12
 02b762: 0d 00                      |                                   br_if 0
 02b764: 0b                         |                                 end
 02b765: 0b                         |                               end
 02b766: 20 13                      |                               local.get 19
 02b768: 41 07                      |                               i32.const 7
 02b76a: 49                         |                               i32.lt_u
 02b76b: 0d 00                      |                               br_if 0
 02b76d: 20 11                      |                               local.get 17
 02b76f: 20 12                      |                               local.get 18
 02b771: 41 03                      |                               i32.const 3
 02b773: 74                         |                               i32.shl
 02b774: 6a                         |                               i32.add
 02b775: 21 0c                      |                               local.set 12
 02b777: 03 40                      |                               loop
 02b779: 20 01                      |                                 local.get 1
 02b77b: 20 08                      |                                 local.get 8
 02b77d: 29 03 00                   |                                 i64.load 3 0
 02b780: 37 03 00                   |                                 i64.store 3 0
 02b783: 20 01                      |                                 local.get 1
 02b785: 41 08                      |                                 i32.const 8
 02b787: 6a                         |                                 i32.add
 02b788: 20 08                      |                                 local.get 8
 02b78a: 41 08                      |                                 i32.const 8
 02b78c: 6a                         |                                 i32.add
 02b78d: 29 03 00                   |                                 i64.load 3 0
 02b790: 37 03 00                   |                                 i64.store 3 0
 02b793: 20 01                      |                                 local.get 1
 02b795: 41 10                      |                                 i32.const 16
 02b797: 6a                         |                                 i32.add
 02b798: 20 08                      |                                 local.get 8
 02b79a: 41 10                      |                                 i32.const 16
 02b79c: 6a                         |                                 i32.add
 02b79d: 29 03 00                   |                                 i64.load 3 0
 02b7a0: 37 03 00                   |                                 i64.store 3 0
 02b7a3: 20 01                      |                                 local.get 1
 02b7a5: 41 18                      |                                 i32.const 24
 02b7a7: 6a                         |                                 i32.add
 02b7a8: 20 08                      |                                 local.get 8
 02b7aa: 41 18                      |                                 i32.const 24
 02b7ac: 6a                         |                                 i32.add
 02b7ad: 29 03 00                   |                                 i64.load 3 0
 02b7b0: 37 03 00                   |                                 i64.store 3 0
 02b7b3: 20 01                      |                                 local.get 1
 02b7b5: 41 20                      |                                 i32.const 32
 02b7b7: 6a                         |                                 i32.add
 02b7b8: 20 08                      |                                 local.get 8
 02b7ba: 41 20                      |                                 i32.const 32
 02b7bc: 6a                         |                                 i32.add
 02b7bd: 29 03 00                   |                                 i64.load 3 0
 02b7c0: 37 03 00                   |                                 i64.store 3 0
 02b7c3: 20 01                      |                                 local.get 1
 02b7c5: 41 28                      |                                 i32.const 40
 02b7c7: 6a                         |                                 i32.add
 02b7c8: 20 08                      |                                 local.get 8
 02b7ca: 41 28                      |                                 i32.const 40
 02b7cc: 6a                         |                                 i32.add
 02b7cd: 29 03 00                   |                                 i64.load 3 0
 02b7d0: 37 03 00                   |                                 i64.store 3 0
 02b7d3: 20 01                      |                                 local.get 1
 02b7d5: 41 30                      |                                 i32.const 48
 02b7d7: 6a                         |                                 i32.add
 02b7d8: 20 08                      |                                 local.get 8
 02b7da: 41 30                      |                                 i32.const 48
 02b7dc: 6a                         |                                 i32.add
 02b7dd: 29 03 00                   |                                 i64.load 3 0
 02b7e0: 37 03 00                   |                                 i64.store 3 0
 02b7e3: 20 01                      |                                 local.get 1
 02b7e5: 41 38                      |                                 i32.const 56
 02b7e7: 6a                         |                                 i32.add
 02b7e8: 20 08                      |                                 local.get 8
 02b7ea: 41 38                      |                                 i32.const 56
 02b7ec: 6a                         |                                 i32.add
 02b7ed: 29 03 00                   |                                 i64.load 3 0
 02b7f0: 37 03 00                   |                                 i64.store 3 0
 02b7f3: 20 01                      |                                 local.get 1
 02b7f5: 41 c0 00                   |                                 i32.const 64
 02b7f8: 6a                         |                                 i32.add
 02b7f9: 21 01                      |                                 local.set 1
 02b7fb: 20 09                      |                                 local.get 9
 02b7fd: 41 08                      |                                 i32.const 8
 02b7ff: 6a                         |                                 i32.add
 02b800: 21 09                      |                                 local.set 9
 02b802: 20 08                      |                                 local.get 8
 02b804: 41 c0 00                   |                                 i32.const 64
 02b807: 6a                         |                                 i32.add
 02b808: 22 08                      |                                 local.tee 8
 02b80a: 20 0c                      |                                 local.get 12
 02b80c: 47                         |                                 i32.ne
 02b80d: 0d 00                      |                                 br_if 0
 02b80f: 0b                         |                               end
 02b810: 0b                         |                             end
 02b811: 20 04                      |                             local.get 4
 02b813: 20 09                      |                             local.get 9
 02b815: 36 02 08                   |                             i32.store 2 8
 02b818: 20 10                      |                             local.get 16
 02b81a: 41 7d                      |                             i32.const 4294967293
 02b81c: 6a                         |                             i32.add
 02b81d: 2d 00 00                   |                             i32.load8_u 0 0
 02b820: 0d 01                      |                             br_if 1
 02b822: 20 10                      |                             local.get 16
 02b824: 41 60                      |                             i32.const 4294967264
 02b826: 6a                         |                             i32.add
 02b827: 28 02 00                   |                             i32.load 2 0
 02b82a: 22 08                      |                             local.tee 8
 02b82c: 45                         |                             i32.eqz
 02b82d: 0d 01                      |                             br_if 1
 02b82f: 20 10                      |                             local.get 16
 02b831: 41 58                      |                             i32.const 4294967256
 02b833: 6a                         |                             i32.add
 02b834: 28 02 00                   |                             i32.load 2 0
 02b837: 21 01                      |                             local.set 1
 02b839: 20 08                      |                             local.get 8
 02b83b: 41 03                      |                             i32.const 3
 02b83d: 74                         |                             i32.shl
 02b83e: 21 08                      |                             local.set 8
 02b840: 03 40                      |                             loop
 02b842: 02 40                      |                               block
 02b844: 20 01                      |                                 local.get 1
 02b846: 29 03 00                   |                                 i64.load 3 0
 02b849: 22 0f                      |                                 local.tee 15
 02b84b: 20 03                      |                                 local.get 3
 02b84d: 51                         |                                 i64.eq
 02b84e: 0d 00                      |                                 br_if 0
 02b850: 02 40                      |                                 block
 02b852: 20 09                      |                                   local.get 9
 02b854: 20 04                      |                                   local.get 4
 02b856: 28 02 04                   |                                   i32.load 2 4
 02b859: 47                         |                                   i32.ne
 02b85a: 0d 00                      |                                   br_if 0
 02b85c: 20 04                      |                                   local.get 4
 02b85e: 20 09                      |                                   local.get 9
 02b860: 10 d7 80 80 80 00          |                                   call 87 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h8fbcfd7ffafeb64dE>
 02b866: 20 04                      |                                   local.get 4
 02b868: 28 02 08                   |                                   i32.load 2 8
 02b86b: 21 09                      |                                   local.set 9
 02b86d: 0b                         |                                 end
 02b86e: 20 04                      |                                 local.get 4
 02b870: 28 02 00                   |                                 i32.load 2 0
 02b873: 20 09                      |                                 local.get 9
 02b875: 41 03                      |                                 i32.const 3
 02b877: 74                         |                                 i32.shl
 02b878: 6a                         |                                 i32.add
 02b879: 20 0f                      |                                 local.get 15
 02b87b: 37 03 00                   |                                 i64.store 3 0
 02b87e: 20 04                      |                                 local.get 4
 02b880: 20 04                      |                                 local.get 4
 02b882: 28 02 08                   |                                 i32.load 2 8
 02b885: 41 01                      |                                 i32.const 1
 02b887: 6a                         |                                 i32.add
 02b888: 22 09                      |                                 local.tee 9
 02b88a: 36 02 08                   |                                 i32.store 2 8
 02b88d: 0b                         |                               end
 02b88e: 20 01                      |                               local.get 1
 02b890: 41 08                      |                               i32.const 8
 02b892: 6a                         |                               i32.add
 02b893: 21 01                      |                               local.set 1
 02b895: 20 08                      |                               local.get 8
 02b897: 41 78                      |                               i32.const 4294967288
 02b899: 6a                         |                               i32.add
 02b89a: 22 08                      |                               local.tee 8
 02b89c: 45                         |                               i32.eqz
 02b89d: 0d 02                      |                               br_if 2
 02b89f: 0c 00                      |                               br 0
 02b8a1: 0b                         |                             end
 02b8a2: 0b                         |                           end
 02b8a3: 41 cc bc c0 80 00          |                           i32.const 1056332
 02b8a9: 41 e3 00                   |                           i32.const 99
 02b8ac: 41 f0 be c0 80 00          |                           i32.const 1056624
 02b8b2: 10 bb 86 80 80 00          |                           call 827 <_ZN4core6option13expect_failed17h492d2d279a279116E>
 02b8b8: 00                         |                           unreachable
 02b8b9: 0b                         |                         end
 02b8ba: 20 0e                      |                         local.get 14
 02b8bc: 20 0d                      |                         local.get 13
 02b8be: 47                         |                         i32.ne
 02b8bf: 0d 00                      |                         br_if 0
 02b8c1: 0c 02                      |                         br 2
 02b8c3: 0b                         |                       end
 02b8c4: 0b                         |                     end
 02b8c5: 20 0b                      |                     local.get 11
 02b8c7: 41 08                      |                     i32.const 8
 02b8c9: 10 83 86 80 80 00          |                     call 771 <_ZN5alloc5alloc18handle_alloc_error17hc1d2868d8bd0f014E>
 02b8cf: 00                         |                     unreachable
 02b8d0: 0b                         |                   end
 02b8d1: 20 0a                      |                   local.get 10
 02b8d3: 41 10                      |                   i32.const 16
 02b8d5: 6a                         |                   i32.add
 02b8d6: 28 02 00                   |                   i32.load 2 0
 02b8d9: 21 02                      |                   local.set 2
 02b8db: 02 40                      |                   block
 02b8dd: 02 40                      |                     block
 02b8df: 02 40                      |                       block
 02b8e1: 20 04                      |                         local.get 4
 02b8e3: 28 02 04                   |                         i32.load 2 4
 02b8e6: 20 09                      |                         local.get 9
 02b8e8: 6b                         |                         i32.sub
 02b8e9: 20 0a                      |                         local.get 10
 02b8eb: 41 18                      |                         i32.const 24
 02b8ed: 6a                         |                         i32.add
 02b8ee: 28 02 00                   |                         i32.load 2 0
 02b8f1: 22 0c                      |                         local.tee 12
 02b8f3: 4f                         |                         i32.ge_u
 02b8f4: 0d 00                      |                         br_if 0
 02b8f6: 20 04                      |                         local.get 4
 02b8f8: 20 09                      |                         local.get 9
 02b8fa: 20 0c                      |                         local.get 12
 02b8fc: 10 cd 80 80 80 00          |                         call 77 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h87e9026fba10094fE>
 02b902: 20 04                      |                         local.get 4
 02b904: 28 02 08                   |                         i32.load 2 8
 02b907: 21 09                      |                         local.set 9
 02b909: 0c 01                      |                         br 1
 02b90b: 0b                         |                       end
 02b90c: 20 0c                      |                       local.get 12
 02b90e: 45                         |                       i32.eqz
 02b90f: 0d 01                      |                       br_if 1
 02b911: 0b                         |                     end
 02b912: 20 0c                      |                     local.get 12
 02b914: 41 7f                      |                     i32.const 4294967295
 02b916: 6a                         |                     i32.add
 02b917: 41 ff ff ff ff 01          |                     i32.const 536870911
 02b91d: 71                         |                     i32.and
 02b91e: 21 0e                      |                     local.set 14
 02b920: 20 04                      |                     local.get 4
 02b922: 28 02 00                   |                     i32.load 2 0
 02b925: 20 09                      |                     local.get 9
 02b927: 41 03                      |                     i32.const 3
 02b929: 74                         |                     i32.shl
 02b92a: 6a                         |                     i32.add
 02b92b: 21 01                      |                     local.set 1
 02b92d: 02 40                      |                     block
 02b92f: 02 40                      |                       block
 02b931: 20 0c                      |                         local.get 12
 02b933: 41 07                      |                         i32.const 7
 02b935: 71                         |                         i32.and
 02b936: 22 0b                      |                         local.tee 11
 02b938: 0d 00                      |                         br_if 0
 02b93a: 20 02                      |                         local.get 2
 02b93c: 21 08                      |                         local.set 8
 02b93e: 0c 01                      |                         br 1
 02b940: 0b                         |                       end
 02b941: 20 02                      |                       local.get 2
 02b943: 21 08                      |                       local.set 8
 02b945: 03 40                      |                       loop
 02b947: 20 01                      |                         local.get 1
 02b949: 20 08                      |                         local.get 8
 02b94b: 29 03 00                   |                         i64.load 3 0
 02b94e: 37 03 00                   |                         i64.store 3 0
 02b951: 20 09                      |                         local.get 9
 02b953: 41 01                      |                         i32.const 1
 02b955: 6a                         |                         i32.add
 02b956: 21 09                      |                         local.set 9
 02b958: 20 01                      |                         local.get 1
 02b95a: 41 08                      |                         i32.const 8
 02b95c: 6a                         |                         i32.add
 02b95d: 21 01                      |                         local.set 1
 02b95f: 20 08                      |                         local.get 8
 02b961: 41 08                      |                         i32.const 8
 02b963: 6a                         |                         i32.add
 02b964: 21 08                      |                         local.set 8
 02b966: 20 0b                      |                         local.get 11
 02b968: 41 7f                      |                         i32.const 4294967295
 02b96a: 6a                         |                         i32.add
 02b96b: 22 0b                      |                         local.tee 11
 02b96d: 0d 00                      |                         br_if 0
 02b96f: 0b                         |                       end
 02b970: 0b                         |                     end
 02b971: 20 0e                      |                     local.get 14
 02b973: 41 07                      |                     i32.const 7
 02b975: 49                         |                     i32.lt_u
 02b976: 0d 00                      |                     br_if 0
 02b978: 20 02                      |                     local.get 2
 02b97a: 20 0c                      |                     local.get 12
 02b97c: 41 03                      |                     i32.const 3
 02b97e: 74                         |                     i32.shl
 02b97f: 6a                         |                     i32.add
 02b980: 21 0b                      |                     local.set 11
 02b982: 03 40                      |                     loop
 02b984: 20 01                      |                       local.get 1
 02b986: 20 08                      |                       local.get 8
 02b988: 29 03 00                   |                       i64.load 3 0
 02b98b: 37 03 00                   |                       i64.store 3 0
 02b98e: 20 01                      |                       local.get 1
 02b990: 41 08                      |                       i32.const 8
 02b992: 6a                         |                       i32.add
 02b993: 20 08                      |                       local.get 8
 02b995: 41 08                      |                       i32.const 8
 02b997: 6a                         |                       i32.add
 02b998: 29 03 00                   |                       i64.load 3 0
 02b99b: 37 03 00                   |                       i64.store 3 0
 02b99e: 20 01                      |                       local.get 1
 02b9a0: 41 10                      |                       i32.const 16
 02b9a2: 6a                         |                       i32.add
 02b9a3: 20 08                      |                       local.get 8
 02b9a5: 41 10                      |                       i32.const 16
 02b9a7: 6a                         |                       i32.add
 02b9a8: 29 03 00                   |                       i64.load 3 0
 02b9ab: 37 03 00                   |                       i64.store 3 0
 02b9ae: 20 01                      |                       local.get 1
 02b9b0: 41 18                      |                       i32.const 24
 02b9b2: 6a                         |                       i32.add
 02b9b3: 20 08                      |                       local.get 8
 02b9b5: 41 18                      |                       i32.const 24
 02b9b7: 6a                         |                       i32.add
 02b9b8: 29 03 00                   |                       i64.load 3 0
 02b9bb: 37 03 00                   |                       i64.store 3 0
 02b9be: 20 01                      |                       local.get 1
 02b9c0: 41 20                      |                       i32.const 32
 02b9c2: 6a                         |                       i32.add
 02b9c3: 20 08                      |                       local.get 8
 02b9c5: 41 20                      |                       i32.const 32
 02b9c7: 6a                         |                       i32.add
 02b9c8: 29 03 00                   |                       i64.load 3 0
 02b9cb: 37 03 00                   |                       i64.store 3 0
 02b9ce: 20 01                      |                       local.get 1
 02b9d0: 41 28                      |                       i32.const 40
 02b9d2: 6a                         |                       i32.add
 02b9d3: 20 08                      |                       local.get 8
 02b9d5: 41 28                      |                       i32.const 40
 02b9d7: 6a                         |                       i32.add
 02b9d8: 29 03 00                   |                       i64.load 3 0
 02b9db: 37 03 00                   |                       i64.store 3 0
 02b9de: 20 01                      |                       local.get 1
 02b9e0: 41 30                      |                       i32.const 48
 02b9e2: 6a                         |                       i32.add
 02b9e3: 20 08                      |                       local.get 8
 02b9e5: 41 30                      |                       i32.const 48
 02b9e7: 6a                         |                       i32.add
 02b9e8: 29 03 00                   |                       i64.load 3 0
 02b9eb: 37 03 00                   |                       i64.store 3 0
 02b9ee: 20 01                      |                       local.get 1
 02b9f0: 41 38                      |                       i32.const 56
 02b9f2: 6a                         |                       i32.add
 02b9f3: 20 08                      |                       local.get 8
 02b9f5: 41 38                      |                       i32.const 56
 02b9f7: 6a                         |                       i32.add
 02b9f8: 29 03 00                   |                       i64.load 3 0
 02b9fb: 37 03 00                   |                       i64.store 3 0
 02b9fe: 20 01                      |                       local.get 1
 02ba00: 41 c0 00                   |                       i32.const 64
 02ba03: 6a                         |                       i32.add
 02ba04: 21 01                      |                       local.set 1
 02ba06: 20 09                      |                       local.get 9
 02ba08: 41 08                      |                       i32.const 8
 02ba0a: 6a                         |                       i32.add
 02ba0b: 21 09                      |                       local.set 9
 02ba0d: 20 08                      |                       local.get 8
 02ba0f: 41 c0 00                   |                       i32.const 64
 02ba12: 6a                         |                       i32.add
 02ba13: 22 08                      |                       local.tee 8
 02ba15: 20 0b                      |                       local.get 11
 02ba17: 47                         |                       i32.ne
 02ba18: 0d 00                      |                       br_if 0
 02ba1a: 0b                         |                     end
 02ba1b: 0b                         |                   end
 02ba1c: 20 04                      |                   local.get 4
 02ba1e: 28 02 00                   |                   i32.load 2 0
 02ba21: 21 02                      |                   local.set 2
 02ba23: 20 04                      |                   local.get 4
 02ba25: 28 02 04                   |                   i32.load 2 4
 02ba28: 21 0e                      |                   local.set 14
 02ba2a: 0c 06                      |                   br 6
 02ba2c: 0b                         |                 end
 02ba2d: 20 02                      |                 local.get 2
 02ba2f: 28 02 a8 02                |                 i32.load 2 296
 02ba33: 41 70                      |                 i32.const 4294967280
 02ba35: 6a                         |                 i32.add
 02ba36: 21 08                      |                 local.set 8
 02ba38: 20 02                      |                 local.get 2
 02ba3a: 41 b0 02                   |                 i32.const 304
 02ba3d: 6a                         |                 i32.add
 02ba3e: 28 02 00                   |                 i32.load 2 0
 02ba41: 41 38                      |                 i32.const 56
 02ba43: 6c                         |                 i32.mul
 02ba44: 21 01                      |                 local.set 1
 02ba46: 03 40                      |                 loop
 02ba48: 02 40                      |                   block
 02ba4a: 20 01                      |                     local.get 1
 02ba4c: 0d 00                      |                     br_if 0
 02ba4e: 41 08                      |                     i32.const 8
 02ba50: 21 02                      |                     local.set 2
 02ba52: 0c 05                      |                     br 5
 02ba54: 0b                         |                   end
 02ba55: 20 01                      |                   local.get 1
 02ba57: 41 48                      |                   i32.const 4294967240
 02ba59: 6a                         |                   i32.add
 02ba5a: 21 01                      |                   local.set 1
 02ba5c: 20 08                      |                   local.get 8
 02ba5e: 41 10                      |                   i32.const 16
 02ba60: 6a                         |                   i32.add
 02ba61: 21 09                      |                   local.set 9
 02ba63: 20 08                      |                   local.get 8
 02ba65: 41 38                      |                   i32.const 56
 02ba67: 6a                         |                   i32.add
 02ba68: 22 0b                      |                   local.tee 11
 02ba6a: 21 08                      |                   local.set 8
 02ba6c: 20 09                      |                   local.get 9
 02ba6e: 29 03 00                   |                   i64.load 3 0
 02ba71: 20 03                      |                   local.get 3
 02ba73: 52                         |                   i64.ne
 02ba74: 0d 00                      |                   br_if 0
 02ba76: 0b                         |                 end
 02ba77: 20 0b                      |                 local.get 11
 02ba79: 41 08                      |                 i32.const 8
 02ba7b: 6a                         |                 i32.add
 02ba7c: 28 02 00                   |                 i32.load 2 0
 02ba7f: 22 09                      |                 local.tee 9
 02ba81: 41 ff ff ff ff 01          |                 i32.const 536870911
 02ba87: 71                         |                 i32.and
 02ba88: 20 09                      |                 local.get 9
 02ba8a: 47                         |                 i32.ne
 02ba8b: 0d 00                      |                 br_if 0
 02ba8d: 20 09                      |                 local.get 9
 02ba8f: 41 03                      |                 i32.const 3
 02ba91: 74                         |                 i32.shl
 02ba92: 22 08                      |                 local.tee 8
 02ba94: 41 00                      |                 i32.const 0
 02ba96: 48                         |                 i32.lt_s
 02ba97: 0d 00                      |                 br_if 0
 02ba99: 20 0b                      |                 local.get 11
 02ba9b: 28 02 00                   |                 i32.load 2 0
 02ba9e: 21 01                      |                 local.set 1
 02baa0: 20 08                      |                 local.get 8
 02baa2: 0d 01                      |                 br_if 1
 02baa4: 41 08                      |                 i32.const 8
 02baa6: 21 02                      |                 local.set 2
 02baa8: 0c 02                      |                 br 2
 02baaa: 0b                         |               end
 02baab: 10 84 86 80 80 00          |               call 772 <_ZN5alloc7raw_vec17capacity_overflow17h0f57087aa53660d1E>
 02bab1: 00                         |               unreachable
 02bab2: 0b                         |             end
 02bab3: 20 08                      |             local.get 8
 02bab5: 41 08                      |             i32.const 8
 02bab7: 10 b1 80 80 80 00          |             call 49 <__rust_alloc>
 02babd: 22 02                      |             local.tee 2
 02babf: 45                         |             i32.eqz
 02bac0: 0d 05                      |             br_if 5
 02bac2: 0b                         |           end
 02bac3: 20 09                      |           local.get 9
 02bac5: 0d 01                      |           br_if 1
 02bac7: 0b                         |         end
 02bac8: 41 00                      |         i32.const 0
 02baca: 21 09                      |         local.set 9
 02bacc: 41 00                      |         i32.const 0
 02bace: 21 0e                      |         local.set 14
 02bad0: 0c 01                      |         br 1
 02bad2: 0b                         |       end
 02bad3: 20 09                      |       local.get 9
 02bad5: 41 03                      |       i32.const 3
 02bad7: 74                         |       i32.shl
 02bad8: 21 08                      |       local.set 8
 02bada: 20 02                      |       local.get 2
 02badc: 21 0b                      |       local.set 11
 02bade: 20 09                      |       local.get 9
 02bae0: 21 0c                      |       local.set 12
 02bae2: 03 40                      |       loop
 02bae4: 02 40                      |         block
 02bae6: 20 08                      |           local.get 8
 02bae8: 0d 00                      |           br_if 0
 02baea: 20 09                      |           local.get 9
 02baec: 21 0e                      |           local.set 14
 02baee: 0c 02                      |           br 2
 02baf0: 0b                         |         end
 02baf1: 20 0b                      |         local.get 11
 02baf3: 20 01                      |         local.get 1
 02baf5: 29 03 00                   |         i64.load 3 0
 02baf8: 37 03 00                   |         i64.store 3 0
 02bafb: 20 0b                      |         local.get 11
 02bafd: 41 08                      |         i32.const 8
 02baff: 6a                         |         i32.add
 02bb00: 21 0b                      |         local.set 11
 02bb02: 20 08                      |         local.get 8
 02bb04: 41 78                      |         i32.const 4294967288
 02bb06: 6a                         |         i32.add
 02bb07: 21 08                      |         local.set 8
 02bb09: 20 01                      |         local.get 1
 02bb0b: 41 08                      |         i32.const 8
 02bb0d: 6a                         |         i32.add
 02bb0e: 21 01                      |         local.set 1
 02bb10: 20 0c                      |         local.get 12
 02bb12: 41 7f                      |         i32.const 4294967295
 02bb14: 6a                         |         i32.add
 02bb15: 22 0c                      |         local.tee 12
 02bb17: 0d 00                      |         br_if 0
 02bb19: 0b                         |       end
 02bb1a: 20 09                      |       local.get 9
 02bb1c: 21 0e                      |       local.set 14
 02bb1e: 0b                         |     end
 02bb1f: 02 40                      |     block
 02bb21: 20 05                      |       local.get 5
 02bb23: 41 04                      |       i32.const 4
 02bb25: 6a                         |       i32.add
 02bb26: 28 02 00                   |       i32.load 2 0
 02bb29: 22 0b                      |       local.tee 11
 02bb2b: 20 05                      |       local.get 5
 02bb2d: 28 02 00                   |       i32.load 2 0
 02bb30: 22 0c                      |       local.tee 12
 02bb32: 20 07                      |       local.get 7
 02bb34: a7                         |       i32.wrap_i64
 02bb35: 22 0a                      |       local.tee 10
 02bb37: 71                         |       i32.and
 02bb38: 22 08                      |       local.tee 8
 02bb3a: 6a                         |       i32.add
 02bb3b: 29 00 00                   |       i64.load 0 0
 02bb3e: 42 80 81 82 84 88 90 a0 c0 |       i64.const 9259542123273814144
 02bb47: 80 7f                      | 
 02bb49: 83                         |       i64.and
 02bb4a: 22 0f                      |       local.tee 15
 02bb4c: 42 00                      |       i64.const 0
 02bb4e: 52                         |       i64.ne
 02bb4f: 0d 00                      |       br_if 0
 02bb51: 41 08                      |       i32.const 8
 02bb53: 21 01                      |       local.set 1
 02bb55: 03 40                      |       loop
 02bb57: 20 08                      |         local.get 8
 02bb59: 20 01                      |         local.get 1
 02bb5b: 6a                         |         i32.add
 02bb5c: 21 08                      |         local.set 8
 02bb5e: 20 01                      |         local.get 1
 02bb60: 41 08                      |         i32.const 8
 02bb62: 6a                         |         i32.add
 02bb63: 21 01                      |         local.set 1
 02bb65: 20 0b                      |         local.get 11
 02bb67: 20 08                      |         local.get 8
 02bb69: 20 0c                      |         local.get 12
 02bb6b: 71                         |         i32.and
 02bb6c: 22 08                      |         local.tee 8
 02bb6e: 6a                         |         i32.add
 02bb6f: 29 00 00                   |         i64.load 0 0
 02bb72: 42 80 81 82 84 88 90 a0 c0 |         i64.const 9259542123273814144
 02bb7b: 80 7f                      | 
 02bb7d: 83                         |         i64.and
 02bb7e: 22 0f                      |         local.tee 15
 02bb80: 50                         |         i64.eqz
 02bb81: 0d 00                      |         br_if 0
 02bb83: 0b                         |       end
 02bb84: 0b                         |     end
 02bb85: 02 40                      |     block
 02bb87: 20 0b                      |       local.get 11
 02bb89: 20 0f                      |       local.get 15
 02bb8b: 7a                         |       i64.ctz
 02bb8c: a7                         |       i32.wrap_i64
 02bb8d: 41 03                      |       i32.const 3
 02bb8f: 76                         |       i32.shr_u
 02bb90: 20 08                      |       local.get 8
 02bb92: 6a                         |       i32.add
 02bb93: 20 0c                      |       local.get 12
 02bb95: 71                         |       i32.and
 02bb96: 22 01                      |       local.tee 1
 02bb98: 6a                         |       i32.add
 02bb99: 2c 00 00                   |       i32.load8_s 0 0
 02bb9c: 22 08                      |       local.tee 8
 02bb9e: 41 7f                      |       i32.const 4294967295
 02bba0: 4c                         |       i32.le_s
 02bba1: 0d 00                      |       br_if 0
 02bba3: 20 0b                      |       local.get 11
 02bba5: 20 0b                      |       local.get 11
 02bba7: 29 03 00                   |       i64.load 3 0
 02bbaa: 42 80 81 82 84 88 90 a0 c0 |       i64.const 9259542123273814144
 02bbb3: 80 7f                      | 
 02bbb5: 83                         |       i64.and
 02bbb6: 7a                         |       i64.ctz
 02bbb7: a7                         |       i32.wrap_i64
 02bbb8: 41 03                      |       i32.const 3
 02bbba: 76                         |       i32.shr_u
 02bbbb: 22 01                      |       local.tee 1
 02bbbd: 6a                         |       i32.add
 02bbbe: 2d 00 00                   |       i32.load8_u 0 0
 02bbc1: 21 08                      |       local.set 8
 02bbc3: 0b                         |     end
 02bbc4: 20 0b                      |     local.get 11
 02bbc6: 20 01                      |     local.get 1
 02bbc8: 6a                         |     i32.add
 02bbc9: 20 0a                      |     local.get 10
 02bbcb: 41 19                      |     i32.const 25
 02bbcd: 76                         |     i32.shr_u
 02bbce: 22 0a                      |     local.tee 10
 02bbd0: 3a 00 00                   |     i32.store8 0 0
 02bbd3: 20 05                      |     local.get 5
 02bbd5: 20 05                      |     local.get 5
 02bbd7: 28 02 08                   |     i32.load 2 8
 02bbda: 20 08                      |     local.get 8
 02bbdc: 41 01                      |     i32.const 1
 02bbde: 71                         |     i32.and
 02bbdf: 6b                         |     i32.sub
 02bbe0: 36 02 08                   |     i32.store 2 8
 02bbe3: 20 01                      |     local.get 1
 02bbe5: 41 78                      |     i32.const 4294967288
 02bbe7: 6a                         |     i32.add
 02bbe8: 20 0c                      |     local.get 12
 02bbea: 71                         |     i32.and
 02bbeb: 20 0b                      |     local.get 11
 02bbed: 6a                         |     i32.add
 02bbee: 41 08                      |     i32.const 8
 02bbf0: 6a                         |     i32.add
 02bbf1: 20 0a                      |     local.get 10
 02bbf3: 3a 00 00                   |     i32.store8 0 0
 02bbf6: 20 0b                      |     local.get 11
 02bbf8: 41 00                      |     i32.const 0
 02bbfa: 20 01                      |     local.get 1
 02bbfc: 6b                         |     i32.sub
 02bbfd: 41 18                      |     i32.const 24
 02bbff: 6c                         |     i32.mul
 02bc00: 6a                         |     i32.add
 02bc01: 22 08                      |     local.tee 8
 02bc03: 41 78                      |     i32.const 4294967288
 02bc05: 6a                         |     i32.add
 02bc06: 20 09                      |     local.get 9
 02bc08: 36 02 00                   |     i32.store 2 0
 02bc0b: 20 08                      |     local.get 8
 02bc0d: 41 70                      |     i32.const 4294967280
 02bc0f: 6a                         |     i32.add
 02bc10: 22 01                      |     local.tee 1
 02bc12: 20 0e                      |     local.get 14
 02bc14: 36 02 04                   |     i32.store 2 4
 02bc17: 20 01                      |     local.get 1
 02bc19: 20 02                      |     local.get 2
 02bc1b: 36 02 00                   |     i32.store 2 0
 02bc1e: 20 08                      |     local.get 8
 02bc20: 41 68                      |     i32.const 4294967272
 02bc22: 6a                         |     i32.add
 02bc23: 20 06                      |     local.get 6
 02bc25: 37 03 00                   |     i64.store 3 0
 02bc28: 20 05                      |     local.get 5
 02bc2a: 20 05                      |     local.get 5
 02bc2c: 28 02 0c                   |     i32.load 2 12
 02bc2f: 41 01                      |     i32.const 1
 02bc31: 6a                         |     i32.add
 02bc32: 36 02 0c                   |     i32.store 2 12
 02bc35: 0b                         |   end
 02bc36: 20 00                      |   local.get 0
 02bc38: 20 01                      |   local.get 1
 02bc3a: 28 02 08                   |   i32.load 2 8
 02bc3d: 36 02 04                   |   i32.store 2 4
 02bc40: 20 00                      |   local.get 0
 02bc42: 20 01                      |   local.get 1
 02bc44: 28 02 00                   |   i32.load 2 0
 02bc47: 36 02 00                   |   i32.store 2 0
 02bc4a: 20 04                      |   local.get 4
 02bc4c: 41 20                      |   i32.const 32
 02bc4e: 6a                         |   i32.add
 02bc4f: 24 80 80 80 80 00          |   global.set 0 <__stack_pointer>
 02bc55: 0f                         |   return
 02bc56: 0b                         | end
 02bc57: 20 08                      | local.get 8
 02bc59: 41 08                      | i32.const 8
 02bc5b: 10 83 86 80 80 00          | call 771 <_ZN5alloc5alloc18handle_alloc_error17hc1d2868d8bd0f014E>
 02bc61: 00                         | unreachable
 02bc62: 0b                         | end
