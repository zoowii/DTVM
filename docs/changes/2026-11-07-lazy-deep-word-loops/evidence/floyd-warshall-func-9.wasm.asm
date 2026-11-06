0001fe func[9] <main>:
 0001ff: 0a 7f                      | local[2..11] type=i32
 000201: 23 80 80 80 80 00          | global.get 0
 000207: 41 30                      | i32.const 48
 000209: 6b                         | i32.sub
 00020a: 22 02                      | local.tee 2
 00020c: 24 80 80 80 80 00          | global.set 0
 000212: 41 00                      | i32.const 0
 000214: 21 03                      | local.set 3
 000216: 42 80 c2 de 03             | i64.const 7840000
 00021b: 41 04                      | i32.const 4
 00021d: 10 8a 80 80 80 00          | call 10 <polybench_alloc_data>
 000223: 22 04                      | local.tee 4
 000225: 21 05                      | local.set 5
 000227: 41 00                      | i32.const 0
 000229: 21 06                      | local.set 6
 00022b: 03 40                      | loop
 00022d: 41 00                      |   i32.const 0
 00022f: 21 07                      |   local.set 7
 000231: 41 00                      |   i32.const 0
 000233: 21 08                      |   local.set 8
 000235: 41 01                      |   i32.const 1
 000237: 21 09                      |   local.set 9
 000239: 20 06                      |   local.get 6
 00023b: 21 0a                      |   local.set 10
 00023d: 20 03                      |   local.get 3
 00023f: 21 0b                      |   local.set 11
 000241: 03 40                      |   loop
 000243: 20 05                      |     local.get 5
 000245: 20 07                      |     local.get 7
 000247: 6a                         |     i32.add
 000248: 20 09                      |     local.get 9
 00024a: 20 08                      |     local.get 8
 00024c: 41 07                      |     i32.const 7
 00024e: 6e                         |     i32.div_u
 00024f: 41 07                      |     i32.const 7
 000251: 6c                         |     i32.mul
 000252: 6b                         |     i32.sub
 000253: 41 e7 07                   |     i32.const 999
 000256: 20 0b                      |     local.get 11
 000258: 20 0a                      |     local.get 10
 00025a: 41 07                      |     i32.const 7
 00025c: 6e                         |     i32.div_u
 00025d: 41 07                      |     i32.const 7
 00025f: 6c                         |     i32.mul
 000260: 6a                         |     i32.add
 000261: 1b                         |     select
 000262: 41 e7 07                   |     i32.const 999
 000265: 20 0b                      |     local.get 11
 000267: 20 0a                      |     local.get 10
 000269: 41 0d                      |     i32.const 13
 00026b: 6e                         |     i32.div_u
 00026c: 41 0d                      |     i32.const 13
 00026e: 6c                         |     i32.mul
 00026f: 6a                         |     i32.add
 000270: 1b                         |     select
 000271: 41 e7 07                   |     i32.const 999
 000274: 20 0b                      |     local.get 11
 000276: 20 0a                      |     local.get 10
 000278: 41 0b                      |     i32.const 11
 00027a: 6e                         |     i32.div_u
 00027b: 41 0b                      |     i32.const 11
 00027d: 6c                         |     i32.mul
 00027e: 6a                         |     i32.add
 00027f: 1b                         |     select
 000280: 36 02 00                   |     i32.store 2 0
 000283: 20 08                      |     local.get 8
 000285: 20 06                      |     local.get 6
 000287: 6a                         |     i32.add
 000288: 21 08                      |     local.set 8
 00028a: 20 09                      |     local.get 9
 00028c: 20 06                      |     local.get 6
 00028e: 6a                         |     i32.add
 00028f: 21 09                      |     local.set 9
 000291: 20 0a                      |     local.get 10
 000293: 41 01                      |     i32.const 1
 000295: 6a                         |     i32.add
 000296: 21 0a                      |     local.set 10
 000298: 20 0b                      |     local.get 11
 00029a: 41 7f                      |     i32.const 4294967295
 00029c: 6a                         |     i32.add
 00029d: 21 0b                      |     local.set 11
 00029f: 20 07                      |     local.get 7
 0002a1: 41 04                      |     i32.const 4
 0002a3: 6a                         |     i32.add
 0002a4: 22 07                      |     local.tee 7
 0002a6: 41 c0 d7 00                |     i32.const 11200
 0002aa: 47                         |     i32.ne
 0002ab: 0d 00                      |     br_if 0
 0002ad: 0b                         |   end
 0002ae: 20 05                      |   local.get 5
 0002b0: 41 c0 d7 00                |   i32.const 11200
 0002b4: 6a                         |   i32.add
 0002b5: 21 05                      |   local.set 5
 0002b7: 20 03                      |   local.get 3
 0002b9: 41 7f                      |   i32.const 4294967295
 0002bb: 6a                         |   i32.add
 0002bc: 21 03                      |   local.set 3
 0002be: 20 06                      |   local.get 6
 0002c0: 41 01                      |   i32.const 1
 0002c2: 6a                         |   i32.add
 0002c3: 22 06                      |   local.tee 6
 0002c5: 41 f0 15                   |   i32.const 2800
 0002c8: 47                         |   i32.ne
 0002c9: 0d 00                      |   br_if 0
 0002cb: 0b                         | end
 0002cc: 41 00                      | i32.const 0
 0002ce: 21 03                      | local.set 3
 0002d0: 20 04                      | local.get 4
 0002d2: 21 09                      | local.set 9
 0002d4: 03 40                      | loop
 0002d6: 20 04                      |   local.get 4
 0002d8: 21 0b                      |   local.set 11
 0002da: 41 00                      |   i32.const 0
 0002dc: 21 08                      |   local.set 8
 0002de: 03 40                      |   loop
 0002e0: 20 04                      |     local.get 4
 0002e2: 20 08                      |     local.get 8
 0002e4: 41 c0 d7 00                |     i32.const 11200
 0002e8: 6c                         |     i32.mul
 0002e9: 6a                         |     i32.add
 0002ea: 20 03                      |     local.get 3
 0002ec: 41 02                      |     i32.const 2
 0002ee: 74                         |     i32.shl
 0002ef: 6a                         |     i32.add
 0002f0: 21 05                      |     local.set 5
 0002f2: 41 00                      |     i32.const 0
 0002f4: 21 0a                      |     local.set 10
 0002f6: 03 40                      |     loop
 0002f8: 20 0b                      |       local.get 11
 0002fa: 20 0a                      |       local.get 10
 0002fc: 6a                         |       i32.add
 0002fd: 22 06                      |       local.tee 6
 0002ff: 20 06                      |       local.get 6
 000301: 28 02 00                   |       i32.load 2 0
 000304: 22 06                      |       local.tee 6
 000306: 20 09                      |       local.get 9
 000308: 20 0a                      |       local.get 10
 00030a: 6a                         |       i32.add
 00030b: 28 02 00                   |       i32.load 2 0
 00030e: 20 05                      |       local.get 5
 000310: 28 02 00                   |       i32.load 2 0
 000313: 6a                         |       i32.add
 000314: 22 07                      |       local.tee 7
 000316: 20 06                      |       local.get 6
 000318: 20 07                      |       local.get 7
 00031a: 48                         |       i32.lt_s
 00031b: 1b                         |       select
 00031c: 36 02 00                   |       i32.store 2 0
 00031f: 20 0a                      |       local.get 10
 000321: 41 04                      |       i32.const 4
 000323: 6a                         |       i32.add
 000324: 22 0a                      |       local.tee 10
 000326: 41 c0 d7 00                |       i32.const 11200
 00032a: 47                         |       i32.ne
 00032b: 0d 00                      |       br_if 0
 00032d: 0b                         |     end
 00032e: 20 0b                      |     local.get 11
 000330: 41 c0 d7 00                |     i32.const 11200
 000334: 6a                         |     i32.add
 000335: 21 0b                      |     local.set 11
 000337: 20 08                      |     local.get 8
 000339: 41 01                      |     i32.const 1
 00033b: 6a                         |     i32.add
 00033c: 22 08                      |     local.tee 8
 00033e: 41 f0 15                   |     i32.const 2800
 000341: 47                         |     i32.ne
 000342: 0d 00                      |     br_if 0
 000344: 0b                         |   end
 000345: 20 09                      |   local.get 9
 000347: 41 c0 d7 00                |   i32.const 11200
 00034b: 6a                         |   i32.add
 00034c: 21 09                      |   local.set 9
 00034e: 20 03                      |   local.get 3
 000350: 41 01                      |   i32.const 1
 000352: 6a                         |   i32.add
 000353: 22 03                      |   local.tee 3
 000355: 41 f0 15                   |   i32.const 2800
 000358: 47                         |   i32.ne
 000359: 0d 00                      |   br_if 0
 00035b: 0b                         | end
 00035c: 41 00                      | i32.const 0
 00035e: 21 09                      | local.set 9
 000360: 41 80 88 80 80 00          | i32.const 1024
 000366: 41 16                      | i32.const 22
 000368: 41 01                      | i32.const 1
 00036a: 41 00                      | i32.const 0
 00036c: 28 02 8c 89 80 80 00       | i32.load 2 1164
 000373: 22 07                      | local.tee 7
 000375: 10 9d 80 80 80 00          | call 29 <fwrite>
 00037b: 1a                         | drop
 00037c: 20 02                      | local.get 2
 00037e: 41 a6 88 80 80 00          | i32.const 1062
 000384: 36 02 20                   | i32.store 2 32
 000387: 20 07                      | local.get 7
 000389: 41 97 88 80 80 00          | i32.const 1047
 00038f: 20 02                      | local.get 2
 000391: 41 20                      | i32.const 32
 000393: 6a                         | i32.add
 000394: 10 ac 80 80 80 00          | call 44 <fprintf>
 00039a: 1a                         | drop
 00039b: 20 04                      | local.get 4
 00039d: 21 08                      | local.set 8
 00039f: 41 00                      | i32.const 0
 0003a1: 21 05                      | local.set 5
 0003a3: 41 00                      | i32.const 0
 0003a5: 21 03                      | local.set 3
 0003a7: 03 40                      | loop
 0003a9: 41 00                      |   i32.const 0
 0003ab: 21 0a                      |   local.set 10
 0003ad: 20 09                      |   local.get 9
 0003af: 21 0b                      |   local.set 11
 0003b1: 20 05                      |   local.get 5
 0003b3: 21 06                      |   local.set 6
 0003b5: 03 40                      |   loop
 0003b7: 02 40                      |     block
 0003b9: 20 06                      |       local.get 6
 0003bb: 20 0b                      |       local.get 11
 0003bd: 41 14                      |       i32.const 20
 0003bf: 6e                         |       i32.div_u
 0003c0: 41 14                      |       i32.const 20
 0003c2: 6c                         |       i32.mul
 0003c3: 6a                         |       i32.add
 0003c4: 0d 00                      |       br_if 0
 0003c6: 41 0a                      |       i32.const 10
 0003c8: 20 07                      |       local.get 7
 0003ca: 10 a5 80 80 80 00          |       call 37 <fputc>
 0003d0: 1a                         |       drop
 0003d1: 0b                         |     end
 0003d2: 20 02                      |     local.get 2
 0003d4: 20 08                      |     local.get 8
 0003d6: 20 0a                      |     local.get 10
 0003d8: 6a                         |     i32.add
 0003d9: 28 02 00                   |     i32.load 2 0
 0003dc: 36 02 10                   |     i32.store 2 16
 0003df: 20 07                      |     local.get 7
 0003e1: 41 ab 88 80 80 00          |     i32.const 1067
 0003e7: 20 02                      |     local.get 2
 0003e9: 41 10                      |     i32.const 16
 0003eb: 6a                         |     i32.add
 0003ec: 10 ac 80 80 80 00          |     call 44 <fprintf>
 0003f2: 1a                         |     drop
 0003f3: 20 0b                      |     local.get 11
 0003f5: 41 01                      |     i32.const 1
 0003f7: 6a                         |     i32.add
 0003f8: 21 0b                      |     local.set 11
 0003fa: 20 06                      |     local.get 6
 0003fc: 41 7f                      |     i32.const 4294967295
 0003fe: 6a                         |     i32.add
 0003ff: 21 06                      |     local.set 6
 000401: 20 0a                      |     local.get 10
 000403: 41 04                      |     i32.const 4
 000405: 6a                         |     i32.add
 000406: 22 0a                      |     local.tee 10
 000408: 41 c0 d7 00                |     i32.const 11200
 00040c: 47                         |     i32.ne
 00040d: 0d 00                      |     br_if 0
 00040f: 0b                         |   end
 000410: 20 08                      |   local.get 8
 000412: 41 c0 d7 00                |   i32.const 11200
 000416: 6a                         |   i32.add
 000417: 21 08                      |   local.set 8
 000419: 20 09                      |   local.get 9
 00041b: 41 f0 15                   |   i32.const 2800
 00041e: 6a                         |   i32.add
 00041f: 21 09                      |   local.set 9
 000421: 20 05                      |   local.get 5
 000423: 41 90 6a                   |   i32.const 4294964496
 000426: 6a                         |   i32.add
 000427: 21 05                      |   local.set 5
 000429: 20 03                      |   local.get 3
 00042b: 41 01                      |   i32.const 1
 00042d: 6a                         |   i32.add
 00042e: 22 03                      |   local.tee 3
 000430: 41 f0 15                   |   i32.const 2800
 000433: 47                         |   i32.ne
 000434: 0d 00                      |   br_if 0
 000436: 0b                         | end
 000437: 20 02                      | local.get 2
 000439: 41 a6 88 80 80 00          | i32.const 1062
 00043f: 36 02 00                   | i32.store 2 0
 000442: 20 07                      | local.get 7
 000444: 41 af 88 80 80 00          | i32.const 1071
 00044a: 20 02                      | local.get 2
 00044c: 10 ac 80 80 80 00          | call 44 <fprintf>
 000452: 1a                         | drop
 000453: 41 c0 88 80 80 00          | i32.const 1088
 000459: 41 16                      | i32.const 22
 00045b: 41 01                      | i32.const 1
 00045d: 20 07                      | local.get 7
 00045f: 10 9d 80 80 80 00          | call 29 <fwrite>
 000465: 1a                         | drop
 000466: 20 04                      | local.get 4
 000468: 10 8d 80 80 80 00          | call 13 <free>
 00046e: 20 02                      | local.get 2
 000470: 41 30                      | i32.const 48
 000472: 6a                         | i32.add
 000473: 24 80 80 80 80 00          | global.set 0
 000479: 41 00                      | i32.const 0
 00047b: 0b                         | end
