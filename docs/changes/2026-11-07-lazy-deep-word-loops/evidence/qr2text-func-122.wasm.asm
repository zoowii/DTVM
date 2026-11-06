00d3fa func[122] <_ZN6qrcode6canvas6Canvas28compute_finder_penalty_score17hc241d8309d619fefE>:
 00d3fb: 0f 7f                      | local[2..16] type=i32
 00d3fd: 23 80 80 80 80 00          | global.get 0
 00d403: 41 10                      | i32.const 16
 00d405: 6b                         | i32.sub
 00d406: 22 02                      | local.tee 2
 00d408: 24 80 80 80 80 00          | global.set 0
 00d40e: 20 02                      | local.get 2
 00d410: 20 00                      | local.get 0
 00d412: 36 02 08                   | i32.store 2 8
 00d415: 02 40                      | block
 00d417: 02 40                      |   block
 00d419: 20 00                      |     local.get 0
 00d41b: 2e 01 0c                   |     i32.load16_s 1 12
 00d41e: 22 03                      |     local.tee 3
 00d420: 41 01                      |     i32.const 1
 00d422: 4e                         |     i32.ge_s
 00d423: 0d 00                      |     br_if 0
 00d425: 41 00                      |     i32.const 0
 00d427: 21 04                      |     local.set 4
 00d429: 0c 01                      |     br 1
 00d42b: 0b                         |   end
 00d42c: 20 03                      |   local.get 3
 00d42e: 21 00                      |   local.set 0
 00d430: 41 00                      |   i32.const 0
 00d432: 21 04                      |   local.set 4
 00d434: 41 00                      |   i32.const 0
 00d436: 21 05                      |   local.set 5
 00d438: 03 40                      |   loop
 00d43a: 20 02                      |     local.get 2
 00d43c: 20 05                      |     local.get 5
 00d43e: 3b 01 0e                   |     i32.store16 1 14
 00d441: 02 40                      |     block
 00d443: 20 00                      |       local.get 0
 00d445: 41 10                      |       i32.const 16
 00d447: 74                         |       i32.shl
 00d448: 41 80 80 68                |       i32.const 4294574080
 00d44c: 6a                         |       i32.add
 00d44d: 41 10                      |       i32.const 16
 00d44f: 75                         |       i32.shr_s
 00d450: 22 06                      |       local.tee 6
 00d452: 41 01                      |       i32.const 1
 00d454: 48                         |       i32.lt_s
 00d455: 0d 00                      |       br_if 0
 00d457: 41 00                      |       i32.const 0
 00d459: 21 07                      |       local.set 7
 00d45b: 03 40                      |       loop
 00d45d: 02 40                      |         block
 00d45f: 02 40                      |           block
 00d461: 20 01                      |             local.get 1
 00d463: 45                         |             i32.eqz
 00d464: 0d 00                      |             br_if 0
 00d466: 03 40                      |             loop
 00d468: 20 07                      |               local.get 7
 00d46a: 21 08                      |               local.set 8
 00d46c: 02 40                      |               block
 00d46e: 02 40                      |                 block
 00d470: 41 08                      |                   i32.const 8
 00d472: 41 04                      |                   i32.const 4
 00d474: 10 94 80 80 80 00          |                   call 20 <__rust_alloc>
 00d47a: 22 09                      |                   local.tee 9
 00d47c: 45                         |                   i32.eqz
 00d47d: 0d 00                      |                   br_if 0
 00d47f: 20 08                      |                   local.get 8
 00d481: 41 10                      |                   i32.const 16
 00d483: 74                         |                   i32.shl
 00d484: 22 00                      |                   local.tee 0
 00d486: 41 80 80 04                |                   i32.const 65536
 00d48a: 6a                         |                   i32.add
 00d48b: 41 10                      |                   i32.const 16
 00d48d: 75                         |                   i32.shr_s
 00d48e: 21 07                      |                   local.set 7
 00d490: 20 09                      |                   local.get 9
 00d492: 20 02                      |                   local.get 2
 00d494: 41 08                      |                   i32.const 8
 00d496: 6a                         |                   i32.add
 00d497: 36 02 00                   |                   i32.store 2 0
 00d49a: 20 09                      |                   local.get 9
 00d49c: 20 02                      |                   local.get 2
 00d49e: 41 0e                      |                   i32.const 14
 00d4a0: 6a                         |                   i32.add
 00d4a1: 36 02 04                   |                   i32.store 2 4
 00d4a4: 20 00                      |                   local.get 0
 00d4a6: 41 80 80 1c                |                   i32.const 458752
 00d4aa: 6a                         |                   i32.add
 00d4ab: 41 10                      |                   i32.const 16
 00d4ad: 75                         |                   i32.shr_s
 00d4ae: 21 0a                      |                   local.set 10
 00d4b0: 41 79                      |                   i32.const 4294967289
 00d4b2: 21 0b                      |                   local.set 11
 00d4b4: 20 02                      |                   local.get 2
 00d4b6: 2e 01 0e                   |                   i32.load16_s 1 14
 00d4b9: 21 0c                      |                   local.set 12
 00d4bb: 20 02                      |                   local.get 2
 00d4bd: 28 02 08                   |                   i32.load 2 8
 00d4c0: 21 0d                      |                   local.set 13
 00d4c2: 20 08                      |                   local.get 8
 00d4c4: 21 00                      |                   local.set 0
 00d4c6: 02 40                      |                   block
 00d4c8: 02 40                      |                     block
 00d4ca: 03 40                      |                       loop
 00d4cc: 20 00                      |                         local.get 0
 00d4ce: 41 10                      |                         i32.const 16
 00d4d0: 74                         |                         i32.shl
 00d4d1: 41 10                      |                         i32.const 16
 00d4d3: 75                         |                         i32.shr_s
 00d4d4: 22 0e                      |                         local.tee 14
 00d4d6: 20 0a                      |                         local.get 10
 00d4d8: 4e                         |                         i32.ge_s
 00d4d9: 0d 01                      |                         br_if 1
 00d4db: 20 0d                      |                         local.get 13
 00d4dd: 28 02 08                   |                         i32.load 2 8
 00d4e0: 22 0f                      |                         local.tee 15
 00d4e2: 20 0c                      |                         local.get 12
 00d4e4: 41 0f                      |                         i32.const 15
 00d4e6: 76                         |                         i32.shr_u
 00d4e7: 20 0d                      |                         local.get 13
 00d4e9: 41 0c                      |                         i32.const 12
 00d4eb: 6a                         |                         i32.add
 00d4ec: 2e 01 00                   |                         i32.load16_s 1 0
 00d4ef: 22 10                      |                         local.tee 16
 00d4f1: 71                         |                         i32.and
 00d4f2: 20 0c                      |                         local.get 12
 00d4f4: 6a                         |                         i32.add
 00d4f5: 41 10                      |                         i32.const 16
 00d4f7: 74                         |                         i32.shl
 00d4f8: 41 10                      |                         i32.const 16
 00d4fa: 75                         |                         i32.shr_s
 00d4fb: 20 10                      |                         local.get 16
 00d4fd: 6c                         |                         i32.mul
 00d4fe: 20 0e                      |                         local.get 14
 00d500: 41 0f                      |                         i32.const 15
 00d502: 76                         |                         i32.shr_u
 00d503: 20 10                      |                         local.get 16
 00d505: 71                         |                         i32.and
 00d506: 20 00                      |                         local.get 0
 00d508: 6a                         |                         i32.add
 00d509: 41 10                      |                         i32.const 16
 00d50b: 74                         |                         i32.shl
 00d50c: 41 10                      |                         i32.const 16
 00d50e: 75                         |                         i32.shr_s
 00d50f: 6a                         |                         i32.add
 00d510: 22 10                      |                         local.tee 16
 00d512: 4d                         |                         i32.le_u
 00d513: 0d 02                      |                         br_if 2
 00d515: 20 0b                      |                         local.get 11
 00d517: 45                         |                         i32.eqz
 00d518: 0d 04                      |                         br_if 4
 00d51a: 20 0b                      |                         local.get 11
 00d51c: 41 f3 c0 c0 80 00          |                         i32.const 1056883
 00d522: 6a                         |                         i32.add
 00d523: 21 0e                      |                         local.set 14
 00d525: 20 0b                      |                         local.get 11
 00d527: 41 01                      |                         i32.const 1
 00d529: 6a                         |                         i32.add
 00d52a: 21 0b                      |                         local.set 11
 00d52c: 20 00                      |                         local.get 0
 00d52e: 41 01                      |                         i32.const 1
 00d530: 6a                         |                         i32.add
 00d531: 21 00                      |                         local.set 0
 00d533: 20 0e                      |                         local.get 14
 00d535: 2d 00 00                   |                         i32.load8_u 0 0
 00d538: 45                         |                         i32.eqz
 00d539: 20 0d                      |                         local.get 13
 00d53b: 28 02 00                   |                         i32.load 2 0
 00d53e: 20 10                      |                         local.get 16
 00d540: 41 01                      |                         i32.const 1
 00d542: 74                         |                         i32.shl
 00d543: 6a                         |                         i32.add
 00d544: 22 10                      |                         local.tee 16
 00d546: 2d 00 01                   |                         i32.load8_u 0 1
 00d549: 20 10                      |                         local.get 16
 00d54b: 2d 00 00                   |                         i32.load8_u 0 0
 00d54e: 41 00                      |                         i32.const 0
 00d550: 47                         |                         i32.ne
 00d551: 71                         |                         i32.and
 00d552: 73                         |                         i32.xor
 00d553: 0d 00                      |                         br_if 0
 00d555: 0c 04                      |                         br 4
 00d557: 0b                         |                       end
 00d558: 0b                         |                     end
 00d559: 20 0b                      |                     local.get 11
 00d55b: 0d 02                      |                     br_if 2
 00d55d: 41 f4 c0 c0 80 00          |                     i32.const 1056884
 00d563: 21 10                      |                     local.set 16
 00d565: 0c 05                      |                     br 5
 00d567: 0b                         |                   end
 00d568: 41 c4 e7 c0 80 00          |                   i32.const 1061828
 00d56e: 20 10                      |                   local.get 16
 00d570: 20 0f                      |                   local.get 15
 00d572: 10 9d 80 80 80 00          |                   call 29 <_ZN4core9panicking18panic_bounds_check17h00b7e5f45a3d3836E>
 00d578: 00                         |                   unreachable
 00d579: 0b                         |                 end
 00d57a: 41 08                      |                 i32.const 8
 00d57c: 41 04                      |                 i32.const 4
 00d57e: 10 97 80 80 80 00          |                 call 23 <_ZN5alloc5alloc18handle_alloc_error17hf78cde629306426cE>
 00d584: 00                         |                 unreachable
 00d585: 0b                         |               end
 00d586: 20 09                      |               local.get 9
 00d588: 10 8d 80 80 80 00          |               call 13 <__rust_dealloc>
 00d58e: 20 07                      |               local.get 7
 00d590: 20 06                      |               local.get 6
 00d592: 48                         |               i32.lt_s
 00d593: 0d 00                      |               br_if 0
 00d595: 0c 04                      |               br 4
 00d597: 0b                         |             end
 00d598: 0b                         |           end
 00d599: 03 40                      |           loop
 00d59b: 20 07                      |             local.get 7
 00d59d: 21 08                      |             local.set 8
 00d59f: 02 40                      |             block
 00d5a1: 02 40                      |               block
 00d5a3: 02 40                      |                 block
 00d5a5: 41 08                      |                   i32.const 8
 00d5a7: 41 04                      |                   i32.const 4
 00d5a9: 10 94 80 80 80 00          |                   call 20 <__rust_alloc>
 00d5af: 22 09                      |                   local.tee 9
 00d5b1: 45                         |                   i32.eqz
 00d5b2: 0d 00                      |                   br_if 0
 00d5b4: 20 08                      |                   local.get 8
 00d5b6: 41 10                      |                   i32.const 16
 00d5b8: 74                         |                   i32.shl
 00d5b9: 22 00                      |                   local.tee 0
 00d5bb: 41 80 80 04                |                   i32.const 65536
 00d5bf: 6a                         |                   i32.add
 00d5c0: 41 10                      |                   i32.const 16
 00d5c2: 75                         |                   i32.shr_s
 00d5c3: 21 07                      |                   local.set 7
 00d5c5: 20 09                      |                   local.get 9
 00d5c7: 20 02                      |                   local.get 2
 00d5c9: 41 08                      |                   i32.const 8
 00d5cb: 6a                         |                   i32.add
 00d5cc: 36 02 00                   |                   i32.store 2 0
 00d5cf: 20 09                      |                   local.get 9
 00d5d1: 20 02                      |                   local.get 2
 00d5d3: 41 0e                      |                   i32.const 14
 00d5d5: 6a                         |                   i32.add
 00d5d6: 36 02 04                   |                   i32.store 2 4
 00d5d9: 20 00                      |                   local.get 0
 00d5db: 41 80 80 1c                |                   i32.const 458752
 00d5df: 6a                         |                   i32.add
 00d5e0: 41 10                      |                   i32.const 16
 00d5e2: 75                         |                   i32.shr_s
 00d5e3: 21 0a                      |                   local.set 10
 00d5e5: 41 79                      |                   i32.const 4294967289
 00d5e7: 21 0b                      |                   local.set 11
 00d5e9: 20 02                      |                   local.get 2
 00d5eb: 2e 01 0e                   |                   i32.load16_s 1 14
 00d5ee: 21 0c                      |                   local.set 12
 00d5f0: 20 02                      |                   local.get 2
 00d5f2: 28 02 08                   |                   i32.load 2 8
 00d5f5: 21 0d                      |                   local.set 13
 00d5f7: 20 08                      |                   local.get 8
 00d5f9: 21 00                      |                   local.set 0
 00d5fb: 02 40                      |                   block
 00d5fd: 03 40                      |                     loop
 00d5ff: 20 00                      |                       local.get 0
 00d601: 41 10                      |                       i32.const 16
 00d603: 74                         |                       i32.shl
 00d604: 41 10                      |                       i32.const 16
 00d606: 75                         |                       i32.shr_s
 00d607: 22 10                      |                       local.tee 16
 00d609: 20 0a                      |                       local.get 10
 00d60b: 4e                         |                       i32.ge_s
 00d60c: 0d 01                      |                       br_if 1
 00d60e: 20 0d                      |                       local.get 13
 00d610: 28 02 08                   |                       i32.load 2 8
 00d613: 22 0e                      |                       local.tee 14
 00d615: 20 10                      |                       local.get 16
 00d617: 41 0f                      |                       i32.const 15
 00d619: 76                         |                       i32.shr_u
 00d61a: 20 0d                      |                       local.get 13
 00d61c: 41 0c                      |                       i32.const 12
 00d61e: 6a                         |                       i32.add
 00d61f: 2e 01 00                   |                       i32.load16_s 1 0
 00d622: 22 10                      |                       local.tee 16
 00d624: 71                         |                       i32.and
 00d625: 20 00                      |                       local.get 0
 00d627: 6a                         |                       i32.add
 00d628: 41 10                      |                       i32.const 16
 00d62a: 74                         |                       i32.shl
 00d62b: 41 10                      |                       i32.const 16
 00d62d: 75                         |                       i32.shr_s
 00d62e: 20 10                      |                       local.get 16
 00d630: 6c                         |                       i32.mul
 00d631: 20 0c                      |                       local.get 12
 00d633: 41 0f                      |                       i32.const 15
 00d635: 76                         |                       i32.shr_u
 00d636: 20 10                      |                       local.get 16
 00d638: 71                         |                       i32.and
 00d639: 20 0c                      |                       local.get 12
 00d63b: 6a                         |                       i32.add
 00d63c: 41 10                      |                       i32.const 16
 00d63e: 74                         |                       i32.shl
 00d63f: 41 10                      |                       i32.const 16
 00d641: 75                         |                       i32.shr_s
 00d642: 6a                         |                       i32.add
 00d643: 22 10                      |                       local.tee 16
 00d645: 4d                         |                       i32.le_u
 00d646: 0d 03                      |                       br_if 3
 00d648: 20 0b                      |                       local.get 11
 00d64a: 45                         |                       i32.eqz
 00d64b: 0d 04                      |                       br_if 4
 00d64d: 20 0b                      |                       local.get 11
 00d64f: 41 f3 c0 c0 80 00          |                       i32.const 1056883
 00d655: 6a                         |                       i32.add
 00d656: 21 0e                      |                       local.set 14
 00d658: 20 0b                      |                       local.get 11
 00d65a: 41 01                      |                       i32.const 1
 00d65c: 6a                         |                       i32.add
 00d65d: 21 0b                      |                       local.set 11
 00d65f: 20 00                      |                       local.get 0
 00d661: 41 01                      |                       i32.const 1
 00d663: 6a                         |                       i32.add
 00d664: 21 00                      |                       local.set 0
 00d666: 20 0e                      |                       local.get 14
 00d668: 2d 00 00                   |                       i32.load8_u 0 0
 00d66b: 45                         |                       i32.eqz
 00d66c: 20 0d                      |                       local.get 13
 00d66e: 28 02 00                   |                       i32.load 2 0
 00d671: 20 10                      |                       local.get 16
 00d673: 41 01                      |                       i32.const 1
 00d675: 74                         |                       i32.shl
 00d676: 6a                         |                       i32.add
 00d677: 22 10                      |                       local.tee 16
 00d679: 2d 00 01                   |                       i32.load8_u 0 1
 00d67c: 20 10                      |                       local.get 16
 00d67e: 2d 00 00                   |                       i32.load8_u 0 0
 00d681: 41 00                      |                       i32.const 0
 00d683: 47                         |                       i32.ne
 00d684: 71                         |                       i32.and
 00d685: 73                         |                       i32.xor
 00d686: 0d 00                      |                       br_if 0
 00d688: 0c 04                      |                       br 4
 00d68a: 0b                         |                     end
 00d68b: 0b                         |                   end
 00d68c: 20 0b                      |                   local.get 11
 00d68e: 0d 02                      |                   br_if 2
 00d690: 41 8c c1 c0 80 00          |                   i32.const 1056908
 00d696: 21 10                      |                   local.set 16
 00d698: 0c 04                      |                   br 4
 00d69a: 0b                         |                 end
 00d69b: 41 08                      |                 i32.const 8
 00d69d: 41 04                      |                 i32.const 4
 00d69f: 10 97 80 80 80 00          |                 call 23 <_ZN5alloc5alloc18handle_alloc_error17hf78cde629306426cE>
 00d6a5: 00                         |                 unreachable
 00d6a6: 0b                         |               end
 00d6a7: 41 c4 e7 c0 80 00          |               i32.const 1061828
 00d6ad: 20 10                      |               local.get 16
 00d6af: 20 0e                      |               local.get 14
 00d6b1: 10 9d 80 80 80 00          |               call 29 <_ZN4core9panicking18panic_bounds_check17h00b7e5f45a3d3836E>
 00d6b7: 00                         |               unreachable
 00d6b8: 0b                         |             end
 00d6b9: 20 09                      |             local.get 9
 00d6bb: 10 8d 80 80 80 00          |             call 13 <__rust_dealloc>
 00d6c1: 20 07                      |             local.get 7
 00d6c3: 20 06                      |             local.get 6
 00d6c5: 4e                         |             i32.ge_s
 00d6c6: 0d 03                      |             br_if 3
 00d6c8: 0c 00                      |             br 0
 00d6ca: 0b                         |           end
 00d6cb: 0b                         |         end
 00d6cc: 02 40                      |         block
 00d6ce: 02 40                      |           block
 00d6d0: 20 08                      |             local.get 8
 00d6d2: 41 10                      |             i32.const 16
 00d6d4: 74                         |             i32.shl
 00d6d5: 22 0c                      |             local.tee 12
 00d6d7: 41 10                      |             i32.const 16
 00d6d9: 75                         |             i32.shr_s
 00d6da: 41 84 80 7e                |             i32.const 4294934532
 00d6de: 48                         |             i32.lt_s
 00d6df: 0d 00                      |             br_if 0
 00d6e1: 20 08                      |             local.get 8
 00d6e3: 41 7c                      |             i32.const 4294967292
 00d6e5: 6a                         |             i32.add
 00d6e6: 21 00                      |             local.set 0
 00d6e8: 02 40                      |             block
 00d6ea: 03 40                      |               loop
 00d6ec: 02 40                      |                 block
 00d6ee: 20 00                      |                   local.get 0
 00d6f0: 41 10                      |                   i32.const 16
 00d6f2: 74                         |                   i32.shl
 00d6f3: 22 0b                      |                   local.tee 11
 00d6f5: 41 10                      |                   i32.const 16
 00d6f7: 75                         |                   i32.shr_s
 00d6f8: 22 0d                      |                   local.tee 13
 00d6fa: 41 7f                      |                   i32.const 4294967295
 00d6fc: 4c                         |                   i32.le_s
 00d6fd: 0d 00                      |                   br_if 0
 00d6ff: 20 02                      |                   local.get 2
 00d701: 28 02 08                   |                   i32.load 2 8
 00d704: 2e 01 0c                   |                   i32.load16_s 1 12
 00d707: 20 0d                      |                   local.get 13
 00d709: 4c                         |                   i32.le_s
 00d70a: 0d 00                      |                   br_if 0
 00d70c: 20 09                      |                   local.get 9
 00d70e: 20 00                      |                   local.get 0
 00d710: 20 10                      |                   local.get 16
 00d712: 28 02 0c                   |                   i32.load 2 12
 00d715: 22 0d                      |                   local.tee 13
 00d717: 11 82 80 80 80 00 00       |                   call_indirect 0 (type 2)
 00d71e: 0d 02                      |                   br_if 2
 00d720: 0b                         |                 end
 00d721: 20 0b                      |                 local.get 11
 00d723: 41 80 80 04                |                 i32.const 65536
 00d727: 6a                         |                 i32.add
 00d728: 41 10                      |                 i32.const 16
 00d72a: 75                         |                 i32.shr_s
 00d72b: 22 00                      |                 local.tee 0
 00d72d: 20 08                      |                 local.get 8
 00d72f: 41 10                      |                 i32.const 16
 00d731: 74                         |                 i32.shl
 00d732: 41 10                      |                 i32.const 16
 00d734: 75                         |                 i32.shr_s
 00d735: 48                         |                 i32.lt_s
 00d736: 0d 00                      |                 br_if 0
 00d738: 0c 02                      |                 br 2
 00d73a: 0b                         |               end
 00d73b: 0b                         |             end
 00d73c: 20 0a                      |             local.get 10
 00d73e: 20 0c                      |             local.get 12
 00d740: 41 80 80 2c                |             i32.const 720896
 00d744: 6a                         |             i32.add
 00d745: 41 10                      |             i32.const 16
 00d747: 75                         |             i32.shr_s
 00d748: 22 0c                      |             local.tee 12
 00d74a: 4e                         |             i32.ge_s
 00d74b: 0d 00                      |             br_if 0
 00d74d: 03 40                      |             loop
 00d74f: 02 40                      |               block
 00d751: 20 0a                      |                 local.get 10
 00d753: 41 10                      |                 i32.const 16
 00d755: 74                         |                 i32.shl
 00d756: 22 00                      |                 local.tee 0
 00d758: 41 10                      |                 i32.const 16
 00d75a: 75                         |                 i32.shr_s
 00d75b: 22 0b                      |                 local.tee 11
 00d75d: 41 7f                      |                 i32.const 4294967295
 00d75f: 4c                         |                 i32.le_s
 00d760: 0d 00                      |                 br_if 0
 00d762: 20 02                      |                 local.get 2
 00d764: 28 02 08                   |                 i32.load 2 8
 00d767: 2e 01 0c                   |                 i32.load16_s 1 12
 00d76a: 20 0b                      |                 local.get 11
 00d76c: 4c                         |                 i32.le_s
 00d76d: 0d 00                      |                 br_if 0
 00d76f: 20 09                      |                 local.get 9
 00d771: 20 0a                      |                 local.get 10
 00d773: 20 0d                      |                 local.get 13
 00d775: 11 82 80 80 80 00 00       |                 call_indirect 0 (type 2)
 00d77c: 0d 03                      |                 br_if 3
 00d77e: 0b                         |               end
 00d77f: 20 00                      |               local.get 0
 00d781: 41 80 80 04                |               i32.const 65536
 00d785: 6a                         |               i32.add
 00d786: 41 10                      |               i32.const 16
 00d788: 75                         |               i32.shr_s
 00d789: 22 0a                      |               local.tee 10
 00d78b: 20 0c                      |               local.get 12
 00d78d: 48                         |               i32.lt_s
 00d78e: 0d 00                      |               br_if 0
 00d790: 0b                         |             end
 00d791: 0b                         |           end
 00d792: 20 04                      |           local.get 4
 00d794: 41 28                      |           i32.const 40
 00d796: 6a                         |           i32.add
 00d797: 21 04                      |           local.set 4
 00d799: 0b                         |         end
 00d79a: 20 09                      |         local.get 9
 00d79c: 20 10                      |         local.get 16
 00d79e: 28 02 00                   |         i32.load 2 0
 00d7a1: 11 80 80 80 80 00 00       |         call_indirect 0 (type 0)
 00d7a8: 02 40                      |         block
 00d7aa: 20 10                      |           local.get 16
 00d7ac: 28 02 04                   |           i32.load 2 4
 00d7af: 45                         |           i32.eqz
 00d7b0: 0d 00                      |           br_if 0
 00d7b2: 20 09                      |           local.get 9
 00d7b4: 10 8d 80 80 80 00          |           call 13 <__rust_dealloc>
 00d7ba: 0b                         |         end
 00d7bb: 20 07                      |         local.get 7
 00d7bd: 20 06                      |         local.get 6
 00d7bf: 48                         |         i32.lt_s
 00d7c0: 0d 00                      |         br_if 0
 00d7c2: 0b                         |       end
 00d7c3: 0b                         |     end
 00d7c4: 20 05                      |     local.get 5
 00d7c6: 41 10                      |     i32.const 16
 00d7c8: 74                         |     i32.shl
 00d7c9: 41 80 80 04                |     i32.const 65536
 00d7cd: 6a                         |     i32.add
 00d7ce: 41 10                      |     i32.const 16
 00d7d0: 75                         |     i32.shr_s
 00d7d1: 22 05                      |     local.tee 5
 00d7d3: 20 03                      |     local.get 3
 00d7d5: 4e                         |     i32.ge_s
 00d7d6: 0d 01                      |     br_if 1
 00d7d8: 20 02                      |     local.get 2
 00d7da: 28 02 08                   |     i32.load 2 8
 00d7dd: 2f 01 0c                   |     i32.load16_u 1 12
 00d7e0: 21 00                      |     local.set 0
 00d7e2: 0c 00                      |     br 0
 00d7e4: 0b                         |   end
 00d7e5: 0b                         | end
 00d7e6: 20 02                      | local.get 2
 00d7e8: 41 10                      | i32.const 16
 00d7ea: 6a                         | i32.add
 00d7eb: 24 80 80 80 80 00          | global.set 0
 00d7f1: 20 04                      | local.get 4
 00d7f3: 41 98 7d                   | i32.const 4294966936
 00d7f6: 6a                         | i32.add
 00d7f7: 0b                         | end
