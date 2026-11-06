01f800 func[262] <_ZN4clap4args11arg_builder10positional10PosBuilder16name_no_brackets17hbf296776f6e3bf13E>:
 01f801: 0b 7f                      | local[2..12] type=i32
 01f803: 01 7e                      | local[13] type=i64
 01f805: 23 80 80 80 80 00          | global.get 0
 01f80b: 41 e0 00                   | i32.const 96
 01f80e: 6b                         | i32.sub
 01f80f: 22 02                      | local.tee 2
 01f811: 24 80 80 80 80 00          | global.set 0
 01f817: 20 02                      | local.get 2
 01f819: 41 00                      | i32.const 0
 01f81b: 36 02 18                   | i32.store 2 24
 01f81e: 20 02                      | local.get 2
 01f820: 42 01                      | i64.const 1
 01f822: 37 03 10                   | i64.store 3 16
 01f825: 02 40                      | block
 01f827: 02 40                      |   block
 01f829: 02 40                      |     block
 01f82b: 20 01                      |       local.get 1
 01f82d: 41 c5 01                   |       i32.const 197
 01f830: 6a                         |       i32.add
 01f831: 2d 00 00                   |       i32.load8_u 0 0
 01f834: 41 02                      |       i32.const 2
 01f836: 71                         |       i32.and
 01f837: 0d 00                      |       br_if 0
 01f839: 41 20                      |       i32.const 32
 01f83b: 21 03                      |       local.set 3
 01f83d: 20 02                      |       local.get 2
 01f83f: 41 10                      |       i32.const 16
 01f841: 6a                         |       i32.add
 01f842: 21 04                      |       local.set 4
 01f844: 0c 01                      |       br 1
 01f846: 0b                         |     end
 01f847: 02 40                      |     block
 01f849: 02 40                      |       block
 01f84b: 02 40                      |         block
 01f84d: 20 01                      |           local.get 1
 01f84f: 28 02 5c                   |           i32.load 2 92
 01f852: 22 03                      |           local.tee 3
 01f854: 41 80 80 c4 00             |           i32.const 1114112
 01f859: 46                         |           i32.eq
 01f85a: 0d 00                      |           br_if 0
 01f85c: 20 02                      |           local.get 2
 01f85e: 41 10                      |           i32.const 16
 01f860: 6a                         |           i32.add
 01f861: 21 04                      |           local.set 4
 01f863: 20 03                      |           local.get 3
 01f865: 41 80 01                   |           i32.const 128
 01f868: 49                         |           i32.lt_u
 01f869: 0d 03                      |           br_if 3
 01f86b: 20 02                      |           local.get 2
 01f86d: 41 00                      |           i32.const 0
 01f86f: 36 02 40                   |           i32.store 2 64
 01f872: 20 03                      |           local.get 3
 01f874: 41 80 10                   |           i32.const 2048
 01f877: 49                         |           i32.lt_u
 01f878: 0d 01                      |           br_if 1
 01f87a: 02 40                      |           block
 01f87c: 20 03                      |             local.get 3
 01f87e: 41 80 80 04                |             i32.const 65536
 01f882: 4f                         |             i32.ge_u
 01f883: 0d 00                      |             br_if 0
 01f885: 20 02                      |             local.get 2
 01f887: 20 03                      |             local.get 3
 01f889: 41 3f                      |             i32.const 63
 01f88b: 71                         |             i32.and
 01f88c: 41 80 01                   |             i32.const 128
 01f88f: 72                         |             i32.or
 01f890: 3a 00 42                   |             i32.store8 0 66
 01f893: 20 02                      |             local.get 2
 01f895: 20 03                      |             local.get 3
 01f897: 41 06                      |             i32.const 6
 01f899: 76                         |             i32.shr_u
 01f89a: 41 3f                      |             i32.const 63
 01f89c: 71                         |             i32.and
 01f89d: 41 80 01                   |             i32.const 128
 01f8a0: 72                         |             i32.or
 01f8a1: 3a 00 41                   |             i32.store8 0 65
 01f8a4: 20 02                      |             local.get 2
 01f8a6: 20 03                      |             local.get 3
 01f8a8: 41 0c                      |             i32.const 12
 01f8aa: 76                         |             i32.shr_u
 01f8ab: 41 0f                      |             i32.const 15
 01f8ad: 71                         |             i32.and
 01f8ae: 41 e0 01                   |             i32.const 224
 01f8b1: 72                         |             i32.or
 01f8b2: 3a 00 40                   |             i32.store8 0 64
 01f8b5: 41 03                      |             i32.const 3
 01f8b7: 21 03                      |             local.set 3
 01f8b9: 0c 03                      |             br 3
 01f8bb: 0b                         |           end
 01f8bc: 20 02                      |           local.get 2
 01f8be: 20 03                      |           local.get 3
 01f8c0: 41 3f                      |           i32.const 63
 01f8c2: 71                         |           i32.and
 01f8c3: 41 80 01                   |           i32.const 128
 01f8c6: 72                         |           i32.or
 01f8c7: 3a 00 43                   |           i32.store8 0 67
 01f8ca: 20 02                      |           local.get 2
 01f8cc: 20 03                      |           local.get 3
 01f8ce: 41 12                      |           i32.const 18
 01f8d0: 76                         |           i32.shr_u
 01f8d1: 41 f0 01                   |           i32.const 240
 01f8d4: 72                         |           i32.or
 01f8d5: 3a 00 40                   |           i32.store8 0 64
 01f8d8: 20 02                      |           local.get 2
 01f8da: 20 03                      |           local.get 3
 01f8dc: 41 06                      |           i32.const 6
 01f8de: 76                         |           i32.shr_u
 01f8df: 41 3f                      |           i32.const 63
 01f8e1: 71                         |           i32.and
 01f8e2: 41 80 01                   |           i32.const 128
 01f8e5: 72                         |           i32.or
 01f8e6: 3a 00 42                   |           i32.store8 0 66
 01f8e9: 20 02                      |           local.get 2
 01f8eb: 20 03                      |           local.get 3
 01f8ed: 41 0c                      |           i32.const 12
 01f8ef: 76                         |           i32.shr_u
 01f8f0: 41 3f                      |           i32.const 63
 01f8f2: 71                         |           i32.and
 01f8f3: 41 80 01                   |           i32.const 128
 01f8f6: 72                         |           i32.or
 01f8f7: 3a 00 41                   |           i32.store8 0 65
 01f8fa: 41 04                      |           i32.const 4
 01f8fc: 21 03                      |           local.set 3
 01f8fe: 0c 02                      |           br 2
 01f900: 0b                         |         end
 01f901: 41 d3 bb c1 80 00          |         i32.const 1072595
 01f907: 41 e6 00                   |         i32.const 102
 01f90a: 10 97 80 80 80 00          |         call 23 <_ZN4core6option13expect_failed17h956d6564684ceeb2E>
 01f910: 00                         |         unreachable
 01f911: 0b                         |       end
 01f912: 20 02                      |       local.get 2
 01f914: 20 03                      |       local.get 3
 01f916: 41 3f                      |       i32.const 63
 01f918: 71                         |       i32.and
 01f919: 41 80 01                   |       i32.const 128
 01f91c: 72                         |       i32.or
 01f91d: 3a 00 41                   |       i32.store8 0 65
 01f920: 20 02                      |       local.get 2
 01f922: 20 03                      |       local.get 3
 01f924: 41 06                      |       i32.const 6
 01f926: 76                         |       i32.shr_u
 01f927: 41 1f                      |       i32.const 31
 01f929: 71                         |       i32.and
 01f92a: 41 c0 01                   |       i32.const 192
 01f92d: 72                         |       i32.or
 01f92e: 3a 00 40                   |       i32.store8 0 64
 01f931: 41 02                      |       i32.const 2
 01f933: 21 03                      |       local.set 3
 01f935: 0b                         |     end
 01f936: 20 02                      |     local.get 2
 01f938: 41 10                      |     i32.const 16
 01f93a: 6a                         |     i32.add
 01f93b: 20 02                      |     local.get 2
 01f93d: 41 c0 00                   |     i32.const 64
 01f940: 6a                         |     i32.add
 01f941: 20 02                      |     local.get 2
 01f943: 41 c0 00                   |     i32.const 64
 01f946: 6a                         |     i32.add
 01f947: 20 03                      |     local.get 3
 01f949: 6a                         |     i32.add
 01f94a: 10 89 81 80 80 00          |     call 137 <_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17h6d337a0530310274E>
 01f950: 20 02                      |     local.get 2
 01f952: 41 10                      |     i32.const 16
 01f954: 6a                         |     i32.add
 01f955: 21 04                      |     local.set 4
 01f957: 0c 01                      |     br 1
 01f959: 0b                         |   end
 01f95a: 20 04                      |   local.get 4
 01f95c: 20 04                      |   local.get 4
 01f95e: 28 02 08                   |   i32.load 2 8
 01f961: 41 01                      |   i32.const 1
 01f963: 10 d7 81 80 80 00          |   call 215 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hc616a8b1282217d9E>
 01f969: 20 02                      |   local.get 2
 01f96b: 28 02 10                   |   i32.load 2 16
 01f96e: 20 02                      |   local.get 2
 01f970: 28 02 18                   |   i32.load 2 24
 01f973: 22 05                      |   local.tee 5
 01f975: 6a                         |   i32.add
 01f976: 20 03                      |   local.get 3
 01f978: 3a 00 00                   |   i32.store8 0 0
 01f97b: 20 02                      |   local.get 2
 01f97d: 20 05                      |   local.get 5
 01f97f: 41 01                      |   i32.const 1
 01f981: 6a                         |   i32.add
 01f982: 36 02 18                   |   i32.store 2 24
 01f985: 0b                         | end
 01f986: 02 40                      | block
 01f988: 02 40                      |   block
 01f98a: 20 01                      |     local.get 1
 01f98c: 41 c0 00                   |     i32.const 64
 01f98f: 6a                         |     i32.add
 01f990: 28 02 00                   |     i32.load 2 0
 01f993: 22 03                      |     local.tee 3
 01f995: 0d 00                      |     br_if 0
 01f997: 20 00                      |     local.get 0
 01f999: 41 00                      |     i32.const 0
 01f99b: 36 02 00                   |     i32.store 2 0
 01f99e: 20 00                      |     local.get 0
 01f9a0: 20 01                      |     local.get 1
 01f9a2: 29 03 a0 01                |     i64.load 3 160
 01f9a6: 37 02 04                   |     i64.store 2 4
 01f9a9: 0c 01                      |     br 1
 01f9ab: 0b                         |   end
 01f9ac: 02 40                      |   block
 01f9ae: 20 01                      |     local.get 1
 01f9b0: 28 02 3c                   |     i32.load 2 60
 01f9b3: 22 06                      |     local.tee 6
 01f9b5: 41 01                      |     i32.const 1
 01f9b7: 4b                         |     i32.gt_u
 01f9b8: 0d 00                      |     br_if 0
 01f9ba: 02 40                      |     block
 01f9bc: 02 40                      |       block
 01f9be: 20 01                      |         local.get 1
 01f9c0: 41 c8 00                   |         i32.const 72
 01f9c3: 6a                         |         i32.add
 01f9c4: 28 02 00                   |         i32.load 2 0
 01f9c7: 22 07                      |         local.tee 7
 01f9c9: 45                         |         i32.eqz
 01f9ca: 0d 00                      |         br_if 0
 01f9cc: 20 03                      |         local.get 3
 01f9ce: 20 07                      |         local.get 7
 01f9d0: 41 03                      |         i32.const 3
 01f9d2: 74                         |         i32.shl
 01f9d3: 6a                         |         i32.add
 01f9d4: 21 05                      |         local.set 5
 01f9d6: 03 40                      |         loop
 01f9d8: 20 05                      |           local.get 5
 01f9da: 21 01                      |           local.set 1
 01f9dc: 02 40                      |           block
 01f9de: 20 03                      |             local.get 3
 01f9e0: 20 05                      |             local.get 5
 01f9e2: 46                         |             i32.eq
 01f9e3: 0d 00                      |             br_if 0
 01f9e5: 20 03                      |             local.get 3
 01f9e7: 28 02 00                   |             i32.load 2 0
 01f9ea: 22 01                      |             local.tee 1
 01f9ec: 0d 03                      |             br_if 3
 01f9ee: 20 03                      |             local.get 3
 01f9f0: 41 08                      |             i32.const 8
 01f9f2: 6a                         |             i32.add
 01f9f3: 21 01                      |             local.set 1
 01f9f5: 0b                         |           end
 01f9f6: 20 01                      |           local.get 1
 01f9f8: 21 03                      |           local.set 3
 01f9fa: 20 07                      |           local.get 7
 01f9fc: 41 7f                      |           i32.const 4294967295
 01f9fe: 6a                         |           i32.add
 01f9ff: 22 07                      |           local.tee 7
 01fa01: 0d 00                      |           br_if 0
 01fa03: 0b                         |         end
 01fa04: 0b                         |       end
 01fa05: 41 d3 bb c1 80 00          |       i32.const 1072595
 01fa0b: 41 e6 00                   |       i32.const 102
 01fa0e: 10 97 80 80 80 00          |       call 23 <_ZN4core6option13expect_failed17h956d6564684ceeb2E>
 01fa14: 00                         |       unreachable
 01fa15: 0b                         |     end
 01fa16: 20 00                      |     local.get 0
 01fa18: 41 08                      |     i32.const 8
 01fa1a: 6a                         |     i32.add
 01fa1b: 20 03                      |     local.get 3
 01fa1d: 28 02 04                   |     i32.load 2 4
 01fa20: 36 02 00                   |     i32.store 2 0
 01fa23: 20 00                      |     local.get 0
 01fa25: 20 01                      |     local.get 1
 01fa27: 36 02 04                   |     i32.store 2 4
 01fa2a: 20 00                      |     local.get 0
 01fa2c: 41 00                      |     i32.const 0
 01fa2e: 36 02 00                   |     i32.store 2 0
 01fa31: 0c 01                      |     br 1
 01fa33: 0b                         |   end
 01fa34: 02 40                      |   block
 01fa36: 02 40                      |     block
 01fa38: 02 40                      |       block
 01fa3a: 02 40                      |         block
 01fa3c: 20 01                      |           local.get 1
 01fa3e: 41 c8 00                   |           i32.const 72
 01fa41: 6a                         |           i32.add
 01fa42: 28 02 00                   |           i32.load 2 0
 01fa45: 22 08                      |           local.tee 8
 01fa47: 45                         |           i32.eqz
 01fa48: 0d 00                      |           br_if 0
 01fa4a: 20 03                      |           local.get 3
 01fa4c: 20 08                      |           local.get 8
 01fa4e: 41 03                      |           i32.const 3
 01fa50: 74                         |           i32.shl
 01fa51: 6a                         |           i32.add
 01fa52: 21 05                      |           local.set 5
 01fa54: 41 00                      |           i32.const 0
 01fa56: 21 07                      |           local.set 7
 01fa58: 03 40                      |           loop
 01fa5a: 20 05                      |             local.get 5
 01fa5c: 21 01                      |             local.set 1
 01fa5e: 02 40                      |             block
 01fa60: 20 03                      |               local.get 3
 01fa62: 20 05                      |               local.get 5
 01fa64: 46                         |               i32.eq
 01fa65: 0d 00                      |               br_if 0
 01fa67: 20 03                      |               local.get 3
 01fa69: 41 08                      |               i32.const 8
 01fa6b: 6a                         |               i32.add
 01fa6c: 21 01                      |               local.set 1
 01fa6e: 20 03                      |               local.get 3
 01fa70: 28 02 00                   |               i32.load 2 0
 01fa73: 0d 03                      |               br_if 3
 01fa75: 0b                         |             end
 01fa76: 20 01                      |             local.get 1
 01fa78: 21 03                      |             local.set 3
 01fa7a: 20 08                      |             local.get 8
 01fa7c: 20 07                      |             local.get 7
 01fa7e: 41 01                      |             i32.const 1
 01fa80: 6a                         |             i32.add
 01fa81: 22 07                      |             local.tee 7
 01fa83: 47                         |             i32.ne
 01fa84: 0d 00                      |             br_if 0
 01fa86: 0b                         |           end
 01fa87: 0b                         |         end
 01fa88: 20 02                      |         local.get 2
 01fa8a: 41 00                      |         i32.const 0
 01fa8c: 36 02 30                   |         i32.store 2 48
 01fa8f: 0c 01                      |         br 1
 01fa91: 0b                         |       end
 01fa92: 20 02                      |       local.get 2
 01fa94: 20 03                      |       local.get 3
 01fa96: 36 02 58                   |       i32.store 2 88
 01fa99: 20 02                      |       local.get 2
 01fa9b: 41 d4 00                   |       i32.const 84
 01fa9e: 6a                         |       i32.add
 01fa9f: 41 01                      |       i32.const 1
 01faa1: 36 02 00                   |       i32.store 2 0
 01faa4: 20 02                      |       local.get 2
 01faa6: 42 02                      |       i64.const 2
 01faa8: 37 02 44                   |       i64.store 2 68
 01faab: 20 02                      |       local.get 2
 01faad: 41 bc bc c1 80 00          |       i32.const 1072700
 01fab3: 36 02 40                   |       i32.store 2 64
 01fab6: 20 02                      |       local.get 2
 01fab8: 41 99 80 80 80 00          |       i32.const 25
 01fabe: 36 02 24                   |       i32.store 2 36
 01fac1: 20 02                      |       local.get 2
 01fac3: 20 02                      |       local.get 2
 01fac5: 41 20                      |       i32.const 32
 01fac7: 6a                         |       i32.add
 01fac8: 36 02 50                   |       i32.store 2 80
 01facb: 20 02                      |       local.get 2
 01facd: 20 02                      |       local.get 2
 01facf: 41 d8 00                   |       i32.const 88
 01fad2: 6a                         |       i32.add
 01fad3: 36 02 20                   |       i32.store 2 32
 01fad6: 20 02                      |       local.get 2
 01fad8: 41 30                      |       i32.const 48
 01fada: 6a                         |       i32.add
 01fadb: 20 02                      |       local.get 2
 01fadd: 41 c0 00                   |       i32.const 64
 01fae0: 6a                         |       i32.add
 01fae1: 10 e3 80 80 80 00          |       call 99 <_ZN5alloc3fmt6format17hc0ee33853f6607a0E>
 01fae7: 20 02                      |       local.get 2
 01fae9: 28 02 30                   |       i32.load 2 48
 01faec: 45                         |       i32.eqz
 01faed: 0d 00                      |       br_if 0
 01faef: 20 02                      |       local.get 2
 01faf1: 41 c0 00                   |       i32.const 64
 01faf4: 6a                         |       i32.add
 01faf5: 41 08                      |       i32.const 8
 01faf7: 6a                         |       i32.add
 01faf8: 22 03                      |       local.tee 3
 01fafa: 20 02                      |       local.get 2
 01fafc: 41 30                      |       i32.const 48
 01fafe: 6a                         |       i32.add
 01faff: 41 08                      |       i32.const 8
 01fb01: 6a                         |       i32.add
 01fb02: 28 02 00                   |       i32.load 2 0
 01fb05: 36 02 00                   |       i32.store 2 0
 01fb08: 20 02                      |       local.get 2
 01fb0a: 20 02                      |       local.get 2
 01fb0c: 29 03 30                   |       i64.load 3 48
 01fb0f: 37 03 40                   |       i64.store 3 64
 01fb12: 20 02                      |       local.get 2
 01fb14: 41 08                      |       i32.const 8
 01fb16: 6a                         |       i32.add
 01fb17: 41 7f                      |       i32.const 4294967295
 01fb19: 20 06                      |       local.get 6
 01fb1b: 20 06                      |       local.get 6
 01fb1d: 20 06                      |       local.get 6
 01fb1f: 41 7f                      |       i32.const 4294967295
 01fb21: 6a                         |       i32.add
 01fb22: 49                         |       i32.lt_u
 01fb23: 1b                         |       select
 01fb24: 10 c9 80 80 80 00          |       call 73 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hdccbe682ed250567E>
 01fb2a: 20 03                      |       local.get 3
 01fb2c: 28 02 00                   |       i32.load 2 0
 01fb2f: 21 03                      |       local.set 3
 01fb31: 20 02                      |       local.get 2
 01fb33: 28 02 0c                   |       i32.load 2 12
 01fb36: 21 09                      |       local.set 9
 01fb38: 20 02                      |       local.get 2
 01fb3a: 28 02 08                   |       i32.load 2 8
 01fb3d: 22 0a                      |       local.tee 10
 01fb3f: 20 02                      |       local.get 2
 01fb41: 29 03 40                   |       i64.load 3 64
 01fb44: 37 02 00                   |       i64.store 2 0
 01fb47: 20 0a                      |       local.get 10
 01fb49: 41 08                      |       i32.const 8
 01fb4b: 6a                         |       i32.add
 01fb4c: 20 03                      |       local.get 3
 01fb4e: 36 02 00                   |       i32.store 2 0
 01fb51: 20 02                      |       local.get 2
 01fb53: 41 01                      |       i32.const 1
 01fb55: 36 02 28                   |       i32.store 2 40
 01fb58: 20 02                      |       local.get 2
 01fb5a: 20 09                      |       local.get 9
 01fb5c: 36 02 24                   |       i32.store 2 36
 01fb5f: 20 02                      |       local.get 2
 01fb61: 20 0a                      |       local.get 10
 01fb63: 36 02 20                   |       i32.store 2 32
 01fb66: 02 40                      |       block
 01fb68: 02 40                      |         block
 01fb6a: 20 07                      |           local.get 7
 01fb6c: 41 01                      |           i32.const 1
 01fb6e: 6a                         |           i32.add
 01fb6f: 22 07                      |           local.tee 7
 01fb71: 20 08                      |           local.get 8
 01fb73: 4f                         |           i32.ge_u
 01fb74: 0d 00                      |           br_if 0
 01fb76: 03 40                      |           loop
 01fb78: 20 05                      |             local.get 5
 01fb7a: 21 03                      |             local.set 3
 01fb7c: 02 40                      |             block
 01fb7e: 20 01                      |               local.get 1
 01fb80: 20 05                      |               local.get 5
 01fb82: 46                         |               i32.eq
 01fb83: 0d 00                      |               br_if 0
 01fb85: 20 01                      |               local.get 1
 01fb87: 41 08                      |               i32.const 8
 01fb89: 6a                         |               i32.add
 01fb8a: 21 03                      |               local.set 3
 01fb8c: 20 01                      |               local.get 1
 01fb8e: 28 02 00                   |               i32.load 2 0
 01fb91: 45                         |               i32.eqz
 01fb92: 0d 00                      |               br_if 0
 01fb94: 41 02                      |               i32.const 2
 01fb96: 21 0b                      |               local.set 11
 01fb98: 41 01                      |               i32.const 1
 01fb9a: 21 09                      |               local.set 9
 01fb9c: 03 40                      |               loop
 01fb9e: 20 02                      |                 local.get 2
 01fba0: 20 01                      |                 local.get 1
 01fba2: 36 02 3c                   |                 i32.store 2 60
 01fba5: 20 02                      |                 local.get 2
 01fba7: 42 02                      |                 i64.const 2
 01fba9: 37 02 44                   |                 i64.store 2 68
 01fbac: 20 02                      |                 local.get 2
 01fbae: 41 bc bc c1 80 00          |                 i32.const 1072700
 01fbb4: 36 02 40                   |                 i32.store 2 64
 01fbb7: 20 02                      |                 local.get 2
 01fbb9: 41 99 80 80 80 00          |                 i32.const 25
 01fbbf: 36 02 5c                   |                 i32.store 2 92
 01fbc2: 20 02                      |                 local.get 2
 01fbc4: 41 01                      |                 i32.const 1
 01fbc6: 36 02 54                   |                 i32.store 2 84
 01fbc9: 20 02                      |                 local.get 2
 01fbcb: 20 02                      |                 local.get 2
 01fbcd: 41 d8 00                   |                 i32.const 88
 01fbd0: 6a                         |                 i32.add
 01fbd1: 36 02 50                   |                 i32.store 2 80
 01fbd4: 20 02                      |                 local.get 2
 01fbd6: 20 02                      |                 local.get 2
 01fbd8: 41 3c                      |                 i32.const 60
 01fbda: 6a                         |                 i32.add
 01fbdb: 36 02 58                   |                 i32.store 2 88
 01fbde: 20 02                      |                 local.get 2
 01fbe0: 41 30                      |                 i32.const 48
 01fbe2: 6a                         |                 i32.add
 01fbe3: 20 02                      |                 local.get 2
 01fbe5: 41 c0 00                   |                 i32.const 64
 01fbe8: 6a                         |                 i32.add
 01fbe9: 10 e3 80 80 80 00          |                 call 99 <_ZN5alloc3fmt6format17hc0ee33853f6607a0E>
 01fbef: 20 02                      |                 local.get 2
 01fbf1: 28 02 30                   |                 i32.load 2 48
 01fbf4: 45                         |                 i32.eqz
 01fbf5: 0d 04                      |                 br_if 4
 01fbf7: 20 07                      |                 local.get 7
 01fbf9: 41 01                      |                 i32.const 1
 01fbfb: 6a                         |                 i32.add
 01fbfc: 21 07                      |                 local.set 7
 01fbfe: 20 02                      |                 local.get 2
 01fc00: 41 c0 00                   |                 i32.const 64
 01fc03: 6a                         |                 i32.add
 01fc04: 41 08                      |                 i32.const 8
 01fc06: 6a                         |                 i32.add
 01fc07: 22 01                      |                 local.tee 1
 01fc09: 20 02                      |                 local.get 2
 01fc0b: 41 30                      |                 i32.const 48
 01fc0d: 6a                         |                 i32.add
 01fc0e: 41 08                      |                 i32.const 8
 01fc10: 6a                         |                 i32.add
 01fc11: 28 02 00                   |                 i32.load 2 0
 01fc14: 36 02 00                   |                 i32.store 2 0
 01fc17: 20 02                      |                 local.get 2
 01fc19: 20 02                      |                 local.get 2
 01fc1b: 29 03 30                   |                 i64.load 3 48
 01fc1e: 37 03 40                   |                 i64.store 3 64
 01fc21: 02 40                      |                 block
 01fc23: 20 09                      |                   local.get 9
 01fc25: 20 02                      |                   local.get 2
 01fc27: 28 02 24                   |                   i32.load 2 36
 01fc2a: 47                         |                   i32.ne
 01fc2b: 0d 00                      |                   br_if 0
 01fc2d: 20 02                      |                   local.get 2
 01fc2f: 41 20                      |                   i32.const 32
 01fc31: 6a                         |                   i32.add
 01fc32: 20 09                      |                   local.get 9
 01fc34: 41 7f                      |                   i32.const 4294967295
 01fc36: 20 06                      |                   local.get 6
 01fc38: 20 0b                      |                   local.get 11
 01fc3a: 6b                         |                   i32.sub
 01fc3b: 22 0a                      |                   local.tee 10
 01fc3d: 41 01                      |                   i32.const 1
 01fc3f: 6a                         |                   i32.add
 01fc40: 22 0c                      |                   local.tee 12
 01fc42: 20 0c                      |                   local.get 12
 01fc44: 20 0a                      |                   local.get 10
 01fc46: 49                         |                   i32.lt_u
 01fc47: 1b                         |                   select
 01fc48: 10 ab 80 80 80 00          |                   call 43 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h15fd2f61e4791562E>
 01fc4e: 20 02                      |                   local.get 2
 01fc50: 28 02 20                   |                   i32.load 2 32
 01fc53: 21 0a                      |                   local.set 10
 01fc55: 0b                         |                 end
 01fc56: 20 0a                      |                 local.get 10
 01fc58: 20 09                      |                 local.get 9
 01fc5a: 41 0c                      |                 i32.const 12
 01fc5c: 6c                         |                 i32.mul
 01fc5d: 6a                         |                 i32.add
 01fc5e: 22 0c                      |                 local.tee 12
 01fc60: 20 02                      |                 local.get 2
 01fc62: 29 03 40                   |                 i64.load 3 64
 01fc65: 37 02 00                   |                 i64.store 2 0
 01fc68: 20 0c                      |                 local.get 12
 01fc6a: 41 08                      |                 i32.const 8
 01fc6c: 6a                         |                 i32.add
 01fc6d: 20 01                      |                 local.get 1
 01fc6f: 28 02 00                   |                 i32.load 2 0
 01fc72: 36 02 00                   |                 i32.store 2 0
 01fc75: 20 02                      |                 local.get 2
 01fc77: 20 09                      |                 local.get 9
 01fc79: 41 01                      |                 i32.const 1
 01fc7b: 6a                         |                 i32.add
 01fc7c: 22 09                      |                 local.tee 9
 01fc7e: 36 02 28                   |                 i32.store 2 40
 01fc81: 20 07                      |                 local.get 7
 01fc83: 20 08                      |                 local.get 8
 01fc85: 4f                         |                 i32.ge_u
 01fc86: 0d 03                      |                 br_if 3
 01fc88: 20 03                      |                 local.get 3
 01fc8a: 21 01                      |                 local.set 1
 01fc8c: 02 40                      |                 block
 01fc8e: 03 40                      |                   loop
 01fc90: 20 05                      |                     local.get 5
 01fc92: 21 03                      |                     local.set 3
 01fc94: 02 40                      |                     block
 01fc96: 20 01                      |                       local.get 1
 01fc98: 20 05                      |                       local.get 5
 01fc9a: 46                         |                       i32.eq
 01fc9b: 0d 00                      |                       br_if 0
 01fc9d: 20 01                      |                       local.get 1
 01fc9f: 41 08                      |                       i32.const 8
 01fca1: 6a                         |                       i32.add
 01fca2: 21 03                      |                       local.set 3
 01fca4: 20 01                      |                       local.get 1
 01fca6: 28 02 00                   |                       i32.load 2 0
 01fca9: 0d 02                      |                       br_if 2
 01fcab: 0b                         |                     end
 01fcac: 20 03                      |                     local.get 3
 01fcae: 21 01                      |                     local.set 1
 01fcb0: 20 08                      |                     local.get 8
 01fcb2: 20 07                      |                     local.get 7
 01fcb4: 41 01                      |                     i32.const 1
 01fcb6: 6a                         |                     i32.add
 01fcb7: 22 07                      |                     local.tee 7
 01fcb9: 47                         |                     i32.ne
 01fcba: 0d 00                      |                     br_if 0
 01fcbc: 0c 05                      |                     br 5
 01fcbe: 0b                         |                   end
 01fcbf: 0b                         |                 end
 01fcc0: 20 0b                      |                 local.get 11
 01fcc2: 41 01                      |                 i32.const 1
 01fcc4: 6a                         |                 i32.add
 01fcc5: 21 0b                      |                 local.set 11
 01fcc7: 0c 00                      |                 br 0
 01fcc9: 0b                         |               end
 01fcca: 0b                         |             end
 01fccb: 20 03                      |             local.get 3
 01fccd: 21 01                      |             local.set 1
 01fccf: 20 08                      |             local.get 8
 01fcd1: 20 07                      |             local.get 7
 01fcd3: 41 01                      |             i32.const 1
 01fcd5: 6a                         |             i32.add
 01fcd6: 22 07                      |             local.tee 7
 01fcd8: 47                         |             i32.ne
 01fcd9: 0d 00                      |             br_if 0
 01fcdb: 0b                         |           end
 01fcdc: 0b                         |         end
 01fcdd: 20 02                      |         local.get 2
 01fcdf: 41 00                      |         i32.const 0
 01fce1: 36 02 30                   |         i32.store 2 48
 01fce4: 0b                         |       end
 01fce5: 20 02                      |       local.get 2
 01fce7: 41 c0 00                   |       i32.const 64
 01fcea: 6a                         |       i32.add
 01fceb: 41 08                      |       i32.const 8
 01fced: 6a                         |       i32.add
 01fcee: 20 02                      |       local.get 2
 01fcf0: 41 20                      |       i32.const 32
 01fcf2: 6a                         |       i32.add
 01fcf3: 41 08                      |       i32.const 8
 01fcf5: 6a                         |       i32.add
 01fcf6: 28 02 00                   |       i32.load 2 0
 01fcf9: 22 03                      |       local.tee 3
 01fcfb: 36 02 00                   |       i32.store 2 0
 01fcfe: 20 02                      |       local.get 2
 01fd00: 20 02                      |       local.get 2
 01fd02: 29 03 20                   |       i64.load 3 32
 01fd05: 22 0d                      |       local.tee 13
 01fd07: 37 03 40                   |       i64.store 3 64
 01fd0a: 20 0d                      |       local.get 13
 01fd0c: a7                         |       i32.wrap_i64
 01fd0d: 21 01                      |       local.set 1
 01fd0f: 0c 01                      |       br 1
 01fd11: 0b                         |     end
 01fd12: 41 00                      |     i32.const 0
 01fd14: 21 03                      |     local.set 3
 01fd16: 20 02                      |     local.get 2
 01fd18: 41 00                      |     i32.const 0
 01fd1a: 36 02 48                   |     i32.store 2 72
 01fd1d: 20 02                      |     local.get 2
 01fd1f: 42 04                      |     i64.const 4
 01fd21: 37 03 40                   |     i64.store 3 64
 01fd24: 41 04                      |     i32.const 4
 01fd26: 21 01                      |     local.set 1
 01fd28: 0b                         |   end
 01fd29: 20 02                      |   local.get 2
 01fd2b: 41 30                      |   i32.const 48
 01fd2d: 6a                         |   i32.add
 01fd2e: 20 01                      |   local.get 1
 01fd30: 20 03                      |   local.get 3
 01fd32: 20 04                      |   local.get 4
 01fd34: 28 02 00                   |   i32.load 2 0
 01fd37: 20 04                      |   local.get 4
 01fd39: 28 02 08                   |   i32.load 2 8
 01fd3c: 10 e7 80 80 80 00          |   call 103 <_ZN5alloc3str17join_generic_copy17hb91c9d7950bcc5c8E>
 01fd42: 20 00                      |   local.get 0
 01fd44: 41 01                      |   i32.const 1
 01fd46: 36 02 00                   |   i32.store 2 0
 01fd49: 20 00                      |   local.get 0
 01fd4b: 41 0c                      |   i32.const 12
 01fd4d: 6a                         |   i32.add
 01fd4e: 20 02                      |   local.get 2
 01fd50: 41 38                      |   i32.const 56
 01fd52: 6a                         |   i32.add
 01fd53: 28 02 00                   |   i32.load 2 0
 01fd56: 36 02 00                   |   i32.store 2 0
 01fd59: 20 00                      |   local.get 0
 01fd5b: 20 02                      |   local.get 2
 01fd5d: 29 03 30                   |   i64.load 3 48
 01fd60: 37 02 04                   |   i64.store 2 4
 01fd63: 20 02                      |   local.get 2
 01fd65: 41 c0 00                   |   i32.const 64
 01fd68: 6a                         |   i32.add
 01fd69: 10 d8 81 80 80 00          |   call 216 <_ZN4core3ptr18real_drop_in_place17ha87744f68117a9c2E>
 01fd6f: 0b                         | end
 01fd70: 02 40                      | block
 01fd72: 20 02                      |   local.get 2
 01fd74: 28 02 14                   |   i32.load 2 20
 01fd77: 22 03                      |   local.tee 3
 01fd79: 45                         |   i32.eqz
 01fd7a: 0d 00                      |   br_if 0
 01fd7c: 20 02                      |   local.get 2
 01fd7e: 28 02 10                   |   i32.load 2 16
 01fd81: 20 03                      |   local.get 3
 01fd83: 41 01                      |   i32.const 1
 01fd85: 10 9e 80 80 80 00          |   call 30 <__rust_dealloc>
 01fd8b: 0b                         | end
 01fd8c: 20 02                      | local.get 2
 01fd8e: 41 e0 00                   | i32.const 96
 01fd91: 6a                         | i32.add
 01fd92: 24 80 80 80 80 00          | global.set 0
 01fd98: 0b                         | end
