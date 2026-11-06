03c43f func[467] <_ZN4clap7builder7command3App19unroll_arg_requires17hf78520de9b1a85a5E>:
 03c440: 09 7f                      | local[5..13] type=i32
 03c442: 01 7e                      | local[14] type=i64
 03c444: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 03c44a: 41 30                      | i32.const 48
 03c44c: 6b                         | i32.sub
 03c44d: 22 05                      | local.tee 5
 03c44f: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 03c455: 20 05                      | local.get 5
 03c457: 41 00                      | i32.const 0
 03c459: 36 02 18                   | i32.store 2 24
 03c45c: 20 05                      | local.get 5
 03c45e: 42 04                      | i64.const 4
 03c460: 37 03 10                   | i64.store 3 16
 03c463: 02 40                      | block
 03c465: 02 40                      |   block
 03c467: 41 04                      |     i32.const 4
 03c469: 41 04                      |     i32.const 4
 03c46b: 10 c9 80 80 80 00          |     call 73 <__rust_alloc>
 03c471: 22 06                      |     local.tee 6
 03c473: 45                         |     i32.eqz
 03c474: 0d 00                      |     br_if 0
 03c476: 20 06                      |     local.get 6
 03c478: 20 04                      |     local.get 4
 03c47a: 36 02 00                   |     i32.store 2 0
 03c47d: 20 00                      |     local.get 0
 03c47f: 41 00                      |     i32.const 0
 03c481: 36 02 08                   |     i32.store 2 8
 03c484: 20 00                      |     local.get 0
 03c486: 42 08                      |     i64.const 8
 03c488: 37 02 00                   |     i64.store 2 0
 03c48b: 20 05                      |     local.get 5
 03c48d: 20 06                      |     local.get 6
 03c48f: 36 02 20                   |     i32.store 2 32
 03c492: 20 05                      |     local.get 5
 03c494: 42 01                      |     i64.const 1
 03c496: 37 02 24                   |     i64.store 2 36
 03c499: 20 04                      |     local.get 4
 03c49b: 45                         |     i32.eqz
 03c49c: 0d 01                      |     br_if 1
 03c49e: 20 02                      |     local.get 2
 03c4a0: 41 10                      |     i32.const 16
 03c4a2: 6a                         |     i32.add
 03c4a3: 21 07                      |     local.set 7
 03c4a5: 20 01                      |     local.get 1
 03c4a7: 28 02 90 02                |     i32.load 2 272
 03c4ab: 22 06                      |     local.tee 6
 03c4ad: 41 b0 7d                   |     i32.const 4294966960
 03c4b0: 6a                         |     i32.add
 03c4b1: 21 08                      |     local.set 8
 03c4b3: 20 01                      |     local.get 1
 03c4b5: 41 98 02                   |     i32.const 280
 03c4b8: 6a                         |     i32.add
 03c4b9: 28 02 00                   |     i32.load 2 0
 03c4bc: 41 d0 02                   |     i32.const 336
 03c4bf: 6c                         |     i32.mul
 03c4c0: 21 09                      |     local.set 9
 03c4c2: 20 06                      |     local.get 6
 03c4c4: 41 84 7e                   |     i32.const 4294967044
 03c4c7: 6a                         |     i32.add
 03c4c8: 21 0a                      |     local.set 10
 03c4ca: 03 40                      |     loop
 03c4cc: 20 05                      |       local.get 5
 03c4ce: 28 02 18                   |       i32.load 2 24
 03c4d1: 22 0b                      |       local.tee 11
 03c4d3: 41 02                      |       i32.const 2
 03c4d5: 74                         |       i32.shl
 03c4d6: 21 06                      |       local.set 6
 03c4d8: 20 05                      |       local.get 5
 03c4da: 28 02 10                   |       i32.load 2 16
 03c4dd: 22 0c                      |       local.tee 12
 03c4df: 21 01                      |       local.set 1
 03c4e1: 02 40                      |       block
 03c4e3: 02 40                      |         block
 03c4e5: 03 40                      |           loop
 03c4e7: 20 06                      |             local.get 6
 03c4e9: 45                         |             i32.eqz
 03c4ea: 0d 01                      |             br_if 1
 03c4ec: 20 06                      |             local.get 6
 03c4ee: 41 7c                      |             i32.const 4294967292
 03c4f0: 6a                         |             i32.add
 03c4f1: 21 06                      |             local.set 6
 03c4f3: 20 01                      |             local.get 1
 03c4f5: 28 02 00                   |             i32.load 2 0
 03c4f8: 21 0d                      |             local.set 13
 03c4fa: 20 01                      |             local.get 1
 03c4fc: 41 04                      |             i32.const 4
 03c4fe: 6a                         |             i32.add
 03c4ff: 21 01                      |             local.set 1
 03c501: 20 04                      |             local.get 4
 03c503: 29 03 00                   |             i64.load 3 0
 03c506: 20 0d                      |             local.get 13
 03c508: 29 03 00                   |             i64.load 3 0
 03c50b: 52                         |             i64.ne
 03c50c: 0d 00                      |             br_if 0
 03c50e: 0c 02                      |             br 2
 03c510: 0b                         |           end
 03c511: 0b                         |         end
 03c512: 02 40                      |         block
 03c514: 20 0b                      |           local.get 11
 03c516: 20 05                      |           local.get 5
 03c518: 28 02 14                   |           i32.load 2 20
 03c51b: 47                         |           i32.ne
 03c51c: 0d 00                      |           br_if 0
 03c51e: 20 05                      |           local.get 5
 03c520: 41 10                      |           i32.const 16
 03c522: 6a                         |           i32.add
 03c523: 20 0b                      |           local.get 11
 03c525: 10 e2 80 80 80 00          |           call 98 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3fde1af410b0fa19E>
 03c52b: 20 05                      |           local.get 5
 03c52d: 28 02 10                   |           i32.load 2 16
 03c530: 21 0c                      |           local.set 12
 03c532: 20 05                      |           local.get 5
 03c534: 28 02 18                   |           i32.load 2 24
 03c537: 21 0b                      |           local.set 11
 03c539: 0b                         |         end
 03c53a: 20 0c                      |         local.get 12
 03c53c: 20 0b                      |         local.get 11
 03c53e: 41 02                      |         i32.const 2
 03c540: 74                         |         i32.shl
 03c541: 6a                         |         i32.add
 03c542: 20 04                      |         local.get 4
 03c544: 36 02 00                   |         i32.store 2 0
 03c547: 20 05                      |         local.get 5
 03c549: 20 05                      |         local.get 5
 03c54b: 28 02 18                   |         i32.load 2 24
 03c54e: 41 01                      |         i32.const 1
 03c550: 6a                         |         i32.add
 03c551: 36 02 18                   |         i32.store 2 24
 03c554: 20 09                      |         local.get 9
 03c556: 21 06                      |         local.set 6
 03c558: 20 0a                      |         local.get 10
 03c55a: 21 01                      |         local.set 1
 03c55c: 03 40                      |         loop
 03c55e: 20 06                      |           local.get 6
 03c560: 45                         |           i32.eqz
 03c561: 0d 01                      |           br_if 1
 03c563: 20 06                      |           local.get 6
 03c565: 41 b0 7d                   |           i32.const 4294966960
 03c568: 6a                         |           i32.add
 03c569: 21 06                      |           local.set 6
 03c56b: 20 01                      |           local.get 1
 03c56d: 41 fc 01                   |           i32.const 252
 03c570: 6a                         |           i32.add
 03c571: 21 0d                      |           local.set 13
 03c573: 20 01                      |           local.get 1
 03c575: 41 d0 02                   |           i32.const 336
 03c578: 6a                         |           i32.add
 03c579: 22 0b                      |           local.tee 11
 03c57b: 21 01                      |           local.set 1
 03c57d: 20 0d                      |           local.get 13
 03c57f: 29 03 00                   |           i64.load 3 0
 03c582: 20 04                      |           local.get 4
 03c584: 29 03 00                   |           i64.load 3 0
 03c587: 52                         |           i64.ne
 03c588: 0d 00                      |           br_if 0
 03c58a: 0b                         |         end
 03c58b: 20 0b                      |         local.get 11
 03c58d: 28 02 00                   |         i32.load 2 0
 03c590: 22 06                      |         local.tee 6
 03c592: 20 0b                      |         local.get 11
 03c594: 41 08                      |         i32.const 8
 03c596: 6a                         |         i32.add
 03c597: 28 02 00                   |         i32.load 2 0
 03c59a: 41 04                      |         i32.const 4
 03c59c: 74                         |         i32.shl
 03c59d: 6a                         |         i32.add
 03c59e: 21 0d                      |         local.set 13
 03c5a0: 03 40                      |         loop
 03c5a2: 20 06                      |           local.get 6
 03c5a4: 20 0d                      |           local.get 13
 03c5a6: 46                         |           i32.eq
 03c5a7: 0d 01                      |           br_if 1
 03c5a9: 20 06                      |           local.get 6
 03c5ab: 41 08                      |           i32.const 8
 03c5ad: 6a                         |           i32.add
 03c5ae: 29 03 00                   |           i64.load 3 0
 03c5b1: 21 0e                      |           local.set 14
 03c5b3: 41 00                      |           i32.const 0
 03c5b5: 21 01                      |           local.set 1
 03c5b7: 02 40                      |           block
 03c5b9: 02 40                      |             block
 03c5bb: 02 40                      |               block
 03c5bd: 20 02                      |                 local.get 2
 03c5bf: 28 02 1c                   |                 i32.load 2 28
 03c5c2: 45                         |                 i32.eqz
 03c5c3: 0d 00                      |                 br_if 0
 03c5c5: 20 06                      |                 local.get 6
 03c5c7: 41 04                      |                 i32.const 4
 03c5c9: 6a                         |                 i32.add
 03c5ca: 28 02 00                   |                 i32.load 2 0
 03c5cd: 21 04                      |                 local.set 4
 03c5cf: 20 06                      |                 local.get 6
 03c5d1: 28 02 00                   |                 i32.load 2 0
 03c5d4: 21 0b                      |                 local.set 11
 03c5d6: 20 05                      |                 local.get 5
 03c5d8: 41 08                      |                 i32.const 8
 03c5da: 6a                         |                 i32.add
 03c5db: 20 07                      |                 local.get 7
 03c5dd: 20 02                      |                 local.get 2
 03c5df: 20 03                      |                 local.get 3
 03c5e1: 10 cc 81 80 80 00          |                 call 204 <_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h05f30dba2a2caa95E.llvm.6633275214437060990>
 03c5e7: 20 03                      |                 local.get 3
 03c5e9: 10 b4 82 80 80 00          |                 call 308 <_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$12get_index_of17h1db294af6b8d86a8E>
 03c5ef: 20 05                      |                 local.get 5
 03c5f1: 28 02 08                   |                 i32.load 2 8
 03c5f4: 41 01                      |                 i32.const 1
 03c5f6: 47                         |                 i32.ne
 03c5f7: 0d 00                      |                 br_if 0
 03c5f9: 20 05                      |                 local.get 5
 03c5fb: 28 02 0c                   |                 i32.load 2 12
 03c5fe: 22 01                      |                 local.tee 1
 03c600: 20 02                      |                 local.get 2
 03c602: 28 02 28                   |                 i32.load 2 40
 03c605: 22 0c                      |                 local.tee 12
 03c607: 4f                         |                 i32.ge_u
 03c608: 0d 01                      |                 br_if 1
 03c60a: 20 02                      |                 local.get 2
 03c60c: 28 02 20                   |                 i32.load 2 32
 03c60f: 20 01                      |                 local.get 1
 03c611: 41 d0 00                   |                 i32.const 80
 03c614: 6c                         |                 i32.mul
 03c615: 6a                         |                 i32.add
 03c616: 41 08                      |                 i32.const 8
 03c618: 6a                         |                 i32.add
 03c619: 20 0b                      |                 local.get 11
 03c61b: 20 04                      |                 local.get 4
 03c61d: 10 d6 81 80 80 00          |                 call 214 <_ZN4clap6parser7matches11matched_arg10MatchedArg14check_explicit17h47060e953846ab33E>
 03c623: 21 01                      |                 local.set 1
 03c625: 0b                         |               end
 03c626: 20 06                      |               local.get 6
 03c628: 41 10                      |               i32.const 16
 03c62a: 6a                         |               i32.add
 03c62b: 21 06                      |               local.set 6
 03c62d: 20 01                      |               local.get 1
 03c62f: 45                         |               i32.eqz
 03c630: 0d 02                      |               br_if 2
 03c632: 20 09                      |               local.get 9
 03c634: 21 01                      |               local.set 1
 03c636: 20 08                      |               local.get 8
 03c638: 21 04                      |               local.set 4
 03c63a: 03 40                      |               loop
 03c63c: 20 01                      |                 local.get 1
 03c63e: 45                         |                 i32.eqz
 03c63f: 0d 02                      |                 br_if 2
 03c641: 20 01                      |                 local.get 1
 03c643: 41 b0 7d                   |                 i32.const 4294966960
 03c646: 6a                         |                 i32.add
 03c647: 21 01                      |                 local.set 1
 03c649: 20 04                      |                 local.get 4
 03c64b: 41 d0 02                   |                 i32.const 336
 03c64e: 6a                         |                 i32.add
 03c64f: 22 04                      |                 local.tee 4
 03c651: 29 03 00                   |                 i64.load 3 0
 03c654: 20 0e                      |                 local.get 14
 03c656: 52                         |                 i64.ne
 03c657: 0d 00                      |                 br_if 0
 03c659: 0b                         |               end
 03c65a: 20 04                      |               local.get 4
 03c65c: 41 dc 00                   |               i32.const 92
 03c65f: 6a                         |               i32.add
 03c660: 28 02 00                   |               i32.load 2 0
 03c663: 45                         |               i32.eqz
 03c664: 0d 01                      |               br_if 1
 03c666: 02 40                      |               block
 03c668: 20 05                      |                 local.get 5
 03c66a: 28 02 28                   |                 i32.load 2 40
 03c66d: 22 01                      |                 local.tee 1
 03c66f: 20 05                      |                 local.get 5
 03c671: 28 02 24                   |                 i32.load 2 36
 03c674: 47                         |                 i32.ne
 03c675: 0d 00                      |                 br_if 0
 03c677: 20 05                      |                 local.get 5
 03c679: 41 20                      |                 i32.const 32
 03c67b: 6a                         |                 i32.add
 03c67c: 20 01                      |                 local.get 1
 03c67e: 10 e2 80 80 80 00          |                 call 98 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3fde1af410b0fa19E>
 03c684: 20 05                      |                 local.get 5
 03c686: 28 02 28                   |                 i32.load 2 40
 03c689: 21 01                      |                 local.set 1
 03c68b: 0b                         |               end
 03c68c: 20 05                      |               local.get 5
 03c68e: 28 02 20                   |               i32.load 2 32
 03c691: 20 01                      |               local.get 1
 03c693: 41 02                      |               i32.const 2
 03c695: 74                         |               i32.shl
 03c696: 6a                         |               i32.add
 03c697: 20 04                      |               local.get 4
 03c699: 36 02 00                   |               i32.store 2 0
 03c69c: 20 05                      |               local.get 5
 03c69e: 20 05                      |               local.get 5
 03c6a0: 28 02 28                   |               i32.load 2 40
 03c6a3: 41 01                      |               i32.const 1
 03c6a5: 6a                         |               i32.add
 03c6a6: 36 02 28                   |               i32.store 2 40
 03c6a9: 0c 01                      |               br 1
 03c6ab: 0b                         |             end
 03c6ac: 20 01                      |             local.get 1
 03c6ae: 20 0c                      |             local.get 12
 03c6b0: 41 c8 af c0 80 00          |             i32.const 1054664
 03c6b6: 10 99 87 80 80 00          |             call 921 <_ZN4core9panicking18panic_bounds_check17h12b713485dcf6439E>
 03c6bc: 00                         |             unreachable
 03c6bd: 0b                         |           end
 03c6be: 02 40                      |           block
 03c6c0: 20 00                      |             local.get 0
 03c6c2: 28 02 08                   |             i32.load 2 8
 03c6c5: 22 01                      |             local.tee 1
 03c6c7: 20 00                      |             local.get 0
 03c6c9: 28 02 04                   |             i32.load 2 4
 03c6cc: 47                         |             i32.ne
 03c6cd: 0d 00                      |             br_if 0
 03c6cf: 20 00                      |             local.get 0
 03c6d1: 20 01                      |             local.get 1
 03c6d3: 10 e8 80 80 80 00          |             call 104 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17heacbd6e7539e785aE>
 03c6d9: 20 00                      |             local.get 0
 03c6db: 28 02 08                   |             i32.load 2 8
 03c6de: 21 01                      |             local.set 1
 03c6e0: 0b                         |           end
 03c6e1: 20 00                      |           local.get 0
 03c6e3: 28 02 00                   |           i32.load 2 0
 03c6e6: 20 01                      |           local.get 1
 03c6e8: 41 03                      |           i32.const 3
 03c6ea: 74                         |           i32.shl
 03c6eb: 6a                         |           i32.add
 03c6ec: 20 0e                      |           local.get 14
 03c6ee: 37 03 00                   |           i64.store 3 0
 03c6f1: 20 00                      |           local.get 0
 03c6f3: 20 00                      |           local.get 0
 03c6f5: 28 02 08                   |           i32.load 2 8
 03c6f8: 41 01                      |           i32.const 1
 03c6fa: 6a                         |           i32.add
 03c6fb: 36 02 08                   |           i32.store 2 8
 03c6fe: 0c 00                      |           br 0
 03c700: 0b                         |         end
 03c701: 0b                         |       end
 03c702: 20 05                      |       local.get 5
 03c704: 28 02 28                   |       i32.load 2 40
 03c707: 22 06                      |       local.tee 6
 03c709: 45                         |       i32.eqz
 03c70a: 0d 02                      |       br_if 2
 03c70c: 20 05                      |       local.get 5
 03c70e: 20 06                      |       local.get 6
 03c710: 41 7f                      |       i32.const 4294967295
 03c712: 6a                         |       i32.add
 03c713: 22 06                      |       local.tee 6
 03c715: 36 02 28                   |       i32.store 2 40
 03c718: 20 05                      |       local.get 5
 03c71a: 28 02 20                   |       i32.load 2 32
 03c71d: 20 06                      |       local.get 6
 03c71f: 41 02                      |       i32.const 2
 03c721: 74                         |       i32.shl
 03c722: 6a                         |       i32.add
 03c723: 28 02 00                   |       i32.load 2 0
 03c726: 22 04                      |       local.tee 4
 03c728: 0d 00                      |       br_if 0
 03c72a: 0c 02                      |       br 2
 03c72c: 0b                         |     end
 03c72d: 0b                         |   end
 03c72e: 41 04                      |   i32.const 4
 03c730: 41 04                      |   i32.const 4
 03c732: 10 f9 86 80 80 00          |   call 889 <_ZN5alloc5alloc18handle_alloc_error17h4c360394f7373f43E>
 03c738: 00                         |   unreachable
 03c739: 0b                         | end
 03c73a: 02 40                      | block
 03c73c: 20 05                      |   local.get 5
 03c73e: 28 02 24                   |   i32.load 2 36
 03c741: 22 06                      |   local.tee 6
 03c743: 45                         |   i32.eqz
 03c744: 0d 00                      |   br_if 0
 03c746: 20 05                      |   local.get 5
 03c748: 28 02 20                   |   i32.load 2 32
 03c74b: 20 06                      |   local.get 6
 03c74d: 41 02                      |   i32.const 2
 03c74f: 74                         |   i32.shl
 03c750: 41 04                      |   i32.const 4
 03c752: 10 ca 80 80 80 00          |   call 74 <__rust_dealloc>
 03c758: 0b                         | end
 03c759: 02 40                      | block
 03c75b: 20 05                      |   local.get 5
 03c75d: 28 02 14                   |   i32.load 2 20
 03c760: 22 06                      |   local.tee 6
 03c762: 45                         |   i32.eqz
 03c763: 0d 00                      |   br_if 0
 03c765: 20 05                      |   local.get 5
 03c767: 28 02 10                   |   i32.load 2 16
 03c76a: 20 06                      |   local.get 6
 03c76c: 41 02                      |   i32.const 2
 03c76e: 74                         |   i32.shl
 03c76f: 41 04                      |   i32.const 4
 03c771: 10 ca 80 80 80 00          |   call 74 <__rust_dealloc>
 03c777: 0b                         | end
 03c778: 20 05                      | local.get 5
 03c77a: 41 30                      | i32.const 48
 03c77c: 6a                         | i32.add
 03c77d: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 03c783: 0b                         | end
