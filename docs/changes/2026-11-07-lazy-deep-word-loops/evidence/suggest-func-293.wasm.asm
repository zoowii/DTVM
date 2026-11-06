0266dd func[293] <_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h91593f1286ab23e1E.llvm.10787888352265451419>:
 0266de: 02 7f                      | local[4..5] type=i32
 0266e0: 01 7e                      | local[6] type=i64
 0266e2: 0b 7f                      | local[7..17] type=i32
 0266e4: 02 7e                      | local[18..19] type=i64
 0266e6: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 0266ec: 41 d0 00                   | i32.const 80
 0266ef: 6b                         | i32.sub
 0266f0: 22 04                      | local.tee 4
 0266f2: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 0266f8: 02 40                      | block
 0266fa: 02 40                      |   block
 0266fc: 20 01                      |     local.get 1
 0266fe: 28 02 0c                   |     i32.load 2 12
 026701: 22 05                      |     local.tee 5
 026703: 20 02                      |     local.get 2
 026705: 6a                         |     i32.add
 026706: 22 02                      |     local.tee 2
 026708: 20 05                      |     local.get 5
 02670a: 4f                         |     i32.ge_u
 02670b: 0d 00                      |     br_if 0
 02670d: 20 04                      |     local.get 4
 02670f: 41 08                      |     i32.const 8
 026711: 6a                         |     i32.add
 026712: 41 01                      |     i32.const 1
 026714: 10 d7 85 80 80 00          |     call 727 <_ZN9hashbrown3raw11Fallibility17capacity_overflow17h92dbfe3f0edf150eE>
 02671a: 20 04                      |     local.get 4
 02671c: 29 03 08                   |     i64.load 3 8
 02671f: 21 06                      |     local.set 6
 026721: 20 00                      |     local.get 0
 026723: 41 01                      |     i32.const 1
 026725: 36 02 00                   |     i32.store 2 0
 026728: 20 00                      |     local.get 0
 02672a: 20 06                      |     local.get 6
 02672c: 37 02 04                   |     i64.store 2 4
 02672f: 0c 01                      |     br 1
 026731: 0b                         |   end
 026732: 02 40                      |   block
 026734: 02 40                      |     block
 026736: 02 40                      |       block
 026738: 02 40                      |         block
 02673a: 02 40                      |           block
 02673c: 02 40                      |             block
 02673e: 20 02                      |               local.get 2
 026740: 20 01                      |               local.get 1
 026742: 28 02 00                   |               i32.load 2 0
 026745: 22 07                      |               local.tee 7
 026747: 20 07                      |               local.get 7
 026749: 41 01                      |               i32.const 1
 02674b: 6a                         |               i32.add
 02674c: 22 08                      |               local.tee 8
 02674e: 41 03                      |               i32.const 3
 026750: 76                         |               i32.shr_u
 026751: 41 07                      |               i32.const 7
 026753: 6c                         |               i32.mul
 026754: 20 07                      |               local.get 7
 026756: 41 08                      |               i32.const 8
 026758: 49                         |               i32.lt_u
 026759: 1b                         |               select
 02675a: 22 09                      |               local.tee 9
 02675c: 41 01                      |               i32.const 1
 02675e: 76                         |               i32.shr_u
 02675f: 4d                         |               i32.le_u
 026760: 0d 00                      |               br_if 0
 026762: 20 02                      |               local.get 2
 026764: 20 09                      |               local.get 9
 026766: 41 01                      |               i32.const 1
 026768: 6a                         |               i32.add
 026769: 22 0a                      |               local.tee 10
 02676b: 20 02                      |               local.get 2
 02676d: 20 0a                      |               local.get 10
 02676f: 4b                         |               i32.gt_u
 026770: 1b                         |               select
 026771: 22 02                      |               local.tee 2
 026773: 41 08                      |               i32.const 8
 026775: 49                         |               i32.lt_u
 026776: 0d 01                      |               br_if 1
 026778: 02 40                      |               block
 02677a: 20 02                      |                 local.get 2
 02677c: 41 ff ff ff ff 01          |                 i32.const 536870911
 026782: 71                         |                 i32.and
 026783: 20 02                      |                 local.get 2
 026785: 47                         |                 i32.ne
 026786: 0d 00                      |                 br_if 0
 026788: 41 7f                      |                 i32.const 4294967295
 02678a: 20 02                      |                 local.get 2
 02678c: 41 03                      |                 i32.const 3
 02678e: 74                         |                 i32.shl
 02678f: 41 07                      |                 i32.const 7
 026791: 6e                         |                 i32.div_u
 026792: 41 7f                      |                 i32.const 4294967295
 026794: 6a                         |                 i32.add
 026795: 67                         |                 i32.clz
 026796: 76                         |                 i32.shr_u
 026797: 41 01                      |                 i32.const 1
 026799: 6a                         |                 i32.add
 02679a: 21 02                      |                 local.set 2
 02679c: 0c 03                      |                 br 3
 02679e: 0b                         |               end
 02679f: 20 04                      |               local.get 4
 0267a1: 41 28                      |               i32.const 40
 0267a3: 6a                         |               i32.add
 0267a4: 41 01                      |               i32.const 1
 0267a6: 10 d7 85 80 80 00          |               call 727 <_ZN9hashbrown3raw11Fallibility17capacity_overflow17h92dbfe3f0edf150eE>
 0267ac: 20 04                      |               local.get 4
 0267ae: 28 02 2c                   |               i32.load 2 44
 0267b1: 21 02                      |               local.set 2
 0267b3: 20 04                      |               local.get 4
 0267b5: 28 02 28                   |               i32.load 2 40
 0267b8: 21 0a                      |               local.set 10
 0267ba: 0c 03                      |               br 3
 0267bc: 0b                         |             end
 0267bd: 20 01                      |             local.get 1
 0267bf: 41 04                      |             i32.const 4
 0267c1: 6a                         |             i32.add
 0267c2: 28 02 00                   |             i32.load 2 0
 0267c5: 21 0b                      |             local.set 11
 0267c7: 41 00                      |             i32.const 0
 0267c9: 21 0a                      |             local.set 10
 0267cb: 41 00                      |             i32.const 0
 0267cd: 21 02                      |             local.set 2
 0267cf: 03 40                      |             loop
 0267d1: 02 40                      |               block
 0267d3: 02 40                      |                 block
 0267d5: 02 40                      |                   block
 0267d7: 20 0a                      |                     local.get 10
 0267d9: 41 01                      |                     i32.const 1
 0267db: 71                         |                     i32.and
 0267dc: 0d 00                      |                     br_if 0
 0267de: 20 02                      |                     local.get 2
 0267e0: 20 08                      |                     local.get 8
 0267e2: 4f                         |                     i32.ge_u
 0267e3: 0d 01                      |                     br_if 1
 0267e5: 0c 02                      |                     br 2
 0267e7: 0b                         |                   end
 0267e8: 20 02                      |                   local.get 2
 0267ea: 41 07                      |                   i32.const 7
 0267ec: 6a                         |                   i32.add
 0267ed: 22 0a                      |                   local.tee 10
 0267ef: 20 02                      |                   local.get 2
 0267f1: 49                         |                   i32.lt_u
 0267f2: 0d 00                      |                   br_if 0
 0267f4: 20 0a                      |                   local.get 10
 0267f6: 21 02                      |                   local.set 2
 0267f8: 20 0a                      |                   local.get 10
 0267fa: 20 08                      |                   local.get 8
 0267fc: 49                         |                   i32.lt_u
 0267fd: 0d 01                      |                   br_if 1
 0267ff: 0b                         |                 end
 026800: 02 40                      |                 block
 026802: 02 40                      |                   block
 026804: 02 40                      |                     block
 026806: 20 08                      |                       local.get 8
 026808: 41 08                      |                       i32.const 8
 02680a: 49                         |                       i32.lt_u
 02680b: 0d 00                      |                       br_if 0
 02680d: 20 0b                      |                       local.get 11
 02680f: 20 08                      |                       local.get 8
 026811: 6a                         |                       i32.add
 026812: 20 0b                      |                       local.get 11
 026814: 29 00 00                   |                       i64.load 0 0
 026817: 37 00 00                   |                       i64.store 0 0
 02681a: 0c 01                      |                       br 1
 02681c: 0b                         |                     end
 02681d: 20 0b                      |                     local.get 11
 02681f: 41 08                      |                     i32.const 8
 026821: 6a                         |                     i32.add
 026822: 20 0b                      |                     local.get 11
 026824: 20 08                      |                     local.get 8
 026826: 10 fb 85 80 80 00          |                     call 763 <memmove>
 02682c: 1a                         |                     drop
 02682d: 20 07                      |                     local.get 7
 02682f: 41 7f                      |                     i32.const 4294967295
 026831: 47                         |                     i32.ne
 026832: 0d 00                      |                     br_if 0
 026834: 41 00                      |                     i32.const 0
 026836: 21 09                      |                     local.set 9
 026838: 0c 01                      |                     br 1
 02683a: 0b                         |                   end
 02683b: 41 00                      |                   i32.const 0
 02683d: 21 02                      |                   local.set 2
 02683f: 03 40                      |                   loop
 026841: 02 40                      |                     block
 026843: 20 0b                      |                       local.get 11
 026845: 20 02                      |                       local.get 2
 026847: 22 0c                      |                       local.tee 12
 026849: 6a                         |                       i32.add
 02684a: 22 0d                      |                       local.tee 13
 02684c: 2d 00 00                   |                       i32.load8_u 0 0
 02684f: 41 80 01                   |                       i32.const 128
 026852: 47                         |                       i32.ne
 026853: 0d 00                      |                       br_if 0
 026855: 20 0b                      |                       local.get 11
 026857: 20 0c                      |                       local.get 12
 026859: 41 7f                      |                       i32.const 4294967295
 02685b: 73                         |                       i32.xor
 02685c: 41 18                      |                       i32.const 24
 02685e: 6c                         |                       i32.mul
 02685f: 6a                         |                       i32.add
 026860: 21 0e                      |                       local.set 14
 026862: 20 0b                      |                       local.get 11
 026864: 41 00                      |                       i32.const 0
 026866: 20 0c                      |                       local.get 12
 026868: 6b                         |                       i32.sub
 026869: 41 18                      |                       i32.const 24
 02686b: 6c                         |                       i32.mul
 02686c: 6a                         |                       i32.add
 02686d: 41 68                      |                       i32.const 4294967272
 02686f: 6a                         |                       i32.add
 026870: 21 0f                      |                       local.set 15
 026872: 02 40                      |                       block
 026874: 03 40                      |                         loop
 026876: 20 07                      |                           local.get 7
 026878: 20 03                      |                           local.get 3
 02687a: 20 0f                      |                           local.get 15
 02687c: 10 cc 81 80 80 00          |                           call 204 <_ZN4core4hash11BuildHasher8hash_one17h4ac98b1f107c06aeE>
 026882: a7                         |                           i32.wrap_i64
 026883: 22 10                      |                           local.tee 16
 026885: 71                         |                           i32.and
 026886: 22 08                      |                           local.tee 8
 026888: 21 0a                      |                           local.set 10
 02688a: 02 40                      |                           block
 02688c: 20 0b                      |                             local.get 11
 02688e: 20 08                      |                             local.get 8
 026890: 6a                         |                             i32.add
 026891: 29 00 00                   |                             i64.load 0 0
 026894: 42 80 81 82 84 88 90 a0 c0 |                             i64.const 9259542123273814144
 02689d: 80 7f                      | 
 02689f: 83                         |                             i64.and
 0268a0: 22 06                      |                             local.tee 6
 0268a2: 42 00                      |                             i64.const 0
 0268a4: 52                         |                             i64.ne
 0268a5: 0d 00                      |                             br_if 0
 0268a7: 41 08                      |                             i32.const 8
 0268a9: 21 02                      |                             local.set 2
 0268ab: 20 08                      |                             local.get 8
 0268ad: 21 0a                      |                             local.set 10
 0268af: 03 40                      |                             loop
 0268b1: 20 0a                      |                               local.get 10
 0268b3: 20 02                      |                               local.get 2
 0268b5: 6a                         |                               i32.add
 0268b6: 21 0a                      |                               local.set 10
 0268b8: 20 02                      |                               local.get 2
 0268ba: 41 08                      |                               i32.const 8
 0268bc: 6a                         |                               i32.add
 0268bd: 21 02                      |                               local.set 2
 0268bf: 20 0b                      |                               local.get 11
 0268c1: 20 0a                      |                               local.get 10
 0268c3: 20 07                      |                               local.get 7
 0268c5: 71                         |                               i32.and
 0268c6: 22 0a                      |                               local.tee 10
 0268c8: 6a                         |                               i32.add
 0268c9: 29 00 00                   |                               i64.load 0 0
 0268cc: 42 80 81 82 84 88 90 a0 c0 |                               i64.const 9259542123273814144
 0268d5: 80 7f                      | 
 0268d7: 83                         |                               i64.and
 0268d8: 22 06                      |                               local.tee 6
 0268da: 50                         |                               i64.eqz
 0268db: 0d 00                      |                               br_if 0
 0268dd: 0b                         |                             end
 0268de: 0b                         |                           end
 0268df: 02 40                      |                           block
 0268e1: 20 0b                      |                             local.get 11
 0268e3: 20 06                      |                             local.get 6
 0268e5: 7a                         |                             i64.ctz
 0268e6: a7                         |                             i32.wrap_i64
 0268e7: 41 03                      |                             i32.const 3
 0268e9: 76                         |                             i32.shr_u
 0268ea: 20 0a                      |                             local.get 10
 0268ec: 6a                         |                             i32.add
 0268ed: 20 07                      |                             local.get 7
 0268ef: 71                         |                             i32.and
 0268f0: 22 02                      |                             local.tee 2
 0268f2: 6a                         |                             i32.add
 0268f3: 2c 00 00                   |                             i32.load8_s 0 0
 0268f6: 41 7f                      |                             i32.const 4294967295
 0268f8: 4c                         |                             i32.le_s
 0268f9: 0d 00                      |                             br_if 0
 0268fb: 20 0b                      |                             local.get 11
 0268fd: 29 03 00                   |                             i64.load 3 0
 026900: 42 80 81 82 84 88 90 a0 c0 |                             i64.const 9259542123273814144
 026909: 80 7f                      | 
 02690b: 83                         |                             i64.and
 02690c: 7a                         |                             i64.ctz
 02690d: a7                         |                             i32.wrap_i64
 02690e: 41 03                      |                             i32.const 3
 026910: 76                         |                             i32.shr_u
 026911: 21 02                      |                             local.set 2
 026913: 0b                         |                           end
 026914: 02 40                      |                           block
 026916: 20 02                      |                             local.get 2
 026918: 20 08                      |                             local.get 8
 02691a: 6b                         |                             i32.sub
 02691b: 20 0c                      |                             local.get 12
 02691d: 20 08                      |                             local.get 8
 02691f: 6b                         |                             i32.sub
 026920: 73                         |                             i32.xor
 026921: 20 07                      |                             local.get 7
 026923: 71                         |                             i32.and
 026924: 41 08                      |                             i32.const 8
 026926: 49                         |                             i32.lt_u
 026927: 0d 00                      |                             br_if 0
 026929: 20 0b                      |                             local.get 11
 02692b: 20 02                      |                             local.get 2
 02692d: 41 7f                      |                             i32.const 4294967295
 02692f: 73                         |                             i32.xor
 026930: 41 18                      |                             i32.const 24
 026932: 6c                         |                             i32.mul
 026933: 6a                         |                             i32.add
 026934: 21 0a                      |                             local.set 10
 026936: 20 0b                      |                             local.get 11
 026938: 20 02                      |                             local.get 2
 02693a: 6a                         |                             i32.add
 02693b: 22 08                      |                             local.tee 8
 02693d: 2d 00 00                   |                             i32.load8_u 0 0
 026940: 21 11                      |                             local.set 17
 026942: 20 08                      |                             local.get 8
 026944: 20 10                      |                             local.get 16
 026946: 41 19                      |                             i32.const 25
 026948: 76                         |                             i32.shr_u
 026949: 22 10                      |                             local.tee 16
 02694b: 3a 00 00                   |                             i32.store8 0 0
 02694e: 20 02                      |                             local.get 2
 026950: 41 78                      |                             i32.const 4294967288
 026952: 6a                         |                             i32.add
 026953: 20 07                      |                             local.get 7
 026955: 71                         |                             i32.and
 026956: 20 0b                      |                             local.get 11
 026958: 6a                         |                             i32.add
 026959: 41 08                      |                             i32.const 8
 02695b: 6a                         |                             i32.add
 02695c: 20 10                      |                             local.get 16
 02695e: 3a 00 00                   |                             i32.store8 0 0
 026961: 20 11                      |                             local.get 17
 026963: 41 ff 01                   |                             i32.const 255
 026966: 46                         |                             i32.eq
 026967: 0d 02                      |                             br_if 2
 026969: 20 0e                      |                             local.get 14
 02696b: 29 00 00                   |                             i64.load 0 0
 02696e: 21 06                      |                             local.set 6
 026970: 20 0e                      |                             local.get 14
 026972: 20 0a                      |                             local.get 10
 026974: 29 00 00                   |                             i64.load 0 0
 026977: 37 00 00                   |                             i64.store 0 0
 02697a: 20 0e                      |                             local.get 14
 02697c: 41 10                      |                             i32.const 16
 02697e: 6a                         |                             i32.add
 02697f: 22 02                      |                             local.tee 2
 026981: 29 00 00                   |                             i64.load 0 0
 026984: 21 12                      |                             local.set 18
 026986: 20 02                      |                             local.get 2
 026988: 20 0a                      |                             local.get 10
 02698a: 41 10                      |                             i32.const 16
 02698c: 6a                         |                             i32.add
 02698d: 22 08                      |                             local.tee 8
 02698f: 29 00 00                   |                             i64.load 0 0
 026992: 37 00 00                   |                             i64.store 0 0
 026995: 20 0e                      |                             local.get 14
 026997: 41 08                      |                             i32.const 8
 026999: 6a                         |                             i32.add
 02699a: 22 02                      |                             local.tee 2
 02699c: 29 00 00                   |                             i64.load 0 0
 02699f: 21 13                      |                             local.set 19
 0269a1: 20 02                      |                             local.get 2
 0269a3: 20 0a                      |                             local.get 10
 0269a5: 41 08                      |                             i32.const 8
 0269a7: 6a                         |                             i32.add
 0269a8: 22 10                      |                             local.tee 16
 0269aa: 29 00 00                   |                             i64.load 0 0
 0269ad: 37 00 00                   |                             i64.store 0 0
 0269b0: 20 0a                      |                             local.get 10
 0269b2: 20 06                      |                             local.get 6
 0269b4: 37 00 00                   |                             i64.store 0 0
 0269b7: 20 08                      |                             local.get 8
 0269b9: 20 12                      |                             local.get 18
 0269bb: 37 00 00                   |                             i64.store 0 0
 0269be: 20 10                      |                             local.get 16
 0269c0: 20 13                      |                             local.get 19
 0269c2: 37 00 00                   |                             i64.store 0 0
 0269c5: 0c 01                      |                             br 1
 0269c7: 0b                         |                           end
 0269c8: 0b                         |                         end
 0269c9: 20 0d                      |                         local.get 13
 0269cb: 20 10                      |                         local.get 16
 0269cd: 41 19                      |                         i32.const 25
 0269cf: 76                         |                         i32.shr_u
 0269d0: 22 02                      |                         local.tee 2
 0269d2: 3a 00 00                   |                         i32.store8 0 0
 0269d5: 20 0c                      |                         local.get 12
 0269d7: 41 78                      |                         i32.const 4294967288
 0269d9: 6a                         |                         i32.add
 0269da: 20 07                      |                         local.get 7
 0269dc: 71                         |                         i32.and
 0269dd: 20 0b                      |                         local.get 11
 0269df: 6a                         |                         i32.add
 0269e0: 41 08                      |                         i32.const 8
 0269e2: 6a                         |                         i32.add
 0269e3: 20 02                      |                         local.get 2
 0269e5: 3a 00 00                   |                         i32.store8 0 0
 0269e8: 0c 01                      |                         br 1
 0269ea: 0b                         |                       end
 0269eb: 20 0d                      |                       local.get 13
 0269ed: 41 ff 01                   |                       i32.const 255
 0269f0: 3a 00 00                   |                       i32.store8 0 0
 0269f3: 20 0c                      |                       local.get 12
 0269f5: 41 78                      |                       i32.const 4294967288
 0269f7: 6a                         |                       i32.add
 0269f8: 20 07                      |                       local.get 7
 0269fa: 71                         |                       i32.and
 0269fb: 20 0b                      |                       local.get 11
 0269fd: 6a                         |                       i32.add
 0269fe: 41 08                      |                       i32.const 8
 026a00: 6a                         |                       i32.add
 026a01: 41 ff 01                   |                       i32.const 255
 026a04: 3a 00 00                   |                       i32.store8 0 0
 026a07: 20 0a                      |                       local.get 10
 026a09: 41 10                      |                       i32.const 16
 026a0b: 6a                         |                       i32.add
 026a0c: 20 0e                      |                       local.get 14
 026a0e: 41 10                      |                       i32.const 16
 026a10: 6a                         |                       i32.add
 026a11: 29 00 00                   |                       i64.load 0 0
 026a14: 37 00 00                   |                       i64.store 0 0
 026a17: 20 0a                      |                       local.get 10
 026a19: 41 08                      |                       i32.const 8
 026a1b: 6a                         |                       i32.add
 026a1c: 20 0e                      |                       local.get 14
 026a1e: 41 08                      |                       i32.const 8
 026a20: 6a                         |                       i32.add
 026a21: 29 00 00                   |                       i64.load 0 0
 026a24: 37 00 00                   |                       i64.store 0 0
 026a27: 20 0a                      |                       local.get 10
 026a29: 20 0e                      |                       local.get 14
 026a2b: 29 00 00                   |                       i64.load 0 0
 026a2e: 37 00 00                   |                       i64.store 0 0
 026a31: 0b                         |                     end
 026a32: 20 0c                      |                     local.get 12
 026a34: 41 01                      |                     i32.const 1
 026a36: 6a                         |                     i32.add
 026a37: 21 02                      |                     local.set 2
 026a39: 20 0c                      |                     local.get 12
 026a3b: 20 07                      |                     local.get 7
 026a3d: 47                         |                     i32.ne
 026a3e: 0d 00                      |                     br_if 0
 026a40: 0b                         |                   end
 026a41: 0b                         |                 end
 026a42: 20 00                      |                 local.get 0
 026a44: 41 00                      |                 i32.const 0
 026a46: 36 02 00                   |                 i32.store 2 0
 026a49: 20 01                      |                 local.get 1
 026a4b: 20 09                      |                 local.get 9
 026a4d: 20 05                      |                 local.get 5
 026a4f: 6b                         |                 i32.sub
 026a50: 36 02 08                   |                 i32.store 2 8
 026a53: 0c 07                      |                 br 7
 026a55: 0b                         |               end
 026a56: 20 0b                      |               local.get 11
 026a58: 20 02                      |               local.get 2
 026a5a: 6a                         |               i32.add
 026a5b: 22 0a                      |               local.tee 10
 026a5d: 20 0a                      |               local.get 10
 026a5f: 29 03 00                   |               i64.load 3 0
 026a62: 22 06                      |               local.tee 6
 026a64: 42 07                      |               i64.const 7
 026a66: 88                         |               i64.shr_u
 026a67: 42 7f                      |               i64.const 18446744073709551615
 026a69: 85                         |               i64.xor
 026a6a: 42 81 82 84 88 90 a0 c0 80 |               i64.const 72340172838076673
 026a73: 01                         | 
 026a74: 83                         |               i64.and
 026a75: 20 06                      |               local.get 6
 026a77: 42 ff fe fd fb f7 ef df bf |               i64.const 9187201950435737471
 026a80: ff 00                      | 
 026a82: 84                         |               i64.or
 026a83: 7c                         |               i64.add
 026a84: 37 03 00                   |               i64.store 3 0
 026a87: 41 01                      |               i32.const 1
 026a89: 21 0a                      |               local.set 10
 026a8b: 20 02                      |               local.get 2
 026a8d: 41 01                      |               i32.const 1
 026a8f: 6a                         |               i32.add
 026a90: 21 02                      |               local.set 2
 026a92: 0c 00                      |               br 0
 026a94: 0b                         |             end
 026a95: 0b                         |           end
 026a96: 41 04                      |           i32.const 4
 026a98: 41 08                      |           i32.const 8
 026a9a: 20 02                      |           local.get 2
 026a9c: 41 04                      |           i32.const 4
 026a9e: 49                         |           i32.lt_u
 026a9f: 1b                         |           select
 026aa0: 21 02                      |           local.set 2
 026aa2: 0b                         |         end
 026aa3: 02 40                      |         block
 026aa5: 02 40                      |           block
 026aa7: 20 02                      |             local.get 2
 026aa9: ad                         |             i64.extend_i32_u
 026aaa: 42 18                      |             i64.const 24
 026aac: 7e                         |             i64.mul
 026aad: 22 06                      |             local.tee 6
 026aaf: 42 20                      |             i64.const 32
 026ab1: 88                         |             i64.shr_u
 026ab2: a7                         |             i32.wrap_i64
 026ab3: 0d 00                      |             br_if 0
 026ab5: 20 06                      |             local.get 6
 026ab7: a7                         |             i32.wrap_i64
 026ab8: 22 0a                      |             local.tee 10
 026aba: 20 02                      |             local.get 2
 026abc: 41 08                      |             i32.const 8
 026abe: 6a                         |             i32.add
 026abf: 22 0e                      |             local.tee 14
 026ac1: 6a                         |             i32.add
 026ac2: 22 0b                      |             local.tee 11
 026ac4: 20 0a                      |             local.get 10
 026ac6: 4f                         |             i32.ge_u
 026ac7: 0d 01                      |             br_if 1
 026ac9: 0b                         |           end
 026aca: 20 04                      |           local.get 4
 026acc: 41 10                      |           i32.const 16
 026ace: 6a                         |           i32.add
 026acf: 41 01                      |           i32.const 1
 026ad1: 10 d7 85 80 80 00          |           call 727 <_ZN9hashbrown3raw11Fallibility17capacity_overflow17h92dbfe3f0edf150eE>
 026ad7: 20 04                      |           local.get 4
 026ad9: 28 02 14                   |           i32.load 2 20
 026adc: 21 02                      |           local.set 2
 026ade: 20 04                      |           local.get 4
 026ae0: 28 02 10                   |           i32.load 2 16
 026ae3: 21 0a                      |           local.set 10
 026ae5: 0c 01                      |           br 1
 026ae7: 0b                         |         end
 026ae8: 02 40                      |         block
 026aea: 20 0b                      |           local.get 11
 026aec: 41 00                      |           i32.const 0
 026aee: 48                         |           i32.lt_s
 026aef: 0d 00                      |           br_if 0
 026af1: 41 08                      |           i32.const 8
 026af3: 21 10                      |           local.set 16
 026af5: 02 40                      |           block
 026af7: 20 0b                      |             local.get 11
 026af9: 45                         |             i32.eqz
 026afa: 0d 00                      |             br_if 0
 026afc: 20 0b                      |             local.get 11
 026afe: 41 08                      |             i32.const 8
 026b00: 10 b1 80 80 80 00          |             call 49 <__rust_alloc>
 026b06: 22 10                      |             local.tee 16
 026b08: 0d 00                      |             br_if 0
 026b0a: 20 04                      |             local.get 4
 026b0c: 41 20                      |             i32.const 32
 026b0e: 6a                         |             i32.add
 026b0f: 41 01                      |             i32.const 1
 026b11: 20 0b                      |             local.get 11
 026b13: 41 08                      |             i32.const 8
 026b15: 10 d8 85 80 80 00          |             call 728 <_ZN9hashbrown3raw11Fallibility9alloc_err17h7d7c020a574d78c1E>
 026b1b: 20 04                      |             local.get 4
 026b1d: 28 02 24                   |             i32.load 2 36
 026b20: 21 02                      |             local.set 2
 026b22: 20 04                      |             local.get 4
 026b24: 28 02 20                   |             i32.load 2 32
 026b27: 21 0a                      |             local.set 10
 026b29: 0c 02                      |             br 2
 026b2b: 0b                         |           end
 026b2c: 20 10                      |           local.get 16
 026b2e: 20 0a                      |           local.get 10
 026b30: 6a                         |           i32.add
 026b31: 41 ff 01                   |           i32.const 255
 026b34: 20 0e                      |           local.get 14
 026b36: 10 f9 85 80 80 00          |           call 761 <memset>
 026b3c: 21 0b                      |           local.set 11
 026b3e: 20 02                      |           local.get 2
 026b40: 41 7f                      |           i32.const 4294967295
 026b42: 6a                         |           i32.add
 026b43: 22 0e                      |           local.tee 14
 026b45: 20 02                      |           local.get 2
 026b47: 41 03                      |           i32.const 3
 026b49: 76                         |           i32.shr_u
 026b4a: 41 07                      |           i32.const 7
 026b4c: 6c                         |           i32.mul
 026b4d: 20 0e                      |           local.get 14
 026b4f: 41 08                      |           i32.const 8
 026b51: 49                         |           i32.lt_u
 026b52: 1b                         |           select
 026b53: 20 05                      |           local.get 5
 026b55: 6b                         |           i32.sub
 026b56: 21 0f                      |           local.set 15
 026b58: 20 07                      |           local.get 7
 026b5a: 41 7f                      |           i32.const 4294967295
 026b5c: 47                         |           i32.ne
 026b5d: 0d 02                      |           br_if 2
 026b5f: 20 01                      |           local.get 1
 026b61: 20 0f                      |           local.get 15
 026b63: 36 02 08                   |           i32.store 2 8
 026b66: 20 01                      |           local.get 1
 026b68: 20 0e                      |           local.get 14
 026b6a: 36 02 00                   |           i32.store 2 0
 026b6d: 20 00                      |           local.get 0
 026b6f: 41 00                      |           i32.const 0
 026b71: 36 02 00                   |           i32.store 2 0
 026b74: 20 01                      |           local.get 1
 026b76: 41 04                      |           i32.const 4
 026b78: 6a                         |           i32.add
 026b79: 22 02                      |           local.tee 2
 026b7b: 28 02 00                   |           i32.load 2 0
 026b7e: 21 11                      |           local.set 17
 026b80: 20 02                      |           local.get 2
 026b82: 20 0b                      |           local.get 11
 026b84: 36 02 00                   |           i32.store 2 0
 026b87: 0c 03                      |           br 3
 026b89: 0b                         |         end
 026b8a: 20 04                      |         local.get 4
 026b8c: 41 18                      |         i32.const 24
 026b8e: 6a                         |         i32.add
 026b8f: 41 01                      |         i32.const 1
 026b91: 10 d7 85 80 80 00          |         call 727 <_ZN9hashbrown3raw11Fallibility17capacity_overflow17h92dbfe3f0edf150eE>
 026b97: 20 04                      |         local.get 4
 026b99: 28 02 1c                   |         i32.load 2 28
 026b9c: 21 02                      |         local.set 2
 026b9e: 20 04                      |         local.get 4
 026ba0: 28 02 18                   |         i32.load 2 24
 026ba3: 21 0a                      |         local.set 10
 026ba5: 0b                         |       end
 026ba6: 20 00                      |       local.get 0
 026ba8: 20 0a                      |       local.get 10
 026baa: 36 02 04                   |       i32.store 2 4
 026bad: 20 00                      |       local.get 0
 026baf: 41 01                      |       i32.const 1
 026bb1: 36 02 00                   |       i32.store 2 0
 026bb4: 20 00                      |       local.get 0
 026bb6: 41 08                      |       i32.const 8
 026bb8: 6a                         |       i32.add
 026bb9: 20 02                      |       local.get 2
 026bbb: 36 02 00                   |       i32.store 2 0
 026bbe: 0c 02                      |       br 2
 026bc0: 0b                         |     end
 026bc1: 20 01                      |     local.get 1
 026bc3: 41 04                      |     i32.const 4
 026bc5: 6a                         |     i32.add
 026bc6: 28 02 00                   |     i32.load 2 0
 026bc9: 21 11                      |     local.set 17
 026bcb: 41 00                      |     i32.const 0
 026bcd: 21 10                      |     local.set 16
 026bcf: 03 40                      |     loop
 026bd1: 02 40                      |       block
 026bd3: 20 11                      |         local.get 17
 026bd5: 20 10                      |         local.get 16
 026bd7: 6a                         |         i32.add
 026bd8: 2c 00 00                   |         i32.load8_s 0 0
 026bdb: 41 00                      |         i32.const 0
 026bdd: 48                         |         i32.lt_s
 026bde: 0d 00                      |         br_if 0
 026be0: 02 40                      |         block
 026be2: 20 0b                      |           local.get 11
 026be4: 20 0e                      |           local.get 14
 026be6: 20 03                      |           local.get 3
 026be8: 20 11                      |           local.get 17
 026bea: 41 00                      |           i32.const 0
 026bec: 20 10                      |           local.get 16
 026bee: 6b                         |           i32.sub
 026bef: 41 18                      |           i32.const 24
 026bf1: 6c                         |           i32.mul
 026bf2: 6a                         |           i32.add
 026bf3: 41 68                      |           i32.const 4294967272
 026bf5: 6a                         |           i32.add
 026bf6: 10 cc 81 80 80 00          |           call 204 <_ZN4core4hash11BuildHasher8hash_one17h4ac98b1f107c06aeE>
 026bfc: a7                         |           i32.wrap_i64
 026bfd: 22 0c                      |           local.tee 12
 026bff: 71                         |           i32.and
 026c00: 22 0a                      |           local.tee 10
 026c02: 6a                         |           i32.add
 026c03: 29 00 00                   |           i64.load 0 0
 026c06: 42 80 81 82 84 88 90 a0 c0 |           i64.const 9259542123273814144
 026c0f: 80 7f                      | 
 026c11: 83                         |           i64.and
 026c12: 22 06                      |           local.tee 6
 026c14: 42 00                      |           i64.const 0
 026c16: 52                         |           i64.ne
 026c17: 0d 00                      |           br_if 0
 026c19: 41 08                      |           i32.const 8
 026c1b: 21 02                      |           local.set 2
 026c1d: 03 40                      |           loop
 026c1f: 20 0a                      |             local.get 10
 026c21: 20 02                      |             local.get 2
 026c23: 6a                         |             i32.add
 026c24: 21 0a                      |             local.set 10
 026c26: 20 02                      |             local.get 2
 026c28: 41 08                      |             i32.const 8
 026c2a: 6a                         |             i32.add
 026c2b: 21 02                      |             local.set 2
 026c2d: 20 0b                      |             local.get 11
 026c2f: 20 0a                      |             local.get 10
 026c31: 20 0e                      |             local.get 14
 026c33: 71                         |             i32.and
 026c34: 22 0a                      |             local.tee 10
 026c36: 6a                         |             i32.add
 026c37: 29 00 00                   |             i64.load 0 0
 026c3a: 42 80 81 82 84 88 90 a0 c0 |             i64.const 9259542123273814144
 026c43: 80 7f                      | 
 026c45: 83                         |             i64.and
 026c46: 22 06                      |             local.tee 6
 026c48: 50                         |             i64.eqz
 026c49: 0d 00                      |             br_if 0
 026c4b: 0b                         |           end
 026c4c: 0b                         |         end
 026c4d: 02 40                      |         block
 026c4f: 20 0b                      |           local.get 11
 026c51: 20 06                      |           local.get 6
 026c53: 7a                         |           i64.ctz
 026c54: a7                         |           i32.wrap_i64
 026c55: 41 03                      |           i32.const 3
 026c57: 76                         |           i32.shr_u
 026c58: 20 0a                      |           local.get 10
 026c5a: 6a                         |           i32.add
 026c5b: 20 0e                      |           local.get 14
 026c5d: 71                         |           i32.and
 026c5e: 22 02                      |           local.tee 2
 026c60: 6a                         |           i32.add
 026c61: 2c 00 00                   |           i32.load8_s 0 0
 026c64: 41 7f                      |           i32.const 4294967295
 026c66: 4c                         |           i32.le_s
 026c67: 0d 00                      |           br_if 0
 026c69: 20 0b                      |           local.get 11
 026c6b: 29 03 00                   |           i64.load 3 0
 026c6e: 42 80 81 82 84 88 90 a0 c0 |           i64.const 9259542123273814144
 026c77: 80 7f                      | 
 026c79: 83                         |           i64.and
 026c7a: 7a                         |           i64.ctz
 026c7b: a7                         |           i32.wrap_i64
 026c7c: 41 03                      |           i32.const 3
 026c7e: 76                         |           i32.shr_u
 026c7f: 21 02                      |           local.set 2
 026c81: 0b                         |         end
 026c82: 20 0b                      |         local.get 11
 026c84: 20 02                      |         local.get 2
 026c86: 6a                         |         i32.add
 026c87: 20 0c                      |         local.get 12
 026c89: 41 19                      |         i32.const 25
 026c8b: 76                         |         i32.shr_u
 026c8c: 22 0a                      |         local.tee 10
 026c8e: 3a 00 00                   |         i32.store8 0 0
 026c91: 20 02                      |         local.get 2
 026c93: 41 78                      |         i32.const 4294967288
 026c95: 6a                         |         i32.add
 026c96: 20 0e                      |         local.get 14
 026c98: 71                         |         i32.and
 026c99: 20 0b                      |         local.get 11
 026c9b: 6a                         |         i32.add
 026c9c: 41 08                      |         i32.const 8
 026c9e: 6a                         |         i32.add
 026c9f: 20 0a                      |         local.get 10
 026ca1: 3a 00 00                   |         i32.store8 0 0
 026ca4: 20 0b                      |         local.get 11
 026ca6: 20 02                      |         local.get 2
 026ca8: 41 7f                      |         i32.const 4294967295
 026caa: 73                         |         i32.xor
 026cab: 41 18                      |         i32.const 24
 026cad: 6c                         |         i32.mul
 026cae: 6a                         |         i32.add
 026caf: 22 02                      |         local.tee 2
 026cb1: 41 10                      |         i32.const 16
 026cb3: 6a                         |         i32.add
 026cb4: 20 11                      |         local.get 17
 026cb6: 20 10                      |         local.get 16
 026cb8: 41 7f                      |         i32.const 4294967295
 026cba: 73                         |         i32.xor
 026cbb: 41 18                      |         i32.const 24
 026cbd: 6c                         |         i32.mul
 026cbe: 6a                         |         i32.add
 026cbf: 22 0a                      |         local.tee 10
 026cc1: 41 10                      |         i32.const 16
 026cc3: 6a                         |         i32.add
 026cc4: 29 00 00                   |         i64.load 0 0
 026cc7: 37 00 00                   |         i64.store 0 0
 026cca: 20 02                      |         local.get 2
 026ccc: 41 08                      |         i32.const 8
 026cce: 6a                         |         i32.add
 026ccf: 20 0a                      |         local.get 10
 026cd1: 41 08                      |         i32.const 8
 026cd3: 6a                         |         i32.add
 026cd4: 29 00 00                   |         i64.load 0 0
 026cd7: 37 00 00                   |         i64.store 0 0
 026cda: 20 02                      |         local.get 2
 026cdc: 20 0a                      |         local.get 10
 026cde: 29 00 00                   |         i64.load 0 0
 026ce1: 37 00 00                   |         i64.store 0 0
 026ce4: 0b                         |       end
 026ce5: 20 10                      |       local.get 16
 026ce7: 20 07                      |       local.get 7
 026ce9: 46                         |       i32.eq
 026cea: 21 02                      |       local.set 2
 026cec: 20 10                      |       local.get 16
 026cee: 41 01                      |       i32.const 1
 026cf0: 6a                         |       i32.add
 026cf1: 21 10                      |       local.set 16
 026cf3: 20 02                      |       local.get 2
 026cf5: 45                         |       i32.eqz
 026cf6: 0d 00                      |       br_if 0
 026cf8: 0b                         |     end
 026cf9: 20 01                      |     local.get 1
 026cfb: 20 0f                      |     local.get 15
 026cfd: 36 02 08                   |     i32.store 2 8
 026d00: 20 01                      |     local.get 1
 026d02: 20 0e                      |     local.get 14
 026d04: 36 02 00                   |     i32.store 2 0
 026d07: 20 00                      |     local.get 0
 026d09: 41 00                      |     i32.const 0
 026d0b: 36 02 00                   |     i32.store 2 0
 026d0e: 20 01                      |     local.get 1
 026d10: 41 04                      |     i32.const 4
 026d12: 6a                         |     i32.add
 026d13: 20 0b                      |     local.get 11
 026d15: 36 02 00                   |     i32.store 2 0
 026d18: 20 07                      |     local.get 7
 026d1a: 45                         |     i32.eqz
 026d1b: 0d 01                      |     br_if 1
 026d1d: 0b                         |   end
 026d1e: 20 07                      |   local.get 7
 026d20: 20 08                      |   local.get 8
 026d22: ad                         |   i64.extend_i32_u
 026d23: 42 18                      |   i64.const 24
 026d25: 7e                         |   i64.mul
 026d26: a7                         |   i32.wrap_i64
 026d27: 22 02                      |   local.tee 2
 026d29: 6a                         |   i32.add
 026d2a: 41 09                      |   i32.const 9
 026d2c: 6a                         |   i32.add
 026d2d: 22 0a                      |   local.tee 10
 026d2f: 45                         |   i32.eqz
 026d30: 0d 00                      |   br_if 0
 026d32: 20 11                      |   local.get 17
 026d34: 20 02                      |   local.get 2
 026d36: 6b                         |   i32.sub
 026d37: 20 0a                      |   local.get 10
 026d39: 41 08                      |   i32.const 8
 026d3b: 10 b2 80 80 80 00          |   call 50 <__rust_dealloc>
 026d41: 0b                         | end
 026d42: 20 04                      | local.get 4
 026d44: 41 d0 00                   | i32.const 80
 026d47: 6a                         | i32.add
 026d48: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 026d4e: 0b                         | end
