0505a3 func[760] <_ZN73_$LT$std..io..buffered..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17he96b41487c888f77E>:
 0505a4: 01 7f                      | local[4] type=i32
 0505a6: 01 7e                      | local[5] type=i64
 0505a8: 0b 7f                      | local[6..16] type=i32
 0505aa: 23 80 80 80 80 00          | global.get 0
 0505b0: 41 10                      | i32.const 16
 0505b2: 6b                         | i32.sub
 0505b3: 22 04                      | local.tee 4
 0505b5: 24 80 80 80 80 00          | global.set 0
 0505bb: 02 40                      | block
 0505bd: 02 40                      |   block
 0505bf: 20 01                      |     local.get 1
 0505c1: 2d 00 10                   |     i32.load8_u 0 16
 0505c4: 45                         |     i32.eqz
 0505c5: 0d 00                      |     br_if 0
 0505c7: 20 04                      |     local.get 4
 0505c9: 20 01                      |     local.get 1
 0505cb: 10 dc 84 80 80 00          |     call 604 <_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h8d95a80e141242f4E>
 0505d1: 02 40                      |     block
 0505d3: 02 40                      |       block
 0505d5: 02 40                      |         block
 0505d7: 20 04                      |           local.get 4
 0505d9: 2d 00 00                   |           i32.load8_u 0 0
 0505dc: 41 03                      |           i32.const 3
 0505de: 47                         |           i32.ne
 0505df: 0d 00                      |           br_if 0
 0505e1: 20 01                      |           local.get 1
 0505e3: 2d 00 0c                   |           i32.load8_u 0 12
 0505e6: 41 02                      |           i32.const 2
 0505e8: 47                         |           i32.ne
 0505e9: 0d 01                      |           br_if 1
 0505eb: 41 94 97 c3 80 00          |           i32.const 1100692
 0505f1: 10 cf 80 80 80 00          |           call 79 <_ZN4core9panicking5panic17h5093c663207ac16fE>
 0505f7: 00                         |           unreachable
 0505f8: 0b                         |         end
 0505f9: 20 04                      |         local.get 4
 0505fb: 29 03 00                   |         i64.load 3 0
 0505fe: 22 05                      |         local.tee 5
 050600: 42 ff 01                   |         i64.const 255
 050603: 83                         |         i64.and
 050604: 42 03                      |         i64.const 3
 050606: 52                         |         i64.ne
 050607: 0d 01                      |         br_if 1
 050609: 0b                         |       end
 05060a: 20 01                      |       local.get 1
 05060c: 41 00                      |       i32.const 0
 05060e: 3a 00 10                   |       i32.store8 0 16
 050611: 0c 01                      |       br 1
 050613: 0b                         |     end
 050614: 02 40                      |     block
 050616: 20 05                      |       local.get 5
 050618: a7                         |       i32.wrap_i64
 050619: 22 06                      |       local.tee 6
 05061b: 41 ff 01                   |       i32.const 255
 05061e: 71                         |       i32.and
 05061f: 41 03                      |       i32.const 3
 050621: 46                         |       i32.eq
 050622: 0d 00                      |       br_if 0
 050624: 20 00                      |       local.get 0
 050626: 41 01                      |       i32.const 1
 050628: 36 02 00                   |       i32.store 2 0
 05062b: 20 00                      |       local.get 0
 05062d: 20 05                      |       local.get 5
 05062f: 37 02 04                   |       i64.store 2 4
 050632: 0c 02                      |       br 2
 050634: 0b                         |     end
 050635: 02 40                      |     block
 050637: 41 00                      |       i32.const 0
 050639: 0d 00                      |       br_if 0
 05063b: 20 06                      |       local.get 6
 05063d: 41 03                      |       i32.const 3
 05063f: 71                         |       i32.and
 050640: 41 02                      |       i32.const 2
 050642: 47                         |       i32.ne
 050643: 0d 01                      |       br_if 1
 050645: 0b                         |     end
 050646: 20 05                      |     local.get 5
 050648: 42 20                      |     i64.const 32
 05064a: 88                         |     i64.shr_u
 05064b: a7                         |     i32.wrap_i64
 05064c: 22 06                      |     local.tee 6
 05064e: 28 02 00                   |     i32.load 2 0
 050651: 20 06                      |     local.get 6
 050653: 28 02 04                   |     i32.load 2 4
 050656: 28 02 00                   |     i32.load 2 0
 050659: 11 81 80 80 80 00 00       |     call_indirect 0 (type 1)
 050660: 02 40                      |     block
 050662: 20 06                      |       local.get 6
 050664: 28 02 04                   |       i32.load 2 4
 050667: 22 07                      |       local.tee 7
 050669: 28 02 04                   |       i32.load 2 4
 05066c: 22 08                      |       local.tee 8
 05066e: 45                         |       i32.eqz
 05066f: 0d 00                      |       br_if 0
 050671: 20 06                      |       local.get 6
 050673: 28 02 00                   |       i32.load 2 0
 050676: 20 08                      |       local.get 8
 050678: 20 07                      |       local.get 7
 05067a: 28 02 08                   |       i32.load 2 8
 05067d: 10 9e 80 80 80 00          |       call 30 <__rust_dealloc>
 050683: 0b                         |     end
 050684: 20 06                      |     local.get 6
 050686: 41 0c                      |     i32.const 12
 050688: 41 04                      |     i32.const 4
 05068a: 10 9e 80 80 80 00          |     call 30 <__rust_dealloc>
 050690: 0b                         |   end
 050691: 41 00                      |   i32.const 0
 050693: 21 07                      |   local.set 7
 050695: 20 03                      |   local.get 3
 050697: 41 00                      |   i32.const 0
 050699: 20 03                      |   local.get 3
 05069b: 41 04                      |   i32.const 4
 05069d: 20 02                      |   local.get 2
 05069f: 41 03                      |   i32.const 3
 0506a1: 71                         |   i32.and
 0506a2: 22 06                      |   local.tee 6
 0506a4: 6b                         |   i32.sub
 0506a5: 41 00                      |   i32.const 0
 0506a7: 20 06                      |   local.get 6
 0506a9: 1b                         |   select
 0506aa: 22 06                      |   local.tee 6
 0506ac: 6b                         |   i32.sub
 0506ad: 41 07                      |   i32.const 7
 0506af: 71                         |   i32.and
 0506b0: 20 03                      |   local.get 3
 0506b2: 20 06                      |   local.get 6
 0506b4: 49                         |   i32.lt_u
 0506b5: 22 08                      |   local.tee 8
 0506b7: 1b                         |   select
 0506b8: 22 09                      |   local.tee 9
 0506ba: 6b                         |   i32.sub
 0506bb: 21 0a                      |   local.set 10
 0506bd: 02 40                      |   block
 0506bf: 02 40                      |     block
 0506c1: 02 40                      |       block
 0506c3: 02 40                      |         block
 0506c5: 02 40                      |           block
 0506c7: 02 40                      |             block
 0506c9: 02 40                      |               block
 0506cb: 20 03                      |                 local.get 3
 0506cd: 20 09                      |                 local.get 9
 0506cf: 49                         |                 i32.lt_u
 0506d0: 0d 00                      |                 br_if 0
 0506d2: 20 03                      |                 local.get 3
 0506d4: 20 06                      |                 local.get 6
 0506d6: 20 08                      |                 local.get 8
 0506d8: 1b                         |                 select
 0506d9: 21 0b                      |                 local.set 11
 0506db: 20 02                      |                 local.get 2
 0506dd: 20 0a                      |                 local.get 10
 0506df: 6a                         |                 i32.add
 0506e0: 21 0c                      |                 local.set 12
 0506e2: 20 02                      |                 local.get 2
 0506e4: 20 03                      |                 local.get 3
 0506e6: 6a                         |                 i32.add
 0506e7: 22 08                      |                 local.tee 8
 0506e9: 21 06                      |                 local.set 6
 0506eb: 03 40                      |                 loop
 0506ed: 02 40                      |                   block
 0506ef: 20 06                      |                     local.get 6
 0506f1: 20 0c                      |                     local.get 12
 0506f3: 6b                         |                     i32.sub
 0506f4: 41 03                      |                     i32.const 3
 0506f6: 4b                         |                     i32.gt_u
 0506f7: 0d 00                      |                     br_if 0
 0506f9: 20 09                      |                     local.get 9
 0506fb: 20 07                      |                     local.get 7
 0506fd: 6a                         |                     i32.add
 0506fe: 21 06                      |                     local.set 6
 050700: 20 08                      |                     local.get 8
 050702: 20 07                      |                     local.get 7
 050704: 6a                         |                     i32.add
 050705: 21 0d                      |                     local.set 13
 050707: 41 00                      |                     i32.const 0
 050709: 21 0e                      |                     local.set 14
 05070b: 02 40                      |                     block
 05070d: 02 40                      |                       block
 05070f: 02 40                      |                         block
 050711: 03 40                      |                           loop
 050713: 02 40                      |                             block
 050715: 20 06                      |                               local.get 6
 050717: 0d 00                      |                               br_if 0
 050719: 41 00                      |                               i32.const 0
 05071b: 20 09                      |                               local.get 9
 05071d: 6b                         |                               i32.sub
 05071e: 21 07                      |                               local.set 7
 050720: 02 40                      |                               block
 050722: 03 40                      |                                 loop
 050724: 20 03                      |                                   local.get 3
 050726: 20 07                      |                                   local.get 7
 050728: 22 06                      |                                   local.tee 6
 05072a: 6a                         |                                   i32.add
 05072b: 22 0f                      |                                   local.tee 15
 05072d: 20 0b                      |                                   local.get 11
 05072f: 4d                         |                                   i32.le_u
 050730: 0d 01                      |                                   br_if 1
 050732: 20 06                      |                                   local.get 6
 050734: 41 78                      |                                   i32.const 4294967288
 050736: 6a                         |                                   i32.add
 050737: 21 07                      |                                   local.set 7
 050739: 20 08                      |                                   local.get 8
 05073b: 20 06                      |                                   local.get 6
 05073d: 6a                         |                                   i32.add
 05073e: 22 0e                      |                                   local.tee 14
 050740: 41 7c                      |                                   i32.const 4294967292
 050742: 6a                         |                                   i32.add
 050743: 28 02 00                   |                                   i32.load 2 0
 050746: 22 0c                      |                                   local.tee 12
 050748: 41 7f                      |                                   i32.const 4294967295
 05074a: 73                         |                                   i32.xor
 05074b: 20 0c                      |                                   local.get 12
 05074d: 41 8a 94 a8 d0 00          |                                   i32.const 168430090
 050753: 73                         |                                   i32.xor
 050754: 41 ff fd fb 77             |                                   i32.const 4278124287
 050759: 6a                         |                                   i32.add
 05075a: 71                         |                                   i32.and
 05075b: 20 0e                      |                                   local.get 14
 05075d: 41 78                      |                                   i32.const 4294967288
 05075f: 6a                         |                                   i32.add
 050760: 28 02 00                   |                                   i32.load 2 0
 050763: 22 0e                      |                                   local.tee 14
 050765: 41 7f                      |                                   i32.const 4294967295
 050767: 73                         |                                   i32.xor
 050768: 20 0e                      |                                   local.get 14
 05076a: 41 8a 94 a8 d0 00          |                                   i32.const 168430090
 050770: 73                         |                                   i32.xor
 050771: 41 ff fd fb 77             |                                   i32.const 4278124287
 050776: 6a                         |                                   i32.add
 050777: 71                         |                                   i32.and
 050778: 72                         |                                   i32.or
 050779: 41 80 81 82 84 78          |                                   i32.const 2155905152
 05077f: 71                         |                                   i32.and
 050780: 45                         |                                   i32.eqz
 050781: 0d 00                      |                                   br_if 0
 050783: 0b                         |                                 end
 050784: 0b                         |                               end
 050785: 20 0f                      |                               local.get 15
 050787: 20 03                      |                               local.get 3
 050789: 4b                         |                               i32.gt_u
 05078a: 0d 02                      |                               br_if 2
 05078c: 20 02                      |                               local.get 2
 05078e: 20 06                      |                               local.get 6
 050790: 6a                         |                               i32.add
 050791: 21 07                      |                               local.set 7
 050793: 02 40                      |                               block
 050795: 03 40                      |                                 loop
 050797: 02 40                      |                                   block
 050799: 20 07                      |                                     local.get 7
 05079b: 20 03                      |                                     local.get 3
 05079d: 6a                         |                                     i32.add
 05079e: 22 08                      |                                     local.tee 8
 0507a0: 20 02                      |                                     local.get 2
 0507a2: 6b                         |                                     i32.sub
 0507a3: 41 03                      |                                     i32.const 3
 0507a5: 4b                         |                                     i32.gt_u
 0507a6: 0d 00                      |                                     br_if 0
 0507a8: 20 03                      |                                     local.get 3
 0507aa: 20 06                      |                                     local.get 6
 0507ac: 6a                         |                                     i32.add
 0507ad: 21 0e                      |                                     local.set 14
 0507af: 41 00                      |                                     i32.const 0
 0507b1: 21 06                      |                                     local.set 6
 0507b3: 03 40                      |                                     loop
 0507b5: 20 0e                      |                                       local.get 14
 0507b7: 20 06                      |                                       local.get 6
 0507b9: 6a                         |                                       i32.add
 0507ba: 45                         |                                       i32.eqz
 0507bb: 0d 03                      |                                       br_if 3
 0507bd: 20 08                      |                                       local.get 8
 0507bf: 20 06                      |                                       local.get 6
 0507c1: 6a                         |                                       i32.add
 0507c2: 21 07                      |                                       local.set 7
 0507c4: 20 06                      |                                       local.get 6
 0507c6: 41 7f                      |                                       i32.const 4294967295
 0507c8: 6a                         |                                       i32.add
 0507c9: 22 0c                      |                                       local.tee 12
 0507cb: 21 06                      |                                       local.set 6
 0507cd: 20 07                      |                                       local.get 7
 0507cf: 41 7f                      |                                       i32.const 4294967295
 0507d1: 6a                         |                                       i32.add
 0507d2: 2d 00 00                   |                                       i32.load8_u 0 0
 0507d5: 41 0a                      |                                       i32.const 10
 0507d7: 47                         |                                       i32.ne
 0507d8: 0d 00                      |                                       br_if 0
 0507da: 0b                         |                                     end
 0507db: 20 0e                      |                                     local.get 14
 0507dd: 20 0c                      |                                     local.get 12
 0507df: 6a                         |                                     i32.add
 0507e0: 21 07                      |                                     local.set 7
 0507e2: 0c 0e                      |                                     br 14
 0507e4: 0b                         |                                   end
 0507e5: 02 40                      |                                   block
 0507e7: 20 08                      |                                     local.get 8
 0507e9: 41 7f                      |                                     i32.const 4294967295
 0507eb: 6a                         |                                     i32.add
 0507ec: 22 08                      |                                     local.tee 8
 0507ee: 2d 00 00                   |                                     i32.load8_u 0 0
 0507f1: 41 0a                      |                                     i32.const 10
 0507f3: 47                         |                                     i32.ne
 0507f4: 0d 00                      |                                     br_if 0
 0507f6: 20 03                      |                                     local.get 3
 0507f8: 20 06                      |                                     local.get 6
 0507fa: 6a                         |                                     i32.add
 0507fb: 41 7f                      |                                     i32.const 4294967295
 0507fd: 6a                         |                                     i32.add
 0507fe: 21 07                      |                                     local.set 7
 050800: 0c 0e                      |                                     br 14
 050802: 0b                         |                                   end
 050803: 20 08                      |                                   local.get 8
 050805: 41 7f                      |                                   i32.const 4294967295
 050807: 6a                         |                                   i32.add
 050808: 22 08                      |                                   local.tee 8
 05080a: 2d 00 00                   |                                   i32.load8_u 0 0
 05080d: 41 0a                      |                                   i32.const 10
 05080f: 46                         |                                   i32.eq
 050810: 0d 06                      |                                   br_if 6
 050812: 20 08                      |                                   local.get 8
 050814: 41 7f                      |                                   i32.const 4294967295
 050816: 6a                         |                                   i32.add
 050817: 22 08                      |                                   local.tee 8
 050819: 2d 00 00                   |                                   i32.load8_u 0 0
 05081c: 41 0a                      |                                   i32.const 10
 05081e: 46                         |                                   i32.eq
 05081f: 0d 05                      |                                   br_if 5
 050821: 20 06                      |                                   local.get 6
 050823: 41 7c                      |                                   i32.const 4294967292
 050825: 6a                         |                                   i32.add
 050826: 21 06                      |                                   local.set 6
 050828: 20 07                      |                                   local.get 7
 05082a: 41 7c                      |                                   i32.const 4294967292
 05082c: 6a                         |                                   i32.add
 05082d: 21 07                      |                                   local.set 7
 05082f: 20 08                      |                                   local.get 8
 050831: 41 7f                      |                                   i32.const 4294967295
 050833: 6a                         |                                   i32.add
 050834: 2d 00 00                   |                                   i32.load8_u 0 0
 050837: 41 0a                      |                                   i32.const 10
 050839: 47                         |                                   i32.ne
 05083a: 0d 00                      |                                   br_if 0
 05083c: 0b                         |                                 end
 05083d: 20 03                      |                                 local.get 3
 05083f: 20 06                      |                                 local.get 6
 050841: 6a                         |                                 i32.add
 050842: 21 07                      |                                 local.set 7
 050844: 0c 0c                      |                                 br 12
 050846: 0b                         |                               end
 050847: 20 00                      |                               local.get 0
 050849: 20 01                      |                               local.get 1
 05084b: 20 02                      |                               local.get 2
 05084d: 20 03                      |                               local.get 3
 05084f: 10 f9 85 80 80 00          |                               call 761 <_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h871af1bbf79642c4E>
 050855: 0c 0e                      |                               br 14
 050857: 0b                         |                             end
 050858: 20 06                      |                             local.get 6
 05085a: 41 7f                      |                             i32.const 4294967295
 05085c: 6a                         |                             i32.add
 05085d: 21 06                      |                             local.set 6
 05085f: 20 0d                      |                             local.get 13
 050861: 20 0e                      |                             local.get 14
 050863: 6a                         |                             i32.add
 050864: 21 0f                      |                             local.set 15
 050866: 20 0e                      |                             local.get 14
 050868: 41 7f                      |                             i32.const 4294967295
 05086a: 6a                         |                             i32.add
 05086b: 22 10                      |                             local.tee 16
 05086d: 21 0e                      |                             local.set 14
 05086f: 20 0f                      |                             local.get 15
 050871: 41 7f                      |                             i32.const 4294967295
 050873: 6a                         |                             i32.add
 050874: 2d 00 00                   |                             i32.load8_u 0 0
 050877: 41 0a                      |                             i32.const 10
 050879: 47                         |                             i32.ne
 05087a: 0d 00                      |                             br_if 0
 05087c: 0b                         |                           end
 05087d: 20 08                      |                           local.get 8
 05087f: 20 0c                      |                           local.get 12
 050881: 6b                         |                           i32.sub
 050882: 20 07                      |                           local.get 7
 050884: 6a                         |                           i32.add
 050885: 20 10                      |                           local.get 16
 050887: 6a                         |                           i32.add
 050888: 21 06                      |                           local.set 6
 05088a: 0c 08                      |                           br 8
 05088c: 0b                         |                         end
 05088d: 20 0f                      |                         local.get 15
 05088f: 20 03                      |                         local.get 3
 050891: 10 ba 80 80 80 00          |                         call 58 <_ZN4core5slice20slice_index_len_fail17h83fed7c42dc022c6E>
 050897: 00                         |                         unreachable
 050898: 0b                         |                       end
 050899: 20 03                      |                       local.get 3
 05089b: 20 06                      |                       local.get 6
 05089d: 6a                         |                       i32.add
 05089e: 41 7d                      |                       i32.const 4294967293
 0508a0: 6a                         |                       i32.add
 0508a1: 21 07                      |                       local.set 7
 0508a3: 0c 07                      |                       br 7
 0508a5: 0b                         |                     end
 0508a6: 20 03                      |                     local.get 3
 0508a8: 20 06                      |                     local.get 6
 0508aa: 6a                         |                     i32.add
 0508ab: 41 7e                      |                     i32.const 4294967294
 0508ad: 6a                         |                     i32.add
 0508ae: 21 07                      |                     local.set 7
 0508b0: 0c 06                      |                     br 6
 0508b2: 0b                         |                   end
 0508b3: 02 40                      |                   block
 0508b5: 20 08                      |                     local.get 8
 0508b7: 20 07                      |                     local.get 7
 0508b9: 6a                         |                     i32.add
 0508ba: 22 06                      |                     local.tee 6
 0508bc: 41 7f                      |                     i32.const 4294967295
 0508be: 6a                         |                     i32.add
 0508bf: 2d 00 00                   |                     i32.load8_u 0 0
 0508c2: 41 0a                      |                     i32.const 10
 0508c4: 47                         |                     i32.ne
 0508c5: 0d 00                      |                     br_if 0
 0508c7: 20 08                      |                     local.get 8
 0508c9: 20 0c                      |                     local.get 12
 0508cb: 6b                         |                     i32.sub
 0508cc: 20 07                      |                     local.get 7
 0508ce: 6a                         |                     i32.add
 0508cf: 41 7f                      |                     i32.const 4294967295
 0508d1: 6a                         |                     i32.add
 0508d2: 21 06                      |                     local.set 6
 0508d4: 0c 05                      |                     br 5
 0508d6: 0b                         |                   end
 0508d7: 20 06                      |                   local.get 6
 0508d9: 41 7e                      |                   i32.const 4294967294
 0508db: 6a                         |                   i32.add
 0508dc: 2d 00 00                   |                   i32.load8_u 0 0
 0508df: 41 0a                      |                   i32.const 10
 0508e1: 46                         |                   i32.eq
 0508e2: 0d 03                      |                   br_if 3
 0508e4: 20 06                      |                   local.get 6
 0508e6: 41 7d                      |                   i32.const 4294967293
 0508e8: 6a                         |                   i32.add
 0508e9: 2d 00 00                   |                   i32.load8_u 0 0
 0508ec: 41 0a                      |                   i32.const 10
 0508ee: 46                         |                   i32.eq
 0508ef: 0d 02                      |                   br_if 2
 0508f1: 20 07                      |                   local.get 7
 0508f3: 41 7c                      |                   i32.const 4294967292
 0508f5: 6a                         |                   i32.add
 0508f6: 21 07                      |                   local.set 7
 0508f8: 20 06                      |                   local.get 6
 0508fa: 41 7c                      |                   i32.const 4294967292
 0508fc: 6a                         |                   i32.add
 0508fd: 22 06                      |                   local.tee 6
 0508ff: 2d 00 00                   |                   i32.load8_u 0 0
 050902: 41 0a                      |                   i32.const 10
 050904: 47                         |                   i32.ne
 050905: 0d 00                      |                   br_if 0
 050907: 0b                         |                 end
 050908: 20 08                      |                 local.get 8
 05090a: 20 0c                      |                 local.get 12
 05090c: 6b                         |                 i32.sub
 05090d: 20 07                      |                 local.get 7
 05090f: 6a                         |                 i32.add
 050910: 21 06                      |                 local.set 6
 050912: 0c 03                      |                 br 3
 050914: 0b                         |               end
 050915: 20 0a                      |               local.get 10
 050917: 20 03                      |               local.get 3
 050919: 10 bb 80 80 80 00          |               call 59 <_ZN4core5slice22slice_index_order_fail17h0075e20b24991500E>
 05091f: 00                         |               unreachable
 050920: 0b                         |             end
 050921: 20 08                      |             local.get 8
 050923: 20 0c                      |             local.get 12
 050925: 6b                         |             i32.sub
 050926: 20 07                      |             local.get 7
 050928: 6a                         |             i32.add
 050929: 41 7d                      |             i32.const 4294967293
 05092b: 6a                         |             i32.add
 05092c: 21 06                      |             local.set 6
 05092e: 0c 01                      |             br 1
 050930: 0b                         |           end
 050931: 20 08                      |           local.get 8
 050933: 20 0c                      |           local.get 12
 050935: 6b                         |           i32.sub
 050936: 20 07                      |           local.get 7
 050938: 6a                         |           i32.add
 050939: 41 7e                      |           i32.const 4294967294
 05093b: 6a                         |           i32.add
 05093c: 21 06                      |           local.set 6
 05093e: 0b                         |         end
 05093f: 20 06                      |         local.get 6
 050941: 20 0a                      |         local.get 10
 050943: 6a                         |         i32.add
 050944: 22 07                      |         local.tee 7
 050946: 41 7f                      |         i32.const 4294967295
 050948: 46                         |         i32.eq
 050949: 0d 01                      |         br_if 1
 05094b: 0b                         |       end
 05094c: 20 07                      |       local.get 7
 05094e: 41 01                      |       i32.const 1
 050950: 6a                         |       i32.add
 050951: 21 06                      |       local.set 6
 050953: 20 07                      |       local.get 7
 050955: 20 03                      |       local.get 3
 050957: 49                         |       i32.lt_u
 050958: 0d 01                      |       br_if 1
 05095a: 20 06                      |       local.get 6
 05095c: 20 03                      |       local.get 3
 05095e: 10 ba 80 80 80 00          |       call 58 <_ZN4core5slice20slice_index_len_fail17h83fed7c42dc022c6E>
 050964: 00                         |       unreachable
 050965: 0b                         |     end
 050966: 10 e1 84 80 80 00          |     call 609 <_ZN4core5slice25slice_index_overflow_fail17h079db10cf295312bE>
 05096c: 00                         |     unreachable
 05096d: 0b                         |   end
 05096e: 20 04                      |   local.get 4
 050970: 20 01                      |   local.get 1
 050972: 20 02                      |   local.get 2
 050974: 20 06                      |   local.get 6
 050976: 10 f9 85 80 80 00          |   call 761 <_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h871af1bbf79642c4E>
 05097c: 20 04                      |   local.get 4
 05097e: 41 08                      |   i32.const 8
 050980: 6a                         |   i32.add
 050981: 28 02 00                   |   i32.load 2 0
 050984: 21 08                      |   local.set 8
 050986: 20 04                      |   local.get 4
 050988: 28 02 04                   |   i32.load 2 4
 05098b: 21 07                      |   local.set 7
 05098d: 02 40                      |   block
 05098f: 02 40                      |     block
 050991: 20 04                      |       local.get 4
 050993: 28 02 00                   |       i32.load 2 0
 050996: 22 0e                      |       local.tee 14
 050998: 41 01                      |       i32.const 1
 05099a: 4b                         |       i32.gt_u
 05099b: 0d 00                      |       br_if 0
 05099d: 02 40                      |       block
 05099f: 20 0e                      |         local.get 14
 0509a1: 0e 02 02 00 02             |         br_table 2 0 2
 0509a6: 0b                         |       end
 0509a7: 20 00                      |       local.get 0
 0509a9: 41 01                      |       i32.const 1
 0509ab: 36 02 00                   |       i32.store 2 0
 0509ae: 20 00                      |       local.get 0
 0509b0: 20 08                      |       local.get 8
 0509b2: ad                         |       i64.extend_i32_u
 0509b3: 42 20                      |       i64.const 32
 0509b5: 86                         |       i64.shl
 0509b6: 20 07                      |       local.get 7
 0509b8: ad                         |       i64.extend_i32_u
 0509b9: 84                         |       i64.or
 0509ba: 37 02 04                   |       i64.store 2 4
 0509bd: 0c 02                      |       br 2
 0509bf: 0b                         |     end
 0509c0: 20 07                      |     local.get 7
 0509c2: 41 ff 01                   |     i32.const 255
 0509c5: 71                         |     i32.and
 0509c6: 41 02                      |     i32.const 2
 0509c8: 49                         |     i32.lt_u
 0509c9: 0d 00                      |     br_if 0
 0509cb: 20 08                      |     local.get 8
 0509cd: 28 02 00                   |     i32.load 2 0
 0509d0: 20 08                      |     local.get 8
 0509d2: 28 02 04                   |     i32.load 2 4
 0509d5: 28 02 00                   |     i32.load 2 0
 0509d8: 11 81 80 80 80 00 00       |     call_indirect 0 (type 1)
 0509df: 02 40                      |     block
 0509e1: 20 08                      |       local.get 8
 0509e3: 28 02 04                   |       i32.load 2 4
 0509e6: 22 0e                      |       local.tee 14
 0509e8: 28 02 04                   |       i32.load 2 4
 0509eb: 22 0c                      |       local.tee 12
 0509ed: 45                         |       i32.eqz
 0509ee: 0d 00                      |       br_if 0
 0509f0: 20 08                      |       local.get 8
 0509f2: 28 02 00                   |       i32.load 2 0
 0509f5: 20 0c                      |       local.get 12
 0509f7: 20 0e                      |       local.get 14
 0509f9: 28 02 08                   |       i32.load 2 8
 0509fc: 10 9e 80 80 80 00          |       call 30 <__rust_dealloc>
 050a02: 0b                         |     end
 050a03: 20 08                      |     local.get 8
 050a05: 41 0c                      |     i32.const 12
 050a07: 41 04                      |     i32.const 4
 050a09: 10 9e 80 80 80 00          |     call 30 <__rust_dealloc>
 050a0f: 0b                         |   end
 050a10: 20 01                      |   local.get 1
 050a12: 41 01                      |   i32.const 1
 050a14: 3a 00 10                   |   i32.store8 0 16
 050a17: 20 04                      |   local.get 4
 050a19: 20 01                      |   local.get 1
 050a1b: 10 dc 84 80 80 00          |   call 604 <_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h8d95a80e141242f4E>
 050a21: 02 40                      |   block
 050a23: 02 40                      |     block
 050a25: 02 40                      |       block
 050a27: 02 40                      |         block
 050a29: 02 40                      |           block
 050a2b: 20 04                      |             local.get 4
 050a2d: 2d 00 00                   |             i32.load8_u 0 0
 050a30: 41 03                      |             i32.const 3
 050a32: 47                         |             i32.ne
 050a33: 0d 00                      |             br_if 0
 050a35: 20 01                      |             local.get 1
 050a37: 2d 00 0c                   |             i32.load8_u 0 12
 050a3a: 41 02                      |             i32.const 2
 050a3c: 47                         |             i32.ne
 050a3d: 0d 01                      |             br_if 1
 050a3f: 41 94 97 c3 80 00          |             i32.const 1100692
 050a45: 10 cf 80 80 80 00          |             call 79 <_ZN4core9panicking5panic17h5093c663207ac16fE>
 050a4b: 00                         |             unreachable
 050a4c: 0b                         |           end
 050a4d: 20 04                      |           local.get 4
 050a4f: 31 00 00                   |           i64.load8_u 0 0
 050a52: 42 03                      |           i64.const 3
 050a54: 52                         |           i64.ne
 050a55: 0d 01                      |           br_if 1
 050a57: 0b                         |         end
 050a58: 20 01                      |         local.get 1
 050a5a: 41 00                      |         i32.const 0
 050a5c: 3a 00 10                   |         i32.store8 0 16
 050a5f: 20 07                      |         local.get 7
 050a61: 20 06                      |         local.get 6
 050a63: 46                         |         i32.eq
 050a64: 0d 01                      |         br_if 1
 050a66: 0c 02                      |         br 2
 050a68: 0b                         |       end
 050a69: 20 04                      |       local.get 4
 050a6b: 28 02 04                   |       i32.load 2 4
 050a6e: 21 08                      |       local.set 8
 050a70: 20 07                      |       local.get 7
 050a72: 20 06                      |       local.get 6
 050a74: 47                         |       i32.ne
 050a75: 20 04                      |       local.get 4
 050a77: 28 02 00                   |       i32.load 2 0
 050a7a: 22 0c                      |       local.tee 12
 050a7c: 41 ff 01                   |       i32.const 255
 050a7f: 71                         |       i32.and
 050a80: 41 03                      |       i32.const 3
 050a82: 47                         |       i32.ne
 050a83: 72                         |       i32.or
 050a84: 21 0e                      |       local.set 14
 050a86: 02 40                      |       block
 050a88: 02 40                      |         block
 050a8a: 41 00                      |           i32.const 0
 050a8c: 0d 00                      |           br_if 0
 050a8e: 20 0c                      |           local.get 12
 050a90: 41 03                      |           i32.const 3
 050a92: 71                         |           i32.and
 050a93: 41 02                      |           i32.const 2
 050a95: 47                         |           i32.ne
 050a96: 0d 01                      |           br_if 1
 050a98: 0b                         |         end
 050a99: 20 08                      |         local.get 8
 050a9b: 28 02 00                   |         i32.load 2 0
 050a9e: 20 08                      |         local.get 8
 050aa0: 28 02 04                   |         i32.load 2 4
 050aa3: 28 02 00                   |         i32.load 2 0
 050aa6: 11 81 80 80 80 00 00       |         call_indirect 0 (type 1)
 050aad: 02 40                      |         block
 050aaf: 20 08                      |           local.get 8
 050ab1: 28 02 04                   |           i32.load 2 4
 050ab4: 22 0c                      |           local.tee 12
 050ab6: 28 02 04                   |           i32.load 2 4
 050ab9: 22 0f                      |           local.tee 15
 050abb: 45                         |           i32.eqz
 050abc: 0d 00                      |           br_if 0
 050abe: 20 08                      |           local.get 8
 050ac0: 28 02 00                   |           i32.load 2 0
 050ac3: 20 0f                      |           local.get 15
 050ac5: 20 0c                      |           local.get 12
 050ac7: 28 02 08                   |           i32.load 2 8
 050aca: 10 9e 80 80 80 00          |           call 30 <__rust_dealloc>
 050ad0: 0b                         |         end
 050ad1: 20 08                      |         local.get 8
 050ad3: 41 0c                      |         i32.const 12
 050ad5: 41 04                      |         i32.const 4
 050ad7: 10 9e 80 80 80 00          |         call 30 <__rust_dealloc>
 050add: 0b                         |       end
 050ade: 20 0e                      |       local.get 14
 050ae0: 0d 01                      |       br_if 1
 050ae2: 0b                         |     end
 050ae3: 20 04                      |     local.get 4
 050ae5: 20 01                      |     local.get 1
 050ae7: 20 02                      |     local.get 2
 050ae9: 20 06                      |     local.get 6
 050aeb: 6a                         |     i32.add
 050aec: 20 03                      |     local.get 3
 050aee: 20 06                      |     local.get 6
 050af0: 6b                         |     i32.sub
 050af1: 10 f9 85 80 80 00          |     call 761 <_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h871af1bbf79642c4E>
 050af7: 02 40                      |     block
 050af9: 20 04                      |       local.get 4
 050afb: 28 02 00                   |       i32.load 2 0
 050afe: 41 01                      |       i32.const 1
 050b00: 46                         |       i32.eq
 050b01: 0d 00                      |       br_if 0
 050b03: 20 00                      |       local.get 0
 050b05: 41 00                      |       i32.const 0
 050b07: 36 02 00                   |       i32.store 2 0
 050b0a: 20 00                      |       local.get 0
 050b0c: 20 04                      |       local.get 4
 050b0e: 28 02 04                   |       i32.load 2 4
 050b11: 20 07                      |       local.get 7
 050b13: 6a                         |       i32.add
 050b14: 36 02 04                   |       i32.store 2 4
 050b17: 0c 02                      |       br 2
 050b19: 0b                         |     end
 050b1a: 20 00                      |     local.get 0
 050b1c: 41 00                      |     i32.const 0
 050b1e: 36 02 00                   |     i32.store 2 0
 050b21: 20 00                      |     local.get 0
 050b23: 20 07                      |     local.get 7
 050b25: 36 02 04                   |     i32.store 2 4
 050b28: 20 04                      |     local.get 4
 050b2a: 2d 00 04                   |     i32.load8_u 0 4
 050b2d: 41 02                      |     i32.const 2
 050b2f: 49                         |     i32.lt_u
 050b30: 0d 01                      |     br_if 1
 050b32: 20 04                      |     local.get 4
 050b34: 41 08                      |     i32.const 8
 050b36: 6a                         |     i32.add
 050b37: 28 02 00                   |     i32.load 2 0
 050b3a: 22 06                      |     local.tee 6
 050b3c: 28 02 00                   |     i32.load 2 0
 050b3f: 20 06                      |     local.get 6
 050b41: 28 02 04                   |     i32.load 2 4
 050b44: 28 02 00                   |     i32.load 2 0
 050b47: 11 81 80 80 80 00 00       |     call_indirect 0 (type 1)
 050b4e: 02 40                      |     block
 050b50: 20 06                      |       local.get 6
 050b52: 28 02 04                   |       i32.load 2 4
 050b55: 22 07                      |       local.tee 7
 050b57: 28 02 04                   |       i32.load 2 4
 050b5a: 22 03                      |       local.tee 3
 050b5c: 45                         |       i32.eqz
 050b5d: 0d 00                      |       br_if 0
 050b5f: 20 06                      |       local.get 6
 050b61: 28 02 00                   |       i32.load 2 0
 050b64: 20 03                      |       local.get 3
 050b66: 20 07                      |       local.get 7
 050b68: 28 02 08                   |       i32.load 2 8
 050b6b: 10 9e 80 80 80 00          |       call 30 <__rust_dealloc>
 050b71: 0b                         |     end
 050b72: 20 06                      |     local.get 6
 050b74: 41 0c                      |     i32.const 12
 050b76: 41 04                      |     i32.const 4
 050b78: 10 9e 80 80 80 00          |     call 30 <__rust_dealloc>
 050b7e: 0c 01                      |     br 1
 050b80: 0b                         |   end
 050b81: 20 00                      |   local.get 0
 050b83: 41 00                      |   i32.const 0
 050b85: 36 02 00                   |   i32.store 2 0
 050b88: 20 00                      |   local.get 0
 050b8a: 20 07                      |   local.get 7
 050b8c: 36 02 04                   |   i32.store 2 4
 050b8f: 0b                         | end
 050b90: 20 04                      | local.get 4
 050b92: 41 10                      | i32.const 16
 050b94: 6a                         | i32.add
 050b95: 24 80 80 80 80 00          | global.set 0
 050b9b: 0b                         | end
