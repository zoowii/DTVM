0001fe func[9] <main>:
 0001ff: 14 7f                      | local[2..21] type=i32
 000201: 23 80 80 80 80 00          | global.get 0
 000207: 41 30                      | i32.const 48
 000209: 6b                         | i32.sub
 00020a: 22 02                      | local.tee 2
 00020c: 24 80 80 80 80 00          | global.set 0
 000212: 41 00                      | i32.const 0
 000214: 21 03                      | local.set 3
 000216: 42 c4 13                   | i64.const 2500
 000219: 41 01                      | i32.const 1
 00021b: 10 8a 80 80 80 00          | call 10 <polybench_alloc_data>
 000221: 21 04                      | local.set 4
 000223: 42 90 bc fd 02             | i64.const 6250000
 000228: 41 04                      | i32.const 4
 00022a: 10 8a 80 80 80 00          | call 10 <polybench_alloc_data>
 000230: 21 05                      | local.set 5
 000232: 03 40                      | loop
 000234: 20 04                      |   local.get 4
 000236: 20 03                      |   local.get 3
 000238: 6a                         |   i32.add
 000239: 20 03                      |   local.get 3
 00023b: 41 01                      |   i32.const 1
 00023d: 6a                         |   i32.add
 00023e: 22 03                      |   local.tee 3
 000240: 41 03                      |   i32.const 3
 000242: 71                         |   i32.and
 000243: 3a 00 00                   |   i32.store8 0 0
 000246: 20 03                      |   local.get 3
 000248: 41 c4 13                   |   i32.const 2500
 00024b: 47                         |   i32.ne
 00024c: 0d 00                      |   br_if 0
 00024e: 0b                         | end
 00024f: 20 05                      | local.get 5
 000251: 41 00                      | i32.const 0
 000253: 41 c0 f0 f5 0b             | i32.const 25000000
 000258: 10 b3 80 80 80 00          | call 51 <memset>
 00025e: 22 06                      | local.tee 6
 000260: 41 c0 f0 f5 0b             | i32.const 25000000
 000265: 6a                         | i32.add
 000266: 21 07                      | local.set 7
 000268: 20 06                      | local.get 6
 00026a: 41 e0 8c f7 0b             | i32.const 25020000
 00026f: 6a                         | i32.add
 000270: 21 08                      | local.set 8
 000272: 41 c3 13                   | i32.const 2499
 000275: 21 03                      | local.set 3
 000277: 03 40                      | loop
 000279: 02 40                      |   block
 00027b: 20 03                      |     local.get 3
 00027d: 22 05                      |     local.tee 5
 00027f: 41 c2 13                   |     i32.const 2498
 000282: 4b                         |     i32.gt_u
 000283: 0d 00                      |     br_if 0
 000285: 20 06                      |     local.get 6
 000287: 20 05                      |     local.get 5
 000289: 41 01                      |     i32.const 1
 00028b: 6a                         |     i32.add
 00028c: 22 09                      |     local.tee 9
 00028e: 41 90 ce 00                |     i32.const 10000
 000292: 6c                         |     i32.mul
 000293: 6a                         |     i32.add
 000294: 22 0a                      |     local.tee 10
 000296: 20 05                      |     local.get 5
 000298: 41 02                      |     i32.const 2
 00029a: 74                         |     i32.shl
 00029b: 22 03                      |     local.tee 3
 00029d: 6a                         |     i32.add
 00029e: 28 02 00                   |     i32.load 2 0
 0002a1: 21 0b                      |     local.set 11
 0002a3: 20 06                      |     local.get 6
 0002a5: 20 05                      |     local.get 5
 0002a7: 41 90 ce 00                |     i32.const 10000
 0002ab: 6c                         |     i32.mul
 0002ac: 6a                         |     i32.add
 0002ad: 22 0c                      |     local.tee 12
 0002af: 20 03                      |     local.get 3
 0002b1: 6a                         |     i32.add
 0002b2: 28 02 00                   |     i32.load 2 0
 0002b5: 21 03                      |     local.set 3
 0002b7: 20 04                      |     local.get 4
 0002b9: 20 05                      |     local.get 5
 0002bb: 6a                         |     i32.add
 0002bc: 21 0d                      |     local.set 13
 0002be: 41 00                      |     i32.const 0
 0002c0: 21 0e                      |     local.set 14
 0002c2: 20 08                      |     local.get 8
 0002c4: 21 0f                      |     local.set 15
 0002c6: 20 09                      |     local.get 9
 0002c8: 21 10                      |     local.set 16
 0002ca: 03 40                      |     loop
 0002cc: 20 0c                      |       local.get 12
 0002ce: 20 10                      |       local.get 16
 0002d0: 41 02                      |       i32.const 2
 0002d2: 74                         |       i32.shl
 0002d3: 22 11                      |       local.tee 17
 0002d5: 6a                         |       i32.add
 0002d6: 22 12                      |       local.tee 18
 0002d8: 20 0a                      |       local.get 10
 0002da: 20 11                      |       local.get 17
 0002dc: 6a                         |       i32.add
 0002dd: 28 02 00                   |       i32.load 2 0
 0002e0: 22 13                      |       local.tee 19
 0002e2: 20 03                      |       local.get 3
 0002e4: 20 12                      |       local.get 18
 0002e6: 28 02 00                   |       i32.load 2 0
 0002e9: 22 11                      |       local.tee 17
 0002eb: 20 11                      |       local.get 17
 0002ed: 20 03                      |       local.get 3
 0002ef: 48                         |       i32.lt_s
 0002f0: 1b                         |       select
 0002f1: 22 03                      |       local.tee 3
 0002f3: 20 03                      |       local.get 3
 0002f5: 20 13                      |       local.get 19
 0002f7: 48                         |       i32.lt_s
 0002f8: 1b                         |       select
 0002f9: 22 03                      |       local.tee 3
 0002fb: 36 02 00                   |       i32.store 2 0
 0002fe: 02 40                      |       block
 000300: 20 05                      |         local.get 5
 000302: 20 10                      |         local.get 16
 000304: 41 7f                      |         i32.const 4294967295
 000306: 6a                         |         i32.add
 000307: 4f                         |         i32.ge_u
 000308: 0d 00                      |         br_if 0
 00030a: 20 0b                      |         local.get 11
 00030c: 20 04                      |         local.get 4
 00030e: 20 10                      |         local.get 16
 000310: 6a                         |         i32.add
 000311: 2c 00 00                   |         i32.load8_s 0 0
 000314: 20 0d                      |         local.get 13
 000316: 2c 00 00                   |         i32.load8_s 0 0
 000319: 6a                         |         i32.add
 00031a: 41 03                      |         i32.const 3
 00031c: 46                         |         i32.eq
 00031d: 6a                         |         i32.add
 00031e: 21 0b                      |         local.set 11
 000320: 0b                         |       end
 000321: 20 12                      |       local.get 18
 000323: 20 0b                      |       local.get 11
 000325: 20 03                      |       local.get 3
 000327: 20 03                      |       local.get 3
 000329: 20 0b                      |       local.get 11
 00032b: 48                         |       i32.lt_s
 00032c: 1b                         |       select
 00032d: 22 03                      |       local.tee 3
 00032f: 36 02 00                   |       i32.store 2 0
 000332: 02 40                      |       block
 000334: 20 09                      |         local.get 9
 000336: 20 10                      |         local.get 16
 000338: 4f                         |         i32.ge_u
 000339: 0d 00                      |         br_if 0
 00033b: 20 07                      |         local.get 7
 00033d: 21 0b                      |         local.set 11
 00033f: 20 0f                      |         local.get 15
 000341: 21 11                      |         local.set 17
 000343: 20 0e                      |         local.get 14
 000345: 21 14                      |         local.set 20
 000347: 03 40                      |         loop
 000349: 20 12                      |           local.get 18
 00034b: 20 11                      |           local.get 17
 00034d: 28 02 00                   |           i32.load 2 0
 000350: 20 0b                      |           local.get 11
 000352: 28 02 00                   |           i32.load 2 0
 000355: 6a                         |           i32.add
 000356: 22 15                      |           local.tee 21
 000358: 20 03                      |           local.get 3
 00035a: 20 03                      |           local.get 3
 00035c: 20 15                      |           local.get 21
 00035e: 48                         |           i32.lt_s
 00035f: 1b                         |           select
 000360: 22 03                      |           local.tee 3
 000362: 36 02 00                   |           i32.store 2 0
 000365: 20 0b                      |           local.get 11
 000367: 41 04                      |           i32.const 4
 000369: 6a                         |           i32.add
 00036a: 21 0b                      |           local.set 11
 00036c: 20 11                      |           local.get 17
 00036e: 41 90 ce 00                |           i32.const 10000
 000372: 6a                         |           i32.add
 000373: 21 11                      |           local.set 17
 000375: 20 14                      |           local.get 20
 000377: 41 7f                      |           i32.const 4294967295
 000379: 6a                         |           i32.add
 00037a: 22 14                      |           local.tee 20
 00037c: 0d 00                      |           br_if 0
 00037e: 0b                         |         end
 00037f: 0b                         |       end
 000380: 20 0f                      |       local.get 15
 000382: 41 04                      |       i32.const 4
 000384: 6a                         |       i32.add
 000385: 21 0f                      |       local.set 15
 000387: 20 0e                      |       local.get 14
 000389: 41 01                      |       i32.const 1
 00038b: 6a                         |       i32.add
 00038c: 21 0e                      |       local.set 14
 00038e: 20 13                      |       local.get 19
 000390: 21 0b                      |       local.set 11
 000392: 20 10                      |       local.get 16
 000394: 41 01                      |       i32.const 1
 000396: 6a                         |       i32.add
 000397: 22 10                      |       local.tee 16
 000399: 41 c4 13                   |       i32.const 2500
 00039c: 47                         |       i32.ne
 00039d: 0d 00                      |       br_if 0
 00039f: 0b                         |     end
 0003a0: 0b                         |   end
 0003a1: 20 07                      |   local.get 7
 0003a3: 41 ec b1 7f                |   i32.const 4294957292
 0003a7: 6a                         |   i32.add
 0003a8: 21 07                      |   local.set 7
 0003aa: 20 08                      |   local.get 8
 0003ac: 41 ec b1 7f                |   i32.const 4294957292
 0003b0: 6a                         |   i32.add
 0003b1: 21 08                      |   local.set 8
 0003b3: 20 05                      |   local.get 5
 0003b5: 41 7f                      |   i32.const 4294967295
 0003b7: 6a                         |   i32.add
 0003b8: 21 03                      |   local.set 3
 0003ba: 20 05                      |   local.get 5
 0003bc: 0d 00                      |   br_if 0
 0003be: 0b                         | end
 0003bf: 41 00                      | i32.const 0
 0003c1: 21 12                      | local.set 18
 0003c3: 41 80 88 80 80 00          | i32.const 1024
 0003c9: 41 16                      | i32.const 22
 0003cb: 41 01                      | i32.const 1
 0003cd: 41 00                      | i32.const 0
 0003cf: 28 02 8c 89 80 80 00       | i32.load 2 1164
 0003d6: 22 0b                      | local.tee 11
 0003d8: 10 9d 80 80 80 00          | call 29 <fwrite>
 0003de: 1a                         | drop
 0003df: 20 02                      | local.get 2
 0003e1: 41 a6 88 80 80 00          | i32.const 1062
 0003e7: 36 02 20                   | i32.store 2 32
 0003ea: 20 0b                      | local.get 11
 0003ec: 41 97 88 80 80 00          | i32.const 1047
 0003f2: 20 02                      | local.get 2
 0003f4: 41 20                      | i32.const 32
 0003f6: 6a                         | i32.add
 0003f7: 10 ac 80 80 80 00          | call 44 <fprintf>
 0003fd: 1a                         | drop
 0003fe: 20 06                      | local.get 6
 000400: 21 11                      | local.set 17
 000402: 41 c4 13                   | i32.const 2500
 000405: 21 10                      | local.set 16
 000407: 41 00                      | i32.const 0
 000409: 21 07                      | local.set 7
 00040b: 03 40                      | loop
 00040d: 20 11                      |   local.get 17
 00040f: 21 03                      |   local.set 3
 000411: 41 00                      |   i32.const 0
 000413: 21 05                      |   local.set 5
 000415: 03 40                      |   loop
 000417: 02 40                      |     block
 000419: 20 12                      |       local.get 18
 00041b: 20 05                      |       local.get 5
 00041d: 6a                         |       i32.add
 00041e: 41 14                      |       i32.const 20
 000420: 6f                         |       i32.rem_s
 000421: 0d 00                      |       br_if 0
 000423: 41 0a                      |       i32.const 10
 000425: 20 0b                      |       local.get 11
 000427: 10 a5 80 80 80 00          |       call 37 <fputc>
 00042d: 1a                         |       drop
 00042e: 0b                         |     end
 00042f: 20 02                      |     local.get 2
 000431: 20 03                      |     local.get 3
 000433: 28 02 00                   |     i32.load 2 0
 000436: 36 02 10                   |     i32.store 2 16
 000439: 20 0b                      |     local.get 11
 00043b: 41 ac 88 80 80 00          |     i32.const 1068
 000441: 20 02                      |     local.get 2
 000443: 41 10                      |     i32.const 16
 000445: 6a                         |     i32.add
 000446: 10 ac 80 80 80 00          |     call 44 <fprintf>
 00044c: 1a                         |     drop
 00044d: 20 03                      |     local.get 3
 00044f: 41 04                      |     i32.const 4
 000451: 6a                         |     i32.add
 000452: 21 03                      |     local.set 3
 000454: 20 10                      |     local.get 16
 000456: 20 05                      |     local.get 5
 000458: 41 01                      |     i32.const 1
 00045a: 6a                         |     i32.add
 00045b: 22 05                      |     local.tee 5
 00045d: 47                         |     i32.ne
 00045e: 0d 00                      |     br_if 0
 000460: 0b                         |   end
 000461: 20 11                      |   local.get 17
 000463: 41 94 ce 00                |   i32.const 10004
 000467: 6a                         |   i32.add
 000468: 21 11                      |   local.set 17
 00046a: 20 12                      |   local.get 18
 00046c: 20 10                      |   local.get 16
 00046e: 6a                         |   i32.add
 00046f: 21 12                      |   local.set 18
 000471: 20 10                      |   local.get 16
 000473: 41 7f                      |   i32.const 4294967295
 000475: 6a                         |   i32.add
 000476: 21 10                      |   local.set 16
 000478: 20 07                      |   local.get 7
 00047a: 41 01                      |   i32.const 1
 00047c: 6a                         |   i32.add
 00047d: 22 07                      |   local.tee 7
 00047f: 41 c4 13                   |   i32.const 2500
 000482: 47                         |   i32.ne
 000483: 0d 00                      |   br_if 0
 000485: 0b                         | end
 000486: 20 02                      | local.get 2
 000488: 41 a6 88 80 80 00          | i32.const 1062
 00048e: 36 02 00                   | i32.store 2 0
 000491: 20 0b                      | local.get 11
 000493: 41 b0 88 80 80 00          | i32.const 1072
 000499: 20 02                      | local.get 2
 00049b: 10 ac 80 80 80 00          | call 44 <fprintf>
 0004a1: 1a                         | drop
 0004a2: 41 c1 88 80 80 00          | i32.const 1089
 0004a8: 41 16                      | i32.const 22
 0004aa: 41 01                      | i32.const 1
 0004ac: 20 0b                      | local.get 11
 0004ae: 10 9d 80 80 80 00          | call 29 <fwrite>
 0004b4: 1a                         | drop
 0004b5: 20 04                      | local.get 4
 0004b7: 10 8d 80 80 80 00          | call 13 <free>
 0004bd: 20 06                      | local.get 6
 0004bf: 10 8d 80 80 80 00          | call 13 <free>
 0004c5: 20 02                      | local.get 2
 0004c7: 41 30                      | i32.const 48
 0004c9: 6a                         | i32.add
 0004ca: 24 80 80 80 80 00          | global.set 0
 0004d0: 41 00                      | i32.const 0
 0004d2: 0b                         | end
