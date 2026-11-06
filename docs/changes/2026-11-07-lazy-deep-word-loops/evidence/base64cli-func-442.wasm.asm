036213 func[442] <_ZN4clap6parser6parser6Parser15push_arg_values17hb50980f2c41f036eE>:
 036214: 0d 7f                      | local[5..17] type=i32
 036216: 01 7e                      | local[18] type=i64
 036218: 04 7f                      | local[19..22] type=i32
 03621a: 01 7e                      | local[23] type=i64
 03621c: 01 7f                      | local[24] type=i32
 03621e: 02 7e                      | local[25..26] type=i64
 036220: 23 80 80 80 80 00          | global.get 0 <__stack_pointer>
 036226: 41 d0 00                   | i32.const 80
 036229: 6b                         | i32.sub
 03622a: 22 05                      | local.tee 5
 03622c: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 036232: 20 03                      | local.get 3
 036234: 28 02 00                   | i32.load 2 0
 036237: 22 06                      | local.tee 6
 036239: 20 03                      | local.get 3
 03623b: 28 02 08                   | i32.load 2 8
 03623e: 22 07                      | local.tee 7
 036240: 41 0c                      | i32.const 12
 036242: 6c                         | i32.mul
 036243: 22 08                      | local.tee 8
 036245: 6a                         | i32.add
 036246: 21 09                      | local.set 9
 036248: 20 03                      | local.get 3
 03624a: 28 02 04                   | i32.load 2 4
 03624d: 21 0a                      | local.set 10
 03624f: 20 06                      | local.get 6
 036251: 21 0b                      | local.set 11
 036253: 02 40                      | block
 036255: 02 40                      |   block
 036257: 20 07                      |     local.get 7
 036259: 45                         |     i32.eqz
 03625a: 0d 00                      |     br_if 0
 03625c: 20 04                      |     local.get 4
 03625e: 41 20                      |     i32.const 32
 036260: 6a                         |     i32.add
 036261: 21 0c                      |     local.set 12
 036263: 20 04                      |     local.get 4
 036265: 41 10                      |     i32.const 16
 036267: 6a                         |     i32.add
 036268: 21 0d                      |     local.set 13
 03626a: 20 02                      |     local.get 2
 03626c: 41 38                      |     i32.const 56
 03626e: 6a                         |     i32.add
 03626f: 21 0e                      |     local.set 14
 036271: 20 02                      |     local.get 2
 036273: 41 20                      |     i32.const 32
 036275: 6a                         |     i32.add
 036276: 21 0f                      |     local.set 15
 036278: 20 08                      |     local.get 8
 03627a: 41 74                      |     i32.const 4294967284
 03627c: 6a                         |     i32.add
 03627d: 21 10                      |     local.set 16
 03627f: 20 06                      |     local.get 6
 036281: 21 03                      |     local.set 3
 036283: 02 40                      |     block
 036285: 03 40                      |       loop
 036287: 20 03                      |         local.get 3
 036289: 41 0c                      |         i32.const 12
 03628b: 6a                         |         i32.add
 03628c: 21 0b                      |         local.set 11
 03628e: 20 03                      |         local.get 3
 036290: 28 02 00                   |         i32.load 2 0
 036293: 22 11                      |         local.tee 17
 036295: 45                         |         i32.eqz
 036296: 0d 02                      |         br_if 2
 036298: 20 03                      |         local.get 3
 03629a: 29 02 04                   |         i64.load 2 4
 03629d: 21 12                      |         local.set 18
 03629f: 20 01                      |         local.get 1
 0362a1: 20 01                      |         local.get 1
 0362a3: 28 02 04                   |         i32.load 2 4
 0362a6: 41 01                      |         i32.const 1
 0362a8: 6a                         |         i32.add
 0362a9: 36 02 04                   |         i32.store 2 4
 0362ac: 20 0f                      |         local.get 15
 0362ae: 21 07                      |         local.set 7
 0362b0: 02 40                      |         block
 0362b2: 20 0f                      |           local.get 15
 0362b4: 28 02 00                   |           i32.load 2 0
 0362b7: 41 05                      |           i32.const 5
 0362b9: 47                         |           i32.ne
 0362ba: 0d 00                      |           br_if 0
 0362bc: 41 b0 cd c0 80 00          |           i32.const 1058480
 0362c2: 41 bc cd c0 80 00          |           i32.const 1058492
 0362c8: 20 0e                      |           local.get 14
 0362ca: 41 15                      |           i32.const 21
 0362cc: 10 96 82 80 80 00          |           call 278 <_ZN4clap7builder12arg_settings8ArgFlags6is_set17ha2e61cf2bbe39f52E>
 0362d2: 1b                         |           select
 0362d3: 21 07                      |           local.set 7
 0362d5: 0b                         |         end
 0362d6: 20 12                      |         local.get 18
 0362d8: 42 20                      |         i64.const 32
 0362da: 88                         |         i64.shr_u
 0362db: a7                         |         i32.wrap_i64
 0362dc: 21 13                      |         local.set 19
 0362de: 20 01                      |         local.get 1
 0362e0: 28 02 00                   |         i32.load 2 0
 0362e3: 21 14                      |         local.set 20
 0362e5: 41 f8 d1 c0 80 00          |         i32.const 1059064
 0362eb: 21 15                      |         local.set 21
 0362ed: 41 80 d5 c0 80 00          |         i32.const 1059456
 0362f3: 21 08                      |         local.set 8
 0362f5: 02 40                      |         block
 0362f7: 02 40                      |           block
 0362f9: 02 40                      |             block
 0362fb: 02 40                      |               block
 0362fd: 02 40                      |                 block
 0362ff: 20 07                      |                   local.get 7
 036301: 28 02 00                   |                   i32.load 2 0
 036304: 0e 05 04 00 01 02 03 04    |                   br_table 4 0 1 2 3 4
 03630c: 0b                         |                 end
 03630d: 41 d0 d4 c0 80 00          |                 i32.const 1059408
 036313: 21 08                      |                 local.set 8
 036315: 0c 03                      |                 br 3
 036317: 0b                         |               end
 036318: 41 a0 d4 c0 80 00          |               i32.const 1059360
 03631e: 21 08                      |               local.set 8
 036320: 0c 02                      |               br 2
 036322: 0b                         |             end
 036323: 41 f0 d3 c0 80 00          |             i32.const 1059312
 036329: 21 08                      |             local.set 8
 03632b: 0c 01                      |             br 1
 03632d: 0b                         |           end
 03632e: 20 07                      |           local.get 7
 036330: 41 08                      |           i32.const 8
 036332: 6a                         |           i32.add
 036333: 28 02 00                   |           i32.load 2 0
 036336: 21 08                      |           local.set 8
 036338: 20 07                      |           local.get 7
 03633a: 28 02 04                   |           i32.load 2 4
 03633d: 21 15                      |           local.set 21
 03633f: 0b                         |         end
 036340: 20 05                      |         local.get 5
 036342: 41 20                      |         i32.const 32
 036344: 6a                         |         i32.add
 036345: 20 15                      |         local.get 21
 036347: 20 14                      |         local.get 20
 036349: 20 02                      |         local.get 2
 03634b: 20 11                      |         local.get 17
 03634d: 20 13                      |         local.get 19
 03634f: 20 08                      |         local.get 8
 036351: 28 02 10                   |         i32.load 2 16
 036354: 11 86 80 80 80 00 00       |         call_indirect 0 (type 6)
 03635b: 20 05                      |         local.get 5
 03635d: 28 02 20                   |         i32.load 2 32
 036360: 0d 01                      |         br_if 1
 036362: 20 05                      |         local.get 5
 036364: 28 02 34                   |         i32.load 2 52
 036367: 21 16                      |         local.set 22
 036369: 20 05                      |         local.get 5
 03636b: 28 02 30                   |         i32.load 2 48
 03636e: 21 14                      |         local.set 20
 036370: 20 05                      |         local.get 5
 036372: 29 03 28                   |         i64.load 3 40
 036375: 21 17                      |         local.set 23
 036377: 02 40                      |         block
 036379: 20 01                      |           local.get 1
 03637b: 28 02 00                   |           i32.load 2 0
 03637e: 22 03                      |           local.tee 3
 036380: 41 bc 02                   |           i32.const 316
 036383: 6a                         |           i32.add
 036384: 28 02 00                   |           i32.load 2 0
 036387: 22 07                      |           local.tee 7
 036389: 45                         |           i32.eqz
 03638a: 0d 00                      |           br_if 0
 03638c: 20 03                      |           local.get 3
 03638e: 28 02 b4 02                |           i32.load 2 308
 036392: 22 08                      |           local.tee 8
 036394: 20 07                      |           local.get 7
 036396: 41 38                      |           i32.const 56
 036398: 6c                         |           i32.mul
 036399: 6a                         |           i32.add
 03639a: 21 18                      |           local.set 24
 03639c: 20 02                      |           local.get 2
 03639e: 29 03 00                   |           i64.load 3 0
 0363a1: 21 19                      |           local.set 25
 0363a3: 03 40                      |           loop
 0363a5: 20 08                      |             local.get 8
 0363a7: 41 38                      |             i32.const 56
 0363a9: 6a                         |             i32.add
 0363aa: 21 15                      |             local.set 21
 0363ac: 20 08                      |             local.get 8
 0363ae: 41 18                      |             i32.const 24
 0363b0: 6a                         |             i32.add
 0363b1: 28 02 00                   |             i32.load 2 0
 0363b4: 41 03                      |             i32.const 3
 0363b6: 74                         |             i32.shl
 0363b7: 21 03                      |             local.set 3
 0363b9: 20 08                      |             local.get 8
 0363bb: 28 02 10                   |             i32.load 2 16
 0363be: 21 07                      |             local.set 7
 0363c0: 02 40                      |             block
 0363c2: 02 40                      |               block
 0363c4: 02 40                      |                 block
 0363c6: 02 40                      |                   block
 0363c8: 02 40                      |                     block
 0363ca: 02 40                      |                       block
 0363cc: 02 40                      |                         block
 0363ce: 02 40                      |                           block
 0363d0: 03 40                      |                             loop
 0363d2: 20 03                      |                               local.get 3
 0363d4: 45                         |                               i32.eqz
 0363d5: 0d 01                      |                               br_if 1
 0363d7: 20 03                      |                               local.get 3
 0363d9: 41 78                      |                               i32.const 4294967288
 0363db: 6a                         |                               i32.add
 0363dc: 21 03                      |                               local.set 3
 0363de: 20 07                      |                               local.get 7
 0363e0: 29 03 00                   |                               i64.load 3 0
 0363e3: 21 1a                      |                               local.set 26
 0363e5: 20 07                      |                               local.get 7
 0363e7: 41 08                      |                               i32.const 8
 0363e9: 6a                         |                               i32.add
 0363ea: 21 07                      |                               local.set 7
 0363ec: 20 1a                      |                               local.get 26
 0363ee: 20 19                      |                               local.get 25
 0363f0: 52                         |                               i64.ne
 0363f1: 0d 00                      |                               br_if 0
 0363f3: 0b                         |                             end
 0363f4: 20 05                      |                             local.get 5
 0363f6: 20 08                      |                             local.get 8
 0363f8: 29 03 00                   |                             i64.load 3 0
 0363fb: 37 03 38                   |                             i64.store 3 56
 0363fe: 20 14                      |                             local.get 20
 036400: 20 14                      |                             local.get 20
 036402: 28 02 00                   |                             i32.load 2 0
 036405: 22 03                      |                             local.tee 3
 036407: 41 01                      |                             i32.const 1
 036409: 6a                         |                             i32.add
 03640a: 36 02 00                   |                             i32.store 2 0
 03640d: 20 03                      |                             local.get 3
 03640f: 41 7f                      |                             i32.const 4294967295
 036411: 4c                         |                             i32.le_s
 036412: 0d 03                      |                             br_if 3
 036414: 20 13                      |                             local.get 19
 036416: 0d 01                      |                             br_if 1
 036418: 41 01                      |                             i32.const 1
 03641a: 21 03                      |                             local.set 3
 03641c: 0c 02                      |                             br 2
 03641e: 0b                         |                           end
 03641f: 20 18                      |                           local.get 24
 036421: 20 15                      |                           local.get 21
 036423: 46                         |                           i32.eq
 036424: 0d 08                      |                           br_if 8
 036426: 0c 06                      |                           br 6
 036428: 0b                         |                         end
 036429: 20 12                      |                         local.get 18
 03642b: 42 00                      |                         i64.const 0
 03642d: 53                         |                         i64.lt_s
 03642e: 0d 02                      |                         br_if 2
 036430: 20 13                      |                         local.get 19
 036432: 41 01                      |                         i32.const 1
 036434: 10 c9 80 80 80 00          |                         call 73 <__rust_alloc>
 03643a: 22 03                      |                         local.tee 3
 03643c: 45                         |                         i32.eqz
 03643d: 0d 03                      |                         br_if 3
 03643f: 0b                         |                       end
 036440: 20 03                      |                       local.get 3
 036442: 20 11                      |                       local.get 17
 036444: 20 13                      |                       local.get 19
 036446: 10 e1 86 80 80 00          |                       call 865 <memcpy>
 03644c: 21 07                      |                       local.set 7
 03644e: 02 40                      |                       block
 036450: 20 04                      |                         local.get 4
 036452: 28 02 1c                   |                         i32.load 2 28
 036455: 45                         |                         i32.eqz
 036456: 0d 00                      |                         br_if 0
 036458: 20 05                      |                         local.get 5
 03645a: 41 18                      |                         i32.const 24
 03645c: 6a                         |                         i32.add
 03645d: 20 0d                      |                         local.get 13
 03645f: 20 04                      |                         local.get 4
 036461: 20 05                      |                         local.get 5
 036463: 41 38                      |                         i32.const 56
 036465: 6a                         |                         i32.add
 036466: 10 cc 81 80 80 00          |                         call 204 <_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h05f30dba2a2caa95E.llvm.6633275214437060990>
 03646c: 20 05                      |                         local.get 5
 03646e: 41 38                      |                         i32.const 56
 036470: 6a                         |                         i32.add
 036471: 10 b4 82 80 80 00          |                         call 308 <_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$12get_index_of17h1db294af6b8d86a8E>
 036477: 20 05                      |                         local.get 5
 036479: 28 02 18                   |                         i32.load 2 24
 03647c: 41 01                      |                         i32.const 1
 03647e: 47                         |                         i32.ne
 03647f: 0d 00                      |                         br_if 0
 036481: 20 05                      |                         local.get 5
 036483: 28 02 1c                   |                         i32.load 2 28
 036486: 21 03                      |                         local.set 3
 036488: 20 05                      |                         local.get 5
 03648a: 41 10                      |                         i32.const 16
 03648c: 6a                         |                         i32.add
 03648d: 20 0c                      |                         local.get 12
 03648f: 10 8b 81 80 80 00          |                         call 139 <_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h095bc8d1776c0cfeE>
 036495: 20 03                      |                         local.get 3
 036497: 20 05                      |                         local.get 5
 036499: 28 02 14                   |                         i32.load 2 20
 03649c: 22 08                      |                         local.tee 8
 03649e: 49                         |                         i32.lt_u
 03649f: 0d 04                      |                         br_if 4
 0364a1: 20 03                      |                         local.get 3
 0364a3: 20 08                      |                         local.get 8
 0364a5: 41 d8 af c0 80 00          |                         i32.const 1054680
 0364ab: 10 99 87 80 80 00          |                         call 921 <_ZN4core9panicking18panic_bounds_check17h12b713485dcf6439E>
 0364b1: 00                         |                         unreachable
 0364b2: 0b                         |                       end
 0364b3: 41 d0 84 c1 80 00          |                       i32.const 1065552
 0364b9: 41 e3 00                   |                       i32.const 99
 0364bc: 41 98 86 c1 80 00          |                       i32.const 1065752
 0364c2: 10 c2 87 80 80 00          |                       call 962 <_ZN4core6option13expect_failed17h308f482d93b94d97E>
 0364c8: 00                         |                       unreachable
 0364c9: 0b                         |                     end
 0364ca: 00                         |                     unreachable
 0364cb: 00                         |                     unreachable
 0364cc: 0b                         |                   end
 0364cd: 10 fa 86 80 80 00          |                   call 890 <_ZN5alloc7raw_vec17capacity_overflow17h219802b05667b4c4E>
 0364d3: 00                         |                   unreachable
 0364d4: 0b                         |                 end
 0364d5: 20 13                      |                 local.get 19
 0364d7: 41 01                      |                 i32.const 1
 0364d9: 10 f9 86 80 80 00          |                 call 889 <_ZN5alloc5alloc18handle_alloc_error17h4c360394f7373f43E>
 0364df: 00                         |                 unreachable
 0364e0: 0b                         |               end
 0364e1: 20 05                      |               local.get 5
 0364e3: 28 02 10                   |               i32.load 2 16
 0364e6: 21 08                      |               local.set 8
 0364e8: 20 05                      |               local.get 5
 0364ea: 20 16                      |               local.get 22
 0364ec: 36 02 2c                   |               i32.store 2 44
 0364ef: 20 05                      |               local.get 5
 0364f1: 20 14                      |               local.get 20
 0364f3: 36 02 28                   |               i32.store 2 40
 0364f6: 20 05                      |               local.get 5
 0364f8: 20 17                      |               local.get 23
 0364fa: 37 03 20                   |               i64.store 3 32
 0364fd: 20 05                      |               local.get 5
 0364ff: 20 13                      |               local.get 19
 036501: 36 02 48                   |               i32.store 2 72
 036504: 20 05                      |               local.get 5
 036506: 20 13                      |               local.get 19
 036508: 36 02 44                   |               i32.store 2 68
 03650b: 20 05                      |               local.get 5
 03650d: 20 07                      |               local.get 7
 03650f: 36 02 40                   |               i32.store 2 64
 036512: 20 08                      |               local.get 8
 036514: 20 03                      |               local.get 3
 036516: 41 d0 00                   |               i32.const 80
 036519: 6c                         |               i32.mul
 03651a: 6a                         |               i32.add
 03651b: 41 08                      |               i32.const 8
 03651d: 6a                         |               i32.add
 03651e: 20 05                      |               local.get 5
 036520: 41 20                      |               i32.const 32
 036522: 6a                         |               i32.add
 036523: 20 05                      |               local.get 5
 036525: 41 c0 00                   |               i32.const 64
 036528: 6a                         |               i32.add
 036529: 10 d4 81 80 80 00          |               call 212 <_ZN4clap6parser7matches11matched_arg10MatchedArg10append_val17hd6c38dbe7bede27eE>
 03652f: 20 15                      |               local.get 21
 036531: 20 18                      |               local.get 24
 036533: 46                         |               i32.eq
 036534: 0d 02                      |               br_if 2
 036536: 0b                         |             end
 036537: 20 15                      |             local.get 21
 036539: 21 08                      |             local.set 8
 03653b: 0c 00                      |             br 0
 03653d: 0b                         |           end
 03653e: 0b                         |         end
 03653f: 02 40                      |         block
 036541: 02 40                      |           block
 036543: 20 04                      |             local.get 4
 036545: 28 02 1c                   |             i32.load 2 28
 036548: 45                         |             i32.eqz
 036549: 0d 00                      |             br_if 0
 03654b: 20 05                      |             local.get 5
 03654d: 41 08                      |             i32.const 8
 03654f: 6a                         |             i32.add
 036550: 20 0d                      |             local.get 13
 036552: 20 04                      |             local.get 4
 036554: 20 02                      |             local.get 2
 036556: 10 cc 81 80 80 00          |             call 204 <_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h05f30dba2a2caa95E.llvm.6633275214437060990>
 03655c: 20 02                      |             local.get 2
 03655e: 10 b4 82 80 80 00          |             call 308 <_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$12get_index_of17h1db294af6b8d86a8E>
 036564: 20 05                      |             local.get 5
 036566: 28 02 08                   |             i32.load 2 8
 036569: 41 01                      |             i32.const 1
 03656b: 47                         |             i32.ne
 03656c: 0d 00                      |             br_if 0
 03656e: 20 05                      |             local.get 5
 036570: 28 02 0c                   |             i32.load 2 12
 036573: 21 03                      |             local.set 3
 036575: 20 05                      |             local.get 5
 036577: 20 0c                      |             local.get 12
 036579: 10 8b 81 80 80 00          |             call 139 <_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h095bc8d1776c0cfeE>
 03657f: 20 03                      |             local.get 3
 036581: 20 05                      |             local.get 5
 036583: 28 02 04                   |             i32.load 2 4
 036586: 22 07                      |             local.tee 7
 036588: 49                         |             i32.lt_u
 036589: 0d 01                      |             br_if 1
 03658b: 20 03                      |             local.get 3
 03658d: 20 07                      |             local.get 7
 03658f: 41 d8 af c0 80 00          |             i32.const 1054680
 036595: 10 99 87 80 80 00          |             call 921 <_ZN4core9panicking18panic_bounds_check17h12b713485dcf6439E>
 03659b: 00                         |             unreachable
 03659c: 0b                         |           end
 03659d: 41 d0 84 c1 80 00          |           i32.const 1065552
 0365a3: 41 e3 00                   |           i32.const 99
 0365a6: 41 98 86 c1 80 00          |           i32.const 1065752
 0365ac: 10 c2 87 80 80 00          |           call 962 <_ZN4core6option13expect_failed17h308f482d93b94d97E>
 0365b2: 00                         |           unreachable
 0365b3: 0b                         |         end
 0365b4: 20 05                      |         local.get 5
 0365b6: 28 02 00                   |         i32.load 2 0
 0365b9: 21 07                      |         local.set 7
 0365bb: 20 05                      |         local.get 5
 0365bd: 20 16                      |         local.get 22
 0365bf: 36 02 2c                   |         i32.store 2 44
 0365c2: 20 05                      |         local.get 5
 0365c4: 20 14                      |         local.get 20
 0365c6: 36 02 28                   |         i32.store 2 40
 0365c9: 20 05                      |         local.get 5
 0365cb: 20 17                      |         local.get 23
 0365cd: 37 03 20                   |         i64.store 3 32
 0365d0: 20 05                      |         local.get 5
 0365d2: 20 12                      |         local.get 18
 0365d4: 37 02 44                   |         i64.store 2 68
 0365d7: 20 05                      |         local.get 5
 0365d9: 20 11                      |         local.get 17
 0365db: 36 02 40                   |         i32.store 2 64
 0365de: 20 07                      |         local.get 7
 0365e0: 20 03                      |         local.get 3
 0365e2: 41 d0 00                   |         i32.const 80
 0365e5: 6c                         |         i32.mul
 0365e6: 6a                         |         i32.add
 0365e7: 41 08                      |         i32.const 8
 0365e9: 6a                         |         i32.add
 0365ea: 20 05                      |         local.get 5
 0365ec: 41 20                      |         i32.const 32
 0365ee: 6a                         |         i32.add
 0365ef: 20 05                      |         local.get 5
 0365f1: 41 c0 00                   |         i32.const 64
 0365f4: 6a                         |         i32.add
 0365f5: 10 d4 81 80 80 00          |         call 212 <_ZN4clap6parser7matches11matched_arg10MatchedArg10append_val17hd6c38dbe7bede27eE>
 0365fb: 20 04                      |         local.get 4
 0365fd: 20 02                      |         local.get 2
 0365ff: 20 01                      |         local.get 1
 036601: 28 02 04                   |         i32.load 2 4
 036604: 10 a8 84 80 80 00          |         call 552 <_ZN4clap6parser11arg_matcher10ArgMatcher12add_index_to17h36ed6d26c7e84ee1E>
 03660a: 20 10                      |         local.get 16
 03660c: 41 74                      |         i32.const 4294967284
 03660e: 6a                         |         i32.add
 03660f: 21 10                      |         local.set 16
 036611: 20 0b                      |         local.get 11
 036613: 21 03                      |         local.set 3
 036615: 20 0b                      |         local.get 11
 036617: 20 09                      |         local.get 9
 036619: 47                         |         i32.ne
 03661a: 0d 00                      |         br_if 0
 03661c: 0b                         |       end
 03661d: 20 09                      |       local.get 9
 03661f: 21 0b                      |       local.set 11
 036621: 0c 01                      |       br 1
 036623: 0b                         |     end
 036624: 20 05                      |     local.get 5
 036626: 28 02 24                   |     i32.load 2 36
 036629: 21 07                      |     local.set 7
 03662b: 20 05                      |     local.get 5
 03662d: 29 03 28                   |     i64.load 3 40
 036630: 21 1a                      |     local.set 26
 036632: 20 00                      |     local.get 0
 036634: 20 05                      |     local.get 5
 036636: 29 03 30                   |     i64.load 3 48
 036639: 37 02 0c                   |     i64.store 2 12
 03663c: 20 00                      |     local.get 0
 03663e: 20 1a                      |     local.get 26
 036640: 37 02 04                   |     i64.store 2 4
 036643: 20 00                      |     local.get 0
 036645: 20 07                      |     local.get 7
 036647: 36 02 00                   |     i32.store 2 0
 03664a: 02 40                      |     block
 03664c: 20 12                      |       local.get 18
 03664e: a7                         |       i32.wrap_i64
 03664f: 22 07                      |       local.tee 7
 036651: 45                         |       i32.eqz
 036652: 0d 00                      |       br_if 0
 036654: 20 11                      |       local.get 17
 036656: 20 07                      |       local.get 7
 036658: 41 01                      |       i32.const 1
 03665a: 10 ca 80 80 80 00          |       call 74 <__rust_dealloc>
 036660: 0b                         |     end
 036661: 02 40                      |     block
 036663: 20 09                      |       local.get 9
 036665: 20 0b                      |       local.get 11
 036667: 6b                         |       i32.sub
 036668: 45                         |       i32.eqz
 036669: 0d 00                      |       br_if 0
 03666b: 20 10                      |       local.get 16
 03666d: 41 0c                      |       i32.const 12
 03666f: 6e                         |       i32.div_u
 036670: 41 0c                      |       i32.const 12
 036672: 6c                         |       i32.mul
 036673: 21 13                      |       local.set 19
 036675: 41 00                      |       i32.const 0
 036677: 21 07                      |       local.set 7
 036679: 03 40                      |       loop
 03667b: 02 40                      |         block
 03667d: 20 03                      |           local.get 3
 03667f: 20 07                      |           local.get 7
 036681: 6a                         |           i32.add
 036682: 22 08                      |           local.tee 8
 036684: 41 10                      |           i32.const 16
 036686: 6a                         |           i32.add
 036687: 28 02 00                   |           i32.load 2 0
 03668a: 22 15                      |           local.tee 21
 03668c: 45                         |           i32.eqz
 03668d: 0d 00                      |           br_if 0
 03668f: 20 08                      |           local.get 8
 036691: 41 0c                      |           i32.const 12
 036693: 6a                         |           i32.add
 036694: 28 02 00                   |           i32.load 2 0
 036697: 20 15                      |           local.get 21
 036699: 41 01                      |           i32.const 1
 03669b: 10 ca 80 80 80 00          |           call 74 <__rust_dealloc>
 0366a1: 0b                         |         end
 0366a2: 20 13                      |         local.get 19
 0366a4: 20 07                      |         local.get 7
 0366a6: 41 0c                      |         i32.const 12
 0366a8: 6a                         |         i32.add
 0366a9: 22 07                      |         local.tee 7
 0366ab: 47                         |         i32.ne
 0366ac: 0d 00                      |         br_if 0
 0366ae: 0b                         |       end
 0366af: 0b                         |     end
 0366b0: 20 0a                      |     local.get 10
 0366b2: 45                         |     i32.eqz
 0366b3: 0d 01                      |     br_if 1
 0366b5: 20 06                      |     local.get 6
 0366b7: 20 0a                      |     local.get 10
 0366b9: ad                         |     i64.extend_i32_u
 0366ba: 42 0c                      |     i64.const 12
 0366bc: 7e                         |     i64.mul
 0366bd: a7                         |     i32.wrap_i64
 0366be: 41 04                      |     i32.const 4
 0366c0: 10 ca 80 80 80 00          |     call 74 <__rust_dealloc>
 0366c6: 0c 01                      |     br 1
 0366c8: 0b                         |   end
 0366c9: 20 09                      |   local.get 9
 0366cb: 20 0b                      |   local.get 11
 0366cd: 6b                         |   i32.sub
 0366ce: 22 03                      |   local.tee 3
 0366d0: 41 0c                      |   i32.const 12
 0366d2: 6e                         |   i32.div_u
 0366d3: 21 07                      |   local.set 7
 0366d5: 02 40                      |   block
 0366d7: 20 03                      |     local.get 3
 0366d9: 45                         |     i32.eqz
 0366da: 0d 00                      |     br_if 0
 0366dc: 20 07                      |     local.get 7
 0366de: 41 0c                      |     i32.const 12
 0366e0: 6c                         |     i32.mul
 0366e1: 21 03                      |     local.set 3
 0366e3: 03 40                      |     loop
 0366e5: 02 40                      |       block
 0366e7: 20 0b                      |         local.get 11
 0366e9: 41 04                      |         i32.const 4
 0366eb: 6a                         |         i32.add
 0366ec: 28 02 00                   |         i32.load 2 0
 0366ef: 22 07                      |         local.tee 7
 0366f1: 45                         |         i32.eqz
 0366f2: 0d 00                      |         br_if 0
 0366f4: 20 0b                      |         local.get 11
 0366f6: 28 02 00                   |         i32.load 2 0
 0366f9: 20 07                      |         local.get 7
 0366fb: 41 01                      |         i32.const 1
 0366fd: 10 ca 80 80 80 00          |         call 74 <__rust_dealloc>
 036703: 0b                         |       end
 036704: 20 0b                      |       local.get 11
 036706: 41 0c                      |       i32.const 12
 036708: 6a                         |       i32.add
 036709: 21 0b                      |       local.set 11
 03670b: 20 03                      |       local.get 3
 03670d: 41 74                      |       i32.const 4294967284
 03670f: 6a                         |       i32.add
 036710: 22 03                      |       local.tee 3
 036712: 0d 00                      |       br_if 0
 036714: 0b                         |     end
 036715: 0b                         |   end
 036716: 02 40                      |   block
 036718: 20 0a                      |     local.get 10
 03671a: 45                         |     i32.eqz
 03671b: 0d 00                      |     br_if 0
 03671d: 20 06                      |     local.get 6
 03671f: 20 0a                      |     local.get 10
 036721: ad                         |     i64.extend_i32_u
 036722: 42 0c                      |     i64.const 12
 036724: 7e                         |     i64.mul
 036725: a7                         |     i32.wrap_i64
 036726: 41 04                      |     i32.const 4
 036728: 10 ca 80 80 80 00          |     call 74 <__rust_dealloc>
 03672e: 0b                         |   end
 03672f: 20 00                      |   local.get 0
 036731: 41 16                      |   i32.const 22
 036733: 3a 00 10                   |   i32.store8 0 16
 036736: 0b                         | end
 036737: 20 05                      | local.get 5
 036739: 41 d0 00                   | i32.const 80
 03673c: 6a                         | i32.add
 03673d: 24 80 80 80 80 00          | global.set 0 <__stack_pointer>
 036743: 0b                         | end
