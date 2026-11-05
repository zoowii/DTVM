
work/wapm-followup/trace-pi1000/func-133558-2-1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
       0:	55                   	push   %rbp
       1:	48 89 e5             	mov    %rsp,%rbp
       4:	48 81 ec e0 01 00 00 	sub    $0x1e0,%rsp
       b:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
      12:	89 f0                	mov    %esi,%eax
      14:	89 45 ec             	mov    %eax,-0x14(%rbp)
      17:	89 d0                	mov    %edx,%eax
      19:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
      1f:	48 b8 16 55 b5 bb b1 	movabs $0x40026bb1bbb55516,%rax
      26:	6b 02 40
      29:	66 48 0f 6e c0       	movq   %rax,%xmm0
      2e:	f2 0f 11 85 40 ff ff 	movsd  %xmm0,-0xc0(%rbp)
      35:	ff
      36:	48 b8 ef 39 fa fe 42 	movabs $0x3fe62e42fefa39ef,%rax
      3d:	2e e6 3f
      40:	66 48 0f 6e c0       	movq   %rax,%xmm0
      45:	f2 0f 11 85 48 ff ff 	movsd  %xmm0,-0xb8(%rbp)
      4c:	ff
      4d:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
      54:	00 e0 41
      57:	66 48 0f 6e c0       	movq   %rax,%xmm0
      5c:	f2 0f 11 85 50 ff ff 	movsd  %xmm0,-0xb0(%rbp)
      63:	ff
      64:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
      6b:	00 f0 3f
      6e:	66 48 0f 6e c0       	movq   %rax,%xmm0
      73:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
      7a:	ff
      7b:	48 b8 00 00 00 00 65 	movabs $0x41cdcd6500000000,%rax
      82:	cd cd 41
      85:	66 48 0f 6e c0       	movq   %rax,%xmm0
      8a:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
      91:	ff
      92:	31 c0                	xor    %eax,%eax
      94:	31 c0                	xor    %eax,%eax
      96:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
      9c:	0f 57 c0             	xorps  %xmm0,%xmm0
      9f:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
      a6:	ff
      a7:	31 c0                	xor    %eax,%eax
      a9:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
      af:	31 c0                	xor    %eax,%eax
      b1:	89 45 80             	mov    %eax,-0x80(%rbp)
      b4:	31 c0                	xor    %eax,%eax
      b6:	89 45 84             	mov    %eax,-0x7c(%rbp)
      b9:	0f 57 c0             	xorps  %xmm0,%xmm0
      bc:	f2 0f 11 45 88       	movsd  %xmm0,-0x78(%rbp)
      c1:	0f 57 c0             	xorps  %xmm0,%xmm0
      c4:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
      c9:	31 c0                	xor    %eax,%eax
      cb:	89 45 9c             	mov    %eax,-0x64(%rbp)
      ce:	0f 57 c0             	xorps  %xmm0,%xmm0
      d1:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
      d6:	31 c0                	xor    %eax,%eax
      d8:	89 45 ac             	mov    %eax,-0x54(%rbp)
      db:	31 c0                	xor    %eax,%eax
      dd:	89 45 b0             	mov    %eax,-0x50(%rbp)
      e0:	31 c0                	xor    %eax,%eax
      e2:	89 45 b4             	mov    %eax,-0x4c(%rbp)
      e5:	0f 57 c0             	xorps  %xmm0,%xmm0
      e8:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
      ed:	31 c0                	xor    %eax,%eax
      ef:	89 45 c0             	mov    %eax,-0x40(%rbp)
      f2:	31 c0                	xor    %eax,%eax
      f4:	89 45 c4             	mov    %eax,-0x3c(%rbp)
      f7:	31 c0                	xor    %eax,%eax
      f9:	89 45 c8             	mov    %eax,-0x38(%rbp)
      fc:	31 c0                	xor    %eax,%eax
      fe:	89 45 cc             	mov    %eax,-0x34(%rbp)
     101:	31 c0                	xor    %eax,%eax
     103:	89 45 d0             	mov    %eax,-0x30(%rbp)
     106:	31 c0                	xor    %eax,%eax
     108:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     10b:	31 c0                	xor    %eax,%eax
     10d:	89 45 d8             	mov    %eax,-0x28(%rbp)
     110:	31 c0                	xor    %eax,%eax
     112:	89 45 dc             	mov    %eax,-0x24(%rbp)
     115:	31 c0                	xor    %eax,%eax
     117:	89 45 e0             	mov    %eax,-0x20(%rbp)
     11a:	31 c0                	xor    %eax,%eax
     11c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
     11f:	31 c0                	xor    %eax,%eax
     121:	89 45 e8             	mov    %eax,-0x18(%rbp)
     124:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
     12b:	ff
     12c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     12f:	48 8b 8f 20 13 00 00 	mov    0x1320(%rdi),%rcx
     136:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
     13a:	8b 8f e0 12 00 00    	mov    0x12e0(%rdi),%ecx
     140:	89 ca                	mov    %ecx,%edx
     142:	8d 52 f0             	lea    -0x10(%rdx),%edx
     145:	89 55 fc             	mov    %edx,-0x4(%rbp)
     148:	8d 49 f0             	lea    -0x10(%rcx),%ecx
     14b:	89 8f e0 12 00 00    	mov    %ecx,0x12e0(%rdi)
     151:	83 f8 02             	cmp    $0x2,%eax
     154:	0f 8c d4 10 00 00    	jl     0x122e
     15a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     15e:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     165:	8b 8d 3c ff ff ff    	mov    -0xc4(%rbp),%ecx
     16b:	8b 74 08 04          	mov    0x4(%rax,%rcx,1),%esi
     16f:	e8 62 20 ff ff       	call   0xffffffffffff21d6
     174:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
     17b:	48 8b 89 20 13 00 00 	mov    0x1320(%rcx),%rcx
     182:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
     186:	89 c1                	mov    %eax,%ecx
     188:	89 8d 6c ff ff ff    	mov    %ecx,-0x94(%rbp)
     18e:	85 c0                	test   %eax,%eax
     190:	0f 8e 98 10 00 00    	jle    0x122e
     196:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     19d:	ff
     19e:	f2 0f 10 95 48 ff ff 	movsd  -0xb8(%rbp),%xmm2
     1a5:	ff
     1a6:	f2 0f 10 9d 40 ff ff 	movsd  -0xc0(%rbp),%xmm3
     1ad:	ff
     1ae:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
     1b4:	8d 40 14             	lea    0x14(%rax),%eax
     1b7:	0f 57 c9             	xorps  %xmm1,%xmm1
     1ba:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
     1be:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
     1c2:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
     1c6:	0f 28 d1             	movaps %xmm1,%xmm2
     1c9:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     1d0:	ff
     1d1:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     1d8:	ff ff 7f
     1db:	66 48 0f 6e d0       	movq   %rax,%xmm2
     1e0:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     1e4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     1e8:	0f 97 c0             	seta   %al
     1eb:	0f b6 c0             	movzbl %al,%eax
     1ee:	85 c0                	test   %eax,%eax
     1f0:	74 75                	je     0x267
     1f2:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     1f9:	ff
     1fa:	f2 0f 11 85 20 ff ff 	movsd  %xmm0,-0xe0(%rbp)
     201:	ff
     202:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     206:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
     20c:	83 f8 01             	cmp    $0x1,%eax
     20f:	71 48                	jno    0x259
     211:	f2 0f 10 85 20 ff ff 	movsd  -0xe0(%rbp),%xmm0
     218:	ff
     219:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     21d:	0f 8a 55 10 00 00    	jp     0x1278
     223:	f2 0f 10 85 20 ff ff 	movsd  -0xe0(%rbp),%xmm0
     22a:	ff
     22b:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     232:	00 e0 c1
     235:	66 48 0f 6e c8       	movq   %rax,%xmm1
     23a:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     23e:	0f 86 27 10 00 00    	jbe    0x126b
     244:	f2 0f 10 85 20 ff ff 	movsd  -0xe0(%rbp),%xmm0
     24b:	ff
     24c:	0f 57 c9             	xorps  %xmm1,%xmm1
     24f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     253:	0f 87 12 10 00 00    	ja     0x126b
     259:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
     25f:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
     265:	eb 0b                	jmp    0x272
     267:	b8 00 00 00 80       	mov    $0x80000000,%eax
     26c:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
     272:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
     278:	31 c9                	xor    %ecx,%ecx
     27a:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     280:	83 f8 02             	cmp    $0x2,%eax
     283:	0f 8c 4d 0f 00 00    	jl     0x11d6
     289:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     290:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
     296:	8b 8d 6c ff ff ff    	mov    -0x94(%rbp),%ecx
     29c:	8d 49 ff             	lea    -0x1(%rcx),%ecx
     29f:	89 4d 80             	mov    %ecx,-0x80(%rbp)
     2a2:	c1 e0 01             	shl    $0x1,%eax
     2a5:	89 c1                	mov    %eax,%ecx
     2a7:	89 4d 84             	mov    %ecx,-0x7c(%rbp)
     2aa:	0f 57 c0             	xorps  %xmm0,%xmm0
     2ad:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
     2b1:	e8 52 1f ff ff       	call   0xffffffffffff2208
     2b6:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     2bd:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     2c4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     2c8:	f2 0f 11 45 88       	movsd  %xmm0,-0x78(%rbp)
     2cd:	0f 57 c0             	xorps  %xmm0,%xmm0
     2d0:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
     2d5:	b8 03 00 00 00       	mov    $0x3,%eax
     2da:	89 45 9c             	mov    %eax,-0x64(%rbp)
     2dd:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     2e4:	8b 45 9c             	mov    -0x64(%rbp),%eax
     2e7:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
     2ec:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
     2f3:	ff
     2f4:	0f 57 c0             	xorps  %xmm0,%xmm0
     2f7:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
     2fb:	0f 28 c8             	movaps %xmm0,%xmm1
     2fe:	f2 0f 11 4d a0       	movsd  %xmm1,-0x60(%rbp)
     303:	e8 00 1f ff ff       	call   0xffffffffffff2208
     308:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     30f:	f2 0f 10 8d 18 ff ff 	movsd  -0xe8(%rbp),%xmm1
     316:	ff
     317:	0f 28 d0             	movaps %xmm0,%xmm2
     31a:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     321:	ff
     322:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     329:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     32d:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
     331:	0f 28 d1             	movaps %xmm1,%xmm2
     334:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     33b:	ff
     33c:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     343:	ff ff 7f
     346:	66 48 0f 6e d0       	movq   %rax,%xmm2
     34b:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     34f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     353:	0f 97 c0             	seta   %al
     356:	0f b6 c0             	movzbl %al,%eax
     359:	85 c0                	test   %eax,%eax
     35b:	74 72                	je     0x3cf
     35d:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     364:	ff
     365:	f2 0f 11 85 08 ff ff 	movsd  %xmm0,-0xf8(%rbp)
     36c:	ff
     36d:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     371:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)
     377:	83 f8 01             	cmp    $0x1,%eax
     37a:	71 48                	jno    0x3c4
     37c:	f2 0f 10 85 08 ff ff 	movsd  -0xf8(%rbp),%xmm0
     383:	ff
     384:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     388:	0f 8a ea 0e 00 00    	jp     0x1278
     38e:	f2 0f 10 85 08 ff ff 	movsd  -0xf8(%rbp),%xmm0
     395:	ff
     396:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     39d:	00 e0 c1
     3a0:	66 48 0f 6e c8       	movq   %rax,%xmm1
     3a5:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     3a9:	0f 86 bc 0e 00 00    	jbe    0x126b
     3af:	f2 0f 10 85 08 ff ff 	movsd  -0xf8(%rbp),%xmm0
     3b6:	ff
     3b7:	0f 57 c9             	xorps  %xmm1,%xmm1
     3ba:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     3be:	0f 87 a7 0e 00 00    	ja     0x126b
     3c4:	8b 85 14 ff ff ff    	mov    -0xec(%rbp),%eax
     3ca:	89 45 ac             	mov    %eax,-0x54(%rbp)
     3cd:	eb 08                	jmp    0x3d7
     3cf:	b8 00 00 00 80       	mov    $0x80000000,%eax
     3d4:	89 45 ac             	mov    %eax,-0x54(%rbp)
     3d7:	8b 45 ac             	mov    -0x54(%rbp),%eax
     3da:	b9 01 00 00 00       	mov    $0x1,%ecx
     3df:	89 4d b0             	mov    %ecx,-0x50(%rbp)
     3e2:	b9 01 00 00 00       	mov    $0x1,%ecx
     3e7:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
     3ea:	83 f8 01             	cmp    $0x1,%eax
     3ed:	7c 32                	jl     0x421
     3ef:	8b 45 ac             	mov    -0x54(%rbp),%eax
     3f2:	b9 01 00 00 00       	mov    $0x1,%ecx
     3f7:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
     3fa:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     400:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     406:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
     409:	8b 55 9c             	mov    -0x64(%rbp),%edx
     40c:	0f af ca             	imul   %edx,%ecx
     40f:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
     412:	8d 40 ff             	lea    -0x1(%rax),%eax
     415:	89 c1                	mov    %eax,%ecx
     417:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     41d:	85 c0                	test   %eax,%eax
     41f:	75 df                	jne    0x400
     421:	8b 45 b4             	mov    -0x4c(%rbp),%eax
     424:	0f 57 c0             	xorps  %xmm0,%xmm0
     427:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
     42b:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
     430:	31 c0                	xor    %eax,%eax
     432:	89 45 c0             	mov    %eax,-0x40(%rbp)
     435:	31 c0                	xor    %eax,%eax
     437:	89 45 c4             	mov    %eax,-0x3c(%rbp)
     43a:	b8 01 00 00 00       	mov    $0x1,%eax
     43f:	89 45 c8             	mov    %eax,-0x38(%rbp)
     442:	b8 01 00 00 00       	mov    $0x1,%eax
     447:	89 45 cc             	mov    %eax,-0x34(%rbp)
     44a:	b8 01 00 00 00       	mov    $0x1,%eax
     44f:	89 45 d0             	mov    %eax,-0x30(%rbp)
     452:	b8 01 00 00 00       	mov    $0x1,%eax
     457:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     45a:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     45d:	8b 45 c8             	mov    -0x38(%rbp),%eax
     460:	39 c8                	cmp    %ecx,%eax
     462:	7d 0e                	jge    0x472
     464:	8b 45 cc             	mov    -0x34(%rbp),%eax
     467:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     46d:	e9 a5 00 00 00       	jmp    0x517
     472:	8b 45 cc             	mov    -0x34(%rbp),%eax
     475:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     47b:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     47e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     484:	8b 55 c4             	mov    -0x3c(%rbp),%edx
     487:	8d 52 ff             	lea    -0x1(%rdx),%edx
     48a:	89 55 c4             	mov    %edx,-0x3c(%rbp)
     48d:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
     493:	89 8d 04 ff ff ff    	mov    %ecx,-0xfc(%rbp)
     499:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     49e:	75 0f                	jne    0x4af
     4a0:	8b 85 04 ff ff ff    	mov    -0xfc(%rbp),%eax
     4a6:	83 f8 ff             	cmp    $0xffffffff,%eax
     4a9:	0f 84 bc 0d 00 00    	je     0x126b
     4af:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     4b2:	8b b5 04 ff ff ff    	mov    -0xfc(%rbp),%esi
     4b8:	8b 85 00 ff ff ff    	mov    -0x100(%rbp),%eax
     4be:	99                   	cltd
     4bf:	f7 fe                	idiv   %esi
     4c1:	89 c2                	mov    %eax,%edx
     4c3:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%rbp)
     4c9:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
     4cf:	89 8d fc fe ff ff    	mov    %ecx,-0x104(%rbp)
     4d5:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     4da:	75 13                	jne    0x4ef
     4dc:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
     4e2:	31 d2                	xor    %edx,%edx
     4e4:	89 95 f4 fe ff ff    	mov    %edx,-0x10c(%rbp)
     4ea:	83 f8 ff             	cmp    $0xffffffff,%eax
     4ed:	74 15                	je     0x504
     4ef:	8b 8d fc fe ff ff    	mov    -0x104(%rbp),%ecx
     4f5:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
     4fb:	99                   	cltd
     4fc:	f7 f9                	idiv   %ecx
     4fe:	89 95 f4 fe ff ff    	mov    %edx,-0x10c(%rbp)
     504:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
     50a:	85 c0                	test   %eax,%eax
     50c:	0f 84 69 ff ff ff    	je     0x47b
     512:	31 c0                	xor    %eax,%eax
     514:	89 45 c8             	mov    %eax,-0x38(%rbp)
     517:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     51e:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     523:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     529:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
     52c:	8b 75 9c             	mov    -0x64(%rbp),%esi
     52f:	8b 55 b0             	mov    -0x50(%rbp),%edx
     532:	44 8b 45 cc          	mov    -0x34(%rbp),%r8d
     536:	41 c1 e0 01          	shl    $0x1,%r8d
     53a:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
     53e:	39 f2                	cmp    %esi,%edx
     540:	0f 9c c2             	setl   %dl
     543:	0f b6 d2             	movzbl %dl,%edx
     546:	89 55 d8             	mov    %edx,-0x28(%rbp)
     549:	0f 57 c0             	xorps  %xmm0,%xmm0
     54c:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
     550:	0f 57 d2             	xorps  %xmm2,%xmm2
     553:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     557:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     55b:	e8 9e 1c ff ff       	call   0xffffffffffff21fe
     560:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     567:	0f 28 c8             	movaps %xmm0,%xmm1
     56a:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     571:	ff
     572:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     579:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     57d:	0f 28 d1             	movaps %xmm1,%xmm2
     580:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     587:	ff
     588:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     58f:	ff ff 7f
     592:	66 48 0f 6e d0       	movq   %rax,%xmm2
     597:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     59b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     59f:	0f 97 c0             	seta   %al
     5a2:	0f b6 c0             	movzbl %al,%eax
     5a5:	85 c0                	test   %eax,%eax
     5a7:	74 72                	je     0x61b
     5a9:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     5b0:	ff
     5b1:	f2 0f 11 85 e8 fe ff 	movsd  %xmm0,-0x118(%rbp)
     5b8:	ff
     5b9:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     5bd:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%rbp)
     5c3:	83 f8 01             	cmp    $0x1,%eax
     5c6:	71 48                	jno    0x610
     5c8:	f2 0f 10 85 e8 fe ff 	movsd  -0x118(%rbp),%xmm0
     5cf:	ff
     5d0:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     5d4:	0f 8a 9e 0c 00 00    	jp     0x1278
     5da:	f2 0f 10 85 e8 fe ff 	movsd  -0x118(%rbp),%xmm0
     5e1:	ff
     5e2:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     5e9:	00 e0 c1
     5ec:	66 48 0f 6e c8       	movq   %rax,%xmm1
     5f1:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     5f5:	0f 86 70 0c 00 00    	jbe    0x126b
     5fb:	f2 0f 10 85 e8 fe ff 	movsd  -0x118(%rbp),%xmm0
     602:	ff
     603:	0f 57 c9             	xorps  %xmm1,%xmm1
     606:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     60a:	0f 87 5b 0c 00 00    	ja     0x126b
     610:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
     616:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     619:	eb 08                	jmp    0x623
     61b:	b8 00 00 00 80       	mov    $0x80000000,%eax
     620:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     623:	8b 45 d8             	mov    -0x28(%rbp),%eax
     626:	8b 4d ec             	mov    -0x14(%rbp),%ecx
     629:	8d 49 ff             	lea    -0x1(%rcx),%ecx
     62c:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     632:	85 c0                	test   %eax,%eax
     634:	0f 85 b0 00 00 00    	jne    0x6ea
     63a:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     63d:	8b 45 b0             	mov    -0x50(%rbp),%eax
     640:	39 c8                	cmp    %ecx,%eax
     642:	0f 85 97 00 00 00    	jne    0x6df
     648:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     64b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     651:	8b 55 c4             	mov    -0x3c(%rbp),%edx
     654:	8d 52 01             	lea    0x1(%rdx),%edx
     657:	89 55 c4             	mov    %edx,-0x3c(%rbp)
     65a:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%rbp)
     660:	89 8d e4 fe ff ff    	mov    %ecx,-0x11c(%rbp)
     666:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     66b:	75 0f                	jne    0x67c
     66d:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
     673:	83 f8 ff             	cmp    $0xffffffff,%eax
     676:	0f 84 ef 0b 00 00    	je     0x126b
     67c:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     67f:	8b b5 e4 fe ff ff    	mov    -0x11c(%rbp),%esi
     685:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
     68b:	99                   	cltd
     68c:	f7 fe                	idiv   %esi
     68e:	89 c2                	mov    %eax,%edx
     690:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%rbp)
     696:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
     69c:	89 8d dc fe ff ff    	mov    %ecx,-0x124(%rbp)
     6a2:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     6a7:	75 13                	jne    0x6bc
     6a9:	8b 85 dc fe ff ff    	mov    -0x124(%rbp),%eax
     6af:	31 d2                	xor    %edx,%edx
     6b1:	89 95 d4 fe ff ff    	mov    %edx,-0x12c(%rbp)
     6b7:	83 f8 ff             	cmp    $0xffffffff,%eax
     6ba:	74 15                	je     0x6d1
     6bc:	8b 8d dc fe ff ff    	mov    -0x124(%rbp),%ecx
     6c2:	8b 85 d8 fe ff ff    	mov    -0x128(%rbp),%eax
     6c8:	99                   	cltd
     6c9:	f7 f9                	idiv   %ecx
     6cb:	89 95 d4 fe ff ff    	mov    %edx,-0x12c(%rbp)
     6d1:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
     6d7:	85 c0                	test   %eax,%eax
     6d9:	0f 84 69 ff ff ff    	je     0x648
     6df:	8b 45 b0             	mov    -0x50(%rbp),%eax
     6e2:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
     6e5:	29 c8                	sub    %ecx,%eax
     6e7:	89 45 b0             	mov    %eax,-0x50(%rbp)
     6ea:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     6f1:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     6f6:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     6fc:	8b 4d d0             	mov    -0x30(%rbp),%ecx
     6ff:	8b 55 c4             	mov    -0x3c(%rbp),%edx
     702:	83 fa 01             	cmp    $0x1,%edx
     705:	0f 9c c2             	setl   %dl
     708:	0f b6 d2             	movzbl %dl,%edx
     70b:	89 55 ec             	mov    %edx,-0x14(%rbp)
     70e:	0f 57 c0             	xorps  %xmm0,%xmm0
     711:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
     715:	0f 57 d2             	xorps  %xmm2,%xmm2
     718:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     71c:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     720:	e8 d9 1a ff ff       	call   0xffffffffffff21fe
     725:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     72c:	0f 28 c8             	movaps %xmm0,%xmm1
     72f:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     736:	ff
     737:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     73e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     742:	0f 28 d1             	movaps %xmm1,%xmm2
     745:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     74c:	ff
     74d:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     754:	ff ff 7f
     757:	66 48 0f 6e d0       	movq   %rax,%xmm2
     75c:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     760:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     764:	0f 97 c0             	seta   %al
     767:	0f b6 c0             	movzbl %al,%eax
     76a:	85 c0                	test   %eax,%eax
     76c:	74 72                	je     0x7e0
     76e:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     775:	ff
     776:	f2 0f 11 85 c8 fe ff 	movsd  %xmm0,-0x138(%rbp)
     77d:	ff
     77e:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     782:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
     788:	83 f8 01             	cmp    $0x1,%eax
     78b:	71 48                	jno    0x7d5
     78d:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
     794:	ff
     795:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     799:	0f 8a d9 0a 00 00    	jp     0x1278
     79f:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
     7a6:	ff
     7a7:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     7ae:	00 e0 c1
     7b1:	66 48 0f 6e c8       	movq   %rax,%xmm1
     7b6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     7ba:	0f 86 ab 0a 00 00    	jbe    0x126b
     7c0:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
     7c7:	ff
     7c8:	0f 57 c9             	xorps  %xmm1,%xmm1
     7cb:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     7cf:	0f 87 96 0a 00 00    	ja     0x126b
     7d5:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
     7db:	89 45 d0             	mov    %eax,-0x30(%rbp)
     7de:	eb 08                	jmp    0x7e8
     7e0:	b8 00 00 00 80       	mov    $0x80000000,%eax
     7e5:	89 45 d0             	mov    %eax,-0x30(%rbp)
     7e8:	8b 45 ec             	mov    -0x14(%rbp),%eax
     7eb:	85 c0                	test   %eax,%eax
     7ed:	0f 85 2d 04 00 00    	jne    0xc20
     7f3:	8b 45 d0             	mov    -0x30(%rbp),%eax
     7f6:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
     7f9:	ba 01 00 00 00       	mov    $0x1,%edx
     7fe:	89 55 dc             	mov    %edx,-0x24(%rbp)
     801:	31 d2                	xor    %edx,%edx
     803:	89 55 e0             	mov    %edx,-0x20(%rbp)
     806:	89 4d ec             	mov    %ecx,-0x14(%rbp)
     809:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     80f:	8b 8d 3c ff ff ff    	mov    -0xc4(%rbp),%ecx
     815:	8b 45 ec             	mov    -0x14(%rbp),%eax
     818:	89 c2                	mov    %eax,%edx
     81a:	89 95 bc fe ff ff    	mov    %edx,-0x144(%rbp)
     820:	89 85 c0 fe ff ff    	mov    %eax,-0x140(%rbp)
     826:	89 8d c4 fe ff ff    	mov    %ecx,-0x13c(%rbp)
     82c:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     831:	75 0f                	jne    0x842
     833:	8b 85 c4 fe ff ff    	mov    -0x13c(%rbp),%eax
     839:	83 f8 ff             	cmp    $0xffffffff,%eax
     83c:	0f 84 29 0a 00 00    	je     0x126b
     842:	8b 75 e0             	mov    -0x20(%rbp),%esi
     845:	44 8b 45 dc          	mov    -0x24(%rbp),%r8d
     849:	8b 8d c4 fe ff ff    	mov    -0x13c(%rbp),%ecx
     84f:	8b 85 c0 fe ff ff    	mov    -0x140(%rbp),%eax
     855:	99                   	cltd
     856:	f7 f9                	idiv   %ecx
     858:	8b 95 3c ff ff ff    	mov    -0xc4(%rbp),%edx
     85e:	89 c1                	mov    %eax,%ecx
     860:	8b 85 bc fe ff ff    	mov    -0x144(%rbp),%eax
     866:	89 cf                	mov    %ecx,%edi
     868:	89 7d e4             	mov    %edi,-0x1c(%rbp)
     86b:	41 89 d1             	mov    %edx,%r9d
     86e:	41 0f af c9          	imul   %r9d,%ecx
     872:	29 c8                	sub    %ecx,%eax
     874:	89 45 d8             	mov    %eax,-0x28(%rbp)
     877:	44 89 c1             	mov    %r8d,%ecx
     87a:	89 4d e8             	mov    %ecx,-0x18(%rbp)
     87d:	41 0f af f8          	imul   %r8d,%edi
     881:	29 fe                	sub    %edi,%esi
     883:	89 75 dc             	mov    %esi,-0x24(%rbp)
     886:	89 55 ec             	mov    %edx,-0x14(%rbp)
     889:	89 4d e0             	mov    %ecx,-0x20(%rbp)
     88c:	89 c1                	mov    %eax,%ecx
     88e:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     894:	85 c0                	test   %eax,%eax
     896:	0f 85 73 ff ff ff    	jne    0x80f
     89c:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
     89f:	8b 45 e8             	mov    -0x18(%rbp),%eax
     8a2:	8b 55 d4             	mov    -0x2c(%rbp),%edx
     8a5:	89 95 b0 fe ff ff    	mov    %edx,-0x150(%rbp)
     8ab:	89 85 b4 fe ff ff    	mov    %eax,-0x14c(%rbp)
     8b1:	89 8d b8 fe ff ff    	mov    %ecx,-0x148(%rbp)
     8b7:	3d 00 00 00 80       	cmp    $0x80000000,%eax
     8bc:	75 13                	jne    0x8d1
     8be:	8b 85 b8 fe ff ff    	mov    -0x148(%rbp),%eax
     8c4:	31 d2                	xor    %edx,%edx
     8c6:	89 95 ac fe ff ff    	mov    %edx,-0x154(%rbp)
     8cc:	83 f8 ff             	cmp    $0xffffffff,%eax
     8cf:	74 15                	je     0x8e6
     8d1:	8b 8d b8 fe ff ff    	mov    -0x148(%rbp),%ecx
     8d7:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
     8dd:	99                   	cltd
     8de:	f7 f9                	idiv   %ecx
     8e0:	89 95 ac fe ff ff    	mov    %edx,-0x154(%rbp)
     8e6:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     8ed:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
     8f3:	8b b5 b0 fe ff ff    	mov    -0x150(%rbp),%esi
     8f9:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     8fe:	8b 55 b4             	mov    -0x4c(%rbp),%edx
     901:	89 c1                	mov    %eax,%ecx
     903:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     909:	0f 57 c0             	xorps  %xmm0,%xmm0
     90c:	f2 0f 2a c6          	cvtsi2sd %esi,%xmm0
     910:	c1 f8 1f             	sar    $0x1f,%eax
     913:	21 d0                	and    %edx,%eax
     915:	01 c8                	add    %ecx,%eax
     917:	0f 57 d2             	xorps  %xmm2,%xmm2
     91a:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     91e:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     922:	e8 d7 18 ff ff       	call   0xffffffffffff21fe
     927:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     92e:	0f 28 c8             	movaps %xmm0,%xmm1
     931:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     938:	ff
     939:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     940:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     944:	0f 28 d1             	movaps %xmm1,%xmm2
     947:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     94e:	ff
     94f:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     956:	ff ff 7f
     959:	66 48 0f 6e d0       	movq   %rax,%xmm2
     95e:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     962:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     966:	0f 97 c0             	seta   %al
     969:	0f b6 c0             	movzbl %al,%eax
     96c:	85 c0                	test   %eax,%eax
     96e:	74 75                	je     0x9e5
     970:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     977:	ff
     978:	f2 0f 11 85 a0 fe ff 	movsd  %xmm0,-0x160(%rbp)
     97f:	ff
     980:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     984:	89 85 a8 fe ff ff    	mov    %eax,-0x158(%rbp)
     98a:	83 f8 01             	cmp    $0x1,%eax
     98d:	71 48                	jno    0x9d7
     98f:	f2 0f 10 85 a0 fe ff 	movsd  -0x160(%rbp),%xmm0
     996:	ff
     997:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     99b:	0f 8a d7 08 00 00    	jp     0x1278
     9a1:	f2 0f 10 85 a0 fe ff 	movsd  -0x160(%rbp),%xmm0
     9a8:	ff
     9a9:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     9b0:	00 e0 c1
     9b3:	66 48 0f 6e c8       	movq   %rax,%xmm1
     9b8:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     9bc:	0f 86 a9 08 00 00    	jbe    0x126b
     9c2:	f2 0f 10 85 a0 fe ff 	movsd  -0x160(%rbp),%xmm0
     9c9:	ff
     9ca:	0f 57 c9             	xorps  %xmm1,%xmm1
     9cd:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     9d1:	0f 87 94 08 00 00    	ja     0x126b
     9d7:	8b 85 a8 fe ff ff    	mov    -0x158(%rbp),%eax
     9dd:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     9e3:	eb 0b                	jmp    0x9f0
     9e5:	b8 00 00 00 80       	mov    $0x80000000,%eax
     9ea:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     9f0:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     9f7:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     9fc:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     a02:	8b 4d cc             	mov    -0x34(%rbp),%ecx
     a05:	0f 57 c0             	xorps  %xmm0,%xmm0
     a08:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
     a0c:	0f 57 d2             	xorps  %xmm2,%xmm2
     a0f:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     a13:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     a17:	e8 e2 17 ff ff       	call   0xffffffffffff21fe
     a1c:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     a23:	0f 28 c8             	movaps %xmm0,%xmm1
     a26:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     a2d:	ff
     a2e:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     a35:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     a39:	0f 28 d1             	movaps %xmm1,%xmm2
     a3c:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     a43:	ff
     a44:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     a4b:	ff ff 7f
     a4e:	66 48 0f 6e d0       	movq   %rax,%xmm2
     a53:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     a57:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     a5b:	0f 97 c0             	seta   %al
     a5e:	0f b6 c0             	movzbl %al,%eax
     a61:	85 c0                	test   %eax,%eax
     a63:	74 72                	je     0xad7
     a65:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     a6c:	ff
     a6d:	f2 0f 11 85 90 fe ff 	movsd  %xmm0,-0x170(%rbp)
     a74:	ff
     a75:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     a79:	89 85 9c fe ff ff    	mov    %eax,-0x164(%rbp)
     a7f:	83 f8 01             	cmp    $0x1,%eax
     a82:	71 48                	jno    0xacc
     a84:	f2 0f 10 85 90 fe ff 	movsd  -0x170(%rbp),%xmm0
     a8b:	ff
     a8c:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     a90:	0f 8a e2 07 00 00    	jp     0x1278
     a96:	f2 0f 10 85 90 fe ff 	movsd  -0x170(%rbp),%xmm0
     a9d:	ff
     a9e:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     aa5:	00 e0 c1
     aa8:	66 48 0f 6e c8       	movq   %rax,%xmm1
     aad:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     ab1:	0f 86 b4 07 00 00    	jbe    0x126b
     ab7:	f2 0f 10 85 90 fe ff 	movsd  -0x170(%rbp),%xmm0
     abe:	ff
     abf:	0f 57 c9             	xorps  %xmm1,%xmm1
     ac2:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     ac6:	0f 87 9f 07 00 00    	ja     0x126b
     acc:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
     ad2:	89 45 ec             	mov    %eax,-0x14(%rbp)
     ad5:	eb 08                	jmp    0xadf
     ad7:	b8 00 00 00 80       	mov    $0x80000000,%eax
     adc:	89 45 ec             	mov    %eax,-0x14(%rbp)
     adf:	8b 4d ac             	mov    -0x54(%rbp),%ecx
     ae2:	8b 45 c4             	mov    -0x3c(%rbp),%eax
     ae5:	39 c8                	cmp    %ecx,%eax
     ae7:	0f 8d 12 01 00 00    	jge    0xbff
     aed:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
     af0:	8b 45 ac             	mov    -0x54(%rbp),%eax
     af3:	29 c8                	sub    %ecx,%eax
     af5:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     afb:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     b02:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     b07:	8b 45 ec             	mov    -0x14(%rbp),%eax
     b0a:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
     b0f:	8b 8d 3c ff ff ff    	mov    -0xc4(%rbp),%ecx
     b15:	8d 49 ff             	lea    -0x1(%rcx),%ecx
     b18:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     b1e:	0f 57 d2             	xorps  %xmm2,%xmm2
     b21:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     b25:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     b29:	e8 d0 16 ff ff       	call   0xffffffffffff21fe
     b2e:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     b35:	0f 28 c8             	movaps %xmm0,%xmm1
     b38:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     b3f:	ff
     b40:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     b47:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     b4b:	0f 28 d1             	movaps %xmm1,%xmm2
     b4e:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     b55:	ff
     b56:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     b5d:	ff ff 7f
     b60:	66 48 0f 6e d0       	movq   %rax,%xmm2
     b65:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     b69:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     b6d:	0f 97 c0             	seta   %al
     b70:	0f b6 c0             	movzbl %al,%eax
     b73:	85 c0                	test   %eax,%eax
     b75:	74 72                	je     0xbe9
     b77:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     b7e:	ff
     b7f:	f2 0f 11 85 80 fe ff 	movsd  %xmm0,-0x180(%rbp)
     b86:	ff
     b87:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     b8b:	89 85 8c fe ff ff    	mov    %eax,-0x174(%rbp)
     b91:	83 f8 01             	cmp    $0x1,%eax
     b94:	71 48                	jno    0xbde
     b96:	f2 0f 10 85 80 fe ff 	movsd  -0x180(%rbp),%xmm0
     b9d:	ff
     b9e:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     ba2:	0f 8a d0 06 00 00    	jp     0x1278
     ba8:	f2 0f 10 85 80 fe ff 	movsd  -0x180(%rbp),%xmm0
     baf:	ff
     bb0:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     bb7:	00 e0 c1
     bba:	66 48 0f 6e c8       	movq   %rax,%xmm1
     bbf:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     bc3:	0f 86 a2 06 00 00    	jbe    0x126b
     bc9:	f2 0f 10 85 80 fe ff 	movsd  -0x180(%rbp),%xmm0
     bd0:	ff
     bd1:	0f 57 c9             	xorps  %xmm1,%xmm1
     bd4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     bd8:	0f 87 8d 06 00 00    	ja     0x126b
     bde:	8b 85 8c fe ff ff    	mov    -0x174(%rbp),%eax
     be4:	89 45 ec             	mov    %eax,-0x14(%rbp)
     be7:	eb 08                	jmp    0xbf1
     be9:	b8 00 00 00 80       	mov    $0x80000000,%eax
     bee:	89 45 ec             	mov    %eax,-0x14(%rbp)
     bf1:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     bf7:	85 c0                	test   %eax,%eax
     bf9:	0f 85 fc fe ff ff    	jne    0xafb
     bff:	8b 4d c0             	mov    -0x40(%rbp),%ecx
     c02:	8b 7d b4             	mov    -0x4c(%rbp),%edi
     c05:	8b 45 ec             	mov    -0x14(%rbp),%eax
     c08:	01 c8                	add    %ecx,%eax
     c0a:	89 c6                	mov    %eax,%esi
     c0c:	89 b5 3c ff ff ff    	mov    %esi,-0xc4(%rbp)
     c12:	89 f9                	mov    %edi,%ecx
     c14:	31 d2                	xor    %edx,%edx
     c16:	39 fe                	cmp    %edi,%esi
     c18:	0f 4c ca             	cmovl  %edx,%ecx
     c1b:	29 c8                	sub    %ecx,%eax
     c1d:	89 45 c0             	mov    %eax,-0x40(%rbp)
     c20:	8b 4d cc             	mov    -0x34(%rbp),%ecx
     c23:	8b 95 7c ff ff ff    	mov    -0x84(%rbp),%edx
     c29:	8b 45 b0             	mov    -0x50(%rbp),%eax
     c2c:	8b 75 c8             	mov    -0x38(%rbp),%esi
     c2f:	8d 76 01             	lea    0x1(%rsi),%esi
     c32:	89 75 c8             	mov    %esi,-0x38(%rbp)
     c35:	8d 40 02             	lea    0x2(%rax),%eax
     c38:	89 45 b0             	mov    %eax,-0x50(%rbp)
     c3b:	89 c8                	mov    %ecx,%eax
     c3d:	39 d0                	cmp    %edx,%eax
     c3f:	0f 95 c0             	setne  %al
     c42:	0f b6 c0             	movzbl %al,%eax
     c45:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     c4b:	8d 49 01             	lea    0x1(%rcx),%ecx
     c4e:	89 4d cc             	mov    %ecx,-0x34(%rbp)
     c51:	85 c0                	test   %eax,%eax
     c53:	0f 85 01 f8 ff ff    	jne    0x45a
     c59:	8b 45 80             	mov    -0x80(%rbp),%eax
     c5c:	b9 0a 00 00 00       	mov    $0xa,%ecx
     c61:	89 4d ec             	mov    %ecx,-0x14(%rbp)
     c64:	b9 01 00 00 00       	mov    $0x1,%ecx
     c69:	89 4d d8             	mov    %ecx,-0x28(%rbp)
     c6c:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     c72:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     c78:	83 e0 01             	and    $0x1,%eax
     c7b:	85 c0                	test   %eax,%eax
     c7d:	0f 84 ec 00 00 00    	je     0xd6f
     c83:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     c8a:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     c8f:	8b 45 ec             	mov    -0x14(%rbp),%eax
     c92:	8b 4d d8             	mov    -0x28(%rbp),%ecx
     c95:	0f 57 c0             	xorps  %xmm0,%xmm0
     c98:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
     c9c:	0f 57 d2             	xorps  %xmm2,%xmm2
     c9f:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     ca3:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     ca7:	e8 52 15 ff ff       	call   0xffffffffffff21fe
     cac:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     cb3:	0f 28 c8             	movaps %xmm0,%xmm1
     cb6:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     cbd:	ff
     cbe:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     cc5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     cc9:	0f 28 d1             	movaps %xmm1,%xmm2
     ccc:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     cd3:	ff
     cd4:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     cdb:	ff ff 7f
     cde:	66 48 0f 6e d0       	movq   %rax,%xmm2
     ce3:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     ce7:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     ceb:	0f 97 c0             	seta   %al
     cee:	0f b6 c0             	movzbl %al,%eax
     cf1:	85 c0                	test   %eax,%eax
     cf3:	74 72                	je     0xd67
     cf5:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     cfc:	ff
     cfd:	f2 0f 11 85 70 fe ff 	movsd  %xmm0,-0x190(%rbp)
     d04:	ff
     d05:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     d09:	89 85 7c fe ff ff    	mov    %eax,-0x184(%rbp)
     d0f:	83 f8 01             	cmp    $0x1,%eax
     d12:	71 48                	jno    0xd5c
     d14:	f2 0f 10 85 70 fe ff 	movsd  -0x190(%rbp),%xmm0
     d1b:	ff
     d1c:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     d20:	0f 8a 52 05 00 00    	jp     0x1278
     d26:	f2 0f 10 85 70 fe ff 	movsd  -0x190(%rbp),%xmm0
     d2d:	ff
     d2e:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     d35:	00 e0 c1
     d38:	66 48 0f 6e c8       	movq   %rax,%xmm1
     d3d:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     d41:	0f 86 24 05 00 00    	jbe    0x126b
     d47:	f2 0f 10 85 70 fe ff 	movsd  -0x190(%rbp),%xmm0
     d4e:	ff
     d4f:	0f 57 c9             	xorps  %xmm1,%xmm1
     d52:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     d56:	0f 87 0f 05 00 00    	ja     0x126b
     d5c:	8b 85 7c fe ff ff    	mov    -0x184(%rbp),%eax
     d62:	89 45 d8             	mov    %eax,-0x28(%rbp)
     d65:	eb 08                	jmp    0xd6f
     d67:	b8 00 00 00 80       	mov    $0x80000000,%eax
     d6c:	89 45 d8             	mov    %eax,-0x28(%rbp)
     d6f:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     d75:	c1 f8 01             	sar    $0x1,%eax
     d78:	89 c1                	mov    %eax,%ecx
     d7a:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%rbp)
     d80:	85 c0                	test   %eax,%eax
     d82:	0f 84 ed 00 00 00    	je     0xe75
     d88:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     d8f:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     d94:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d97:	0f 57 c0             	xorps  %xmm0,%xmm0
     d9a:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
     d9e:	0f 28 d0             	movaps %xmm0,%xmm2
     da1:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     da5:	e8 54 14 ff ff       	call   0xffffffffffff21fe
     daa:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     db1:	0f 28 c8             	movaps %xmm0,%xmm1
     db4:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     dbb:	ff
     dbc:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     dc3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     dc7:	0f 28 d1             	movaps %xmm1,%xmm2
     dca:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     dd1:	ff
     dd2:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     dd9:	ff ff 7f
     ddc:	66 48 0f 6e d0       	movq   %rax,%xmm2
     de1:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     de5:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     de9:	0f 97 c0             	seta   %al
     dec:	0f b6 c0             	movzbl %al,%eax
     def:	85 c0                	test   %eax,%eax
     df1:	74 75                	je     0xe68
     df3:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     dfa:	ff
     dfb:	f2 0f 11 85 60 fe ff 	movsd  %xmm0,-0x1a0(%rbp)
     e02:	ff
     e03:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     e07:	89 85 6c fe ff ff    	mov    %eax,-0x194(%rbp)
     e0d:	83 f8 01             	cmp    $0x1,%eax
     e10:	71 48                	jno    0xe5a
     e12:	f2 0f 10 85 60 fe ff 	movsd  -0x1a0(%rbp),%xmm0
     e19:	ff
     e1a:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     e1e:	0f 8a 54 04 00 00    	jp     0x1278
     e24:	f2 0f 10 85 60 fe ff 	movsd  -0x1a0(%rbp),%xmm0
     e2b:	ff
     e2c:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     e33:	00 e0 c1
     e36:	66 48 0f 6e c8       	movq   %rax,%xmm1
     e3b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     e3f:	0f 86 26 04 00 00    	jbe    0x126b
     e45:	f2 0f 10 85 60 fe ff 	movsd  -0x1a0(%rbp),%xmm0
     e4c:	ff
     e4d:	0f 57 c9             	xorps  %xmm1,%xmm1
     e50:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     e54:	0f 87 11 04 00 00    	ja     0x126b
     e5a:	8b 85 6c fe ff ff    	mov    -0x194(%rbp),%eax
     e60:	89 45 ec             	mov    %eax,-0x14(%rbp)
     e63:	e9 0a fe ff ff       	jmp    0xc72
     e68:	b8 00 00 00 80       	mov    $0x80000000,%eax
     e6d:	89 45 ec             	mov    %eax,-0x14(%rbp)
     e70:	e9 fd fd ff ff       	jmp    0xc72
     e75:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     e7c:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
     e81:	8b 45 d8             	mov    -0x28(%rbp),%eax
     e84:	8b 4d c0             	mov    -0x40(%rbp),%ecx
     e87:	0f 57 c0             	xorps  %xmm0,%xmm0
     e8a:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
     e8e:	0f 57 d2             	xorps  %xmm2,%xmm2
     e91:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     e95:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
     e99:	e8 60 13 ff ff       	call   0xffffffffffff21fe
     e9e:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     ea5:	0f 28 c8             	movaps %xmm0,%xmm1
     ea8:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     eaf:	ff
     eb0:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     eb7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     ebb:	0f 28 d1             	movaps %xmm1,%xmm2
     ebe:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     ec5:	ff
     ec6:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     ecd:	ff ff 7f
     ed0:	66 48 0f 6e d0       	movq   %rax,%xmm2
     ed5:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     ed9:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     edd:	0f 97 c0             	seta   %al
     ee0:	0f b6 c0             	movzbl %al,%eax
     ee3:	85 c0                	test   %eax,%eax
     ee5:	74 75                	je     0xf5c
     ee7:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
     eee:	ff
     eef:	f2 0f 11 85 50 fe ff 	movsd  %xmm0,-0x1b0(%rbp)
     ef6:	ff
     ef7:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     efb:	89 85 5c fe ff ff    	mov    %eax,-0x1a4(%rbp)
     f01:	83 f8 01             	cmp    $0x1,%eax
     f04:	71 48                	jno    0xf4e
     f06:	f2 0f 10 85 50 fe ff 	movsd  -0x1b0(%rbp),%xmm0
     f0d:	ff
     f0e:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     f12:	0f 8a 60 03 00 00    	jp     0x1278
     f18:	f2 0f 10 85 50 fe ff 	movsd  -0x1b0(%rbp),%xmm0
     f1f:	ff
     f20:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     f27:	00 e0 c1
     f2a:	66 48 0f 6e c8       	movq   %rax,%xmm1
     f2f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     f33:	0f 86 32 03 00 00    	jbe    0x126b
     f39:	f2 0f 10 85 50 fe ff 	movsd  -0x1b0(%rbp),%xmm0
     f40:	ff
     f41:	0f 57 c9             	xorps  %xmm1,%xmm1
     f44:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     f48:	0f 87 1d 03 00 00    	ja     0x126b
     f4e:	8b 85 5c fe ff ff    	mov    -0x1a4(%rbp),%eax
     f54:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     f5a:	eb 0b                	jmp    0xf67
     f5c:	b8 00 00 00 80       	mov    $0x80000000,%eax
     f61:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
     f67:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
     f6c:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
     f73:	f2 0f 10 8d 58 ff ff 	movsd  -0xa8(%rbp),%xmm1
     f7a:	ff
     f7b:	f2 0f 10 5d b8       	movsd  -0x48(%rbp),%xmm3
     f80:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     f86:	0f 57 d2             	xorps  %xmm2,%xmm2
     f89:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
     f8d:	f2 0f 5e d3          	divsd  %xmm3,%xmm2
     f91:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
     f95:	e8 64 12 ff ff       	call   0xffffffffffff21fe
     f9a:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
     fa1:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
     fa8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     fac:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
     fb1:	8b 45 9c             	mov    -0x64(%rbp),%eax
     fb4:	89 c1                	mov    %eax,%ecx
     fb6:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
     fb9:	8d 40 01             	lea    0x1(%rax),%eax
     fbc:	89 c1                	mov    %eax,%ecx
     fbe:	89 4d 9c             	mov    %ecx,-0x64(%rbp)
     fc1:	83 e0 01             	and    $0x1,%eax
     fc4:	85 c0                	test   %eax,%eax
     fc6:	74 e9                	je     0xfb1
     fc8:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
     fcf:	ff
     fd0:	8b 45 9c             	mov    -0x64(%rbp),%eax
     fd3:	0f 57 c9             	xorps  %xmm1,%xmm1
     fd6:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
     fda:	f2 0f 51 c9          	sqrtsd %xmm1,%xmm1
     fde:	0f 28 d1             	movaps %xmm1,%xmm2
     fe1:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
     fe8:	ff
     fe9:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     ff0:	ff ff 7f
     ff3:	66 48 0f 6e d0       	movq   %rax,%xmm2
     ff8:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     ffc:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1000:	0f 97 c0             	seta   %al
    1003:	0f b6 c0             	movzbl %al,%eax
    1006:	85 c0                	test   %eax,%eax
    1008:	74 72                	je     0x107c
    100a:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    1011:	ff
    1012:	f2 0f 11 85 40 fe ff 	movsd  %xmm0,-0x1c0(%rbp)
    1019:	ff
    101a:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    101e:	89 85 4c fe ff ff    	mov    %eax,-0x1b4(%rbp)
    1024:	83 f8 01             	cmp    $0x1,%eax
    1027:	71 48                	jno    0x1071
    1029:	f2 0f 10 85 40 fe ff 	movsd  -0x1c0(%rbp),%xmm0
    1030:	ff
    1031:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
    1035:	0f 8a 3d 02 00 00    	jp     0x1278
    103b:	f2 0f 10 85 40 fe ff 	movsd  -0x1c0(%rbp),%xmm0
    1042:	ff
    1043:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
    104a:	00 e0 c1
    104d:	66 48 0f 6e c8       	movq   %rax,%xmm1
    1052:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1056:	0f 86 0f 02 00 00    	jbe    0x126b
    105c:	f2 0f 10 85 40 fe ff 	movsd  -0x1c0(%rbp),%xmm0
    1063:	ff
    1064:	0f 57 c9             	xorps  %xmm1,%xmm1
    1067:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    106b:	0f 87 fa 01 00 00    	ja     0x126b
    1071:	8b 85 4c fe ff ff    	mov    -0x1b4(%rbp),%eax
    1077:	89 45 d8             	mov    %eax,-0x28(%rbp)
    107a:	eb 08                	jmp    0x1084
    107c:	b8 00 00 00 80       	mov    $0x80000000,%eax
    1081:	89 45 d8             	mov    %eax,-0x28(%rbp)
    1084:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1087:	83 f8 03             	cmp    $0x3,%eax
    108a:	7c 77                	jl     0x1103
    108c:	b8 03 00 00 00       	mov    $0x3,%eax
    1091:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
    1097:	8b 8d 3c ff ff ff    	mov    -0xc4(%rbp),%ecx
    109d:	8b 45 9c             	mov    -0x64(%rbp),%eax
    10a0:	89 ca                	mov    %ecx,%edx
    10a2:	8d 52 02             	lea    0x2(%rdx),%edx
    10a5:	89 55 ec             	mov    %edx,-0x14(%rbp)
    10a8:	89 85 38 fe ff ff    	mov    %eax,-0x1c8(%rbp)
    10ae:	89 8d 3c fe ff ff    	mov    %ecx,-0x1c4(%rbp)
    10b4:	3d 00 00 00 80       	cmp    $0x80000000,%eax
    10b9:	75 13                	jne    0x10ce
    10bb:	8b 85 3c fe ff ff    	mov    -0x1c4(%rbp),%eax
    10c1:	31 d2                	xor    %edx,%edx
    10c3:	89 95 34 fe ff ff    	mov    %edx,-0x1cc(%rbp)
    10c9:	83 f8 ff             	cmp    $0xffffffff,%eax
    10cc:	74 15                	je     0x10e3
    10ce:	8b 8d 3c fe ff ff    	mov    -0x1c4(%rbp),%ecx
    10d4:	8b 85 38 fe ff ff    	mov    -0x1c8(%rbp),%eax
    10da:	99                   	cltd
    10db:	f7 f9                	idiv   %ecx
    10dd:	89 95 34 fe ff ff    	mov    %edx,-0x1cc(%rbp)
    10e3:	8b 85 34 fe ff ff    	mov    -0x1cc(%rbp),%eax
    10e9:	85 c0                	test   %eax,%eax
    10eb:	0f 84 c0 fe ff ff    	je     0xfb1
    10f1:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    10f4:	8b 45 ec             	mov    -0x14(%rbp),%eax
    10f7:	89 c2                	mov    %eax,%edx
    10f9:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%rbp)
    10ff:	39 c8                	cmp    %ecx,%eax
    1101:	7e 94                	jle    0x1097
    1103:	8b 4d 84             	mov    -0x7c(%rbp),%ecx
    1106:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1109:	39 c8                	cmp    %ecx,%eax
    110b:	0f 8c cc f1 ff ff    	jl     0x2dd
    1111:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
    1118:	ff
    1119:	f2 0f 10 95 60 ff ff 	movsd  -0xa0(%rbp),%xmm2
    1120:	ff
    1121:	f2 0f 10 4d 90       	movsd  -0x70(%rbp),%xmm1
    1126:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    112a:	0f 28 d1             	movaps %xmm1,%xmm2
    112d:	f2 0f 11 95 70 ff ff 	movsd  %xmm2,-0x90(%rbp)
    1134:	ff
    1135:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    113c:	ff ff 7f
    113f:	66 48 0f 6e d0       	movq   %rax,%xmm2
    1144:	66 0f 54 ca          	andpd  %xmm2,%xmm1
    1148:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    114c:	0f 97 c0             	seta   %al
    114f:	0f b6 c0             	movzbl %al,%eax
    1152:	85 c0                	test   %eax,%eax
    1154:	74 75                	je     0x11cb
    1156:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    115d:	ff
    115e:	f2 0f 11 85 28 fe ff 	movsd  %xmm0,-0x1d8(%rbp)
    1165:	ff
    1166:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    116a:	89 85 30 fe ff ff    	mov    %eax,-0x1d0(%rbp)
    1170:	83 f8 01             	cmp    $0x1,%eax
    1173:	71 48                	jno    0x11bd
    1175:	f2 0f 10 85 28 fe ff 	movsd  -0x1d8(%rbp),%xmm0
    117c:	ff
    117d:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
    1181:	0f 8a f1 00 00 00    	jp     0x1278
    1187:	f2 0f 10 85 28 fe ff 	movsd  -0x1d8(%rbp),%xmm0
    118e:	ff
    118f:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
    1196:	00 e0 c1
    1199:	66 48 0f 6e c8       	movq   %rax,%xmm1
    119e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    11a2:	0f 86 c3 00 00 00    	jbe    0x126b
    11a8:	f2 0f 10 85 28 fe ff 	movsd  -0x1d8(%rbp),%xmm0
    11af:	ff
    11b0:	0f 57 c9             	xorps  %xmm1,%xmm1
    11b3:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    11b7:	0f 87 ae 00 00 00    	ja     0x126b
    11bd:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    11c3:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
    11c9:	eb 0b                	jmp    0x11d6
    11cb:	b8 00 00 00 80       	mov    $0x80000000,%eax
    11d0:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
    11d6:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    11dd:	8b 55 fc             	mov    -0x4(%rbp),%edx
    11e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11e4:	8b b5 6c ff ff ff    	mov    -0x94(%rbp),%esi
    11ea:	44 8b 85 3c ff ff ff 	mov    -0xc4(%rbp),%r8d
    11f1:	89 d1                	mov    %edx,%ecx
    11f3:	44 89 44 08 04       	mov    %r8d,0x4(%rax,%rcx,1)
    11f8:	89 d1                	mov    %edx,%ecx
    11fa:	89 34 08             	mov    %esi,(%rax,%rcx,1)
    11fd:	be 00 04 00 00       	mov    $0x400,%esi
    1202:	e8 ad 0e ff ff       	call   0xffffffffffff20b4
    1207:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    120a:	89 c2                	mov    %eax,%edx
    120c:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    1213:	48 8b 90 20 13 00 00 	mov    0x1320(%rax),%rdx
    121a:	8d 49 10             	lea    0x10(%rcx),%ecx
    121d:	89 88 e0 12 00 00    	mov    %ecx,0x12e0(%rax)
    1223:	31 c0                	xor    %eax,%eax
    1225:	48 81 c4 e0 01 00 00 	add    $0x1e0,%rsp
    122c:	5d                   	pop    %rbp
    122d:	c3                   	ret
    122e:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    1235:	be 2b 04 00 00       	mov    $0x42b,%esi
    123a:	e8 15 0f ff ff       	call   0xffffffffffff2154
    123f:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    1246:	48 8b 87 20 13 00 00 	mov    0x1320(%rdi),%rax
    124d:	be 01 00 00 00       	mov    $0x1,%esi
    1252:	e8 53 0e ff ff       	call   0xffffffffffff20aa
    1257:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    125e:	48 8b 80 20 13 00 00 	mov    0x1320(%rax),%rax
    1265:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1269:	eb 1a                	jmp    0x1285
    126b:	b8 6a 00 00 00       	mov    $0x6a,%eax
    1270:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
    1276:	eb 18                	jmp    0x1290
    1278:	b8 6d 00 00 00       	mov    $0x6d,%eax
    127d:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
    1283:	eb 0b                	jmp    0x1290
    1285:	b8 71 00 00 00       	mov    $0x71,%eax
    128a:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
    1290:	8b b5 24 fe ff ff    	mov    -0x1dc(%rbp),%esi
    1296:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    129d:	48 b8 f0 06 b1 c3 ff 	movabs $0x55ffc3b106f0,%rax
    12a4:	55 00 00
    12a7:	ff d0                	call   *%rax
    12a9:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    12b0:	48 b8 50 07 b1 c3 ff 	movabs $0x55ffc3b10750,%rax
    12b7:	55 00 00
    12ba:	ff d0                	call   *%rax
    12bc:	31 c0                	xor    %eax,%eax
    12be:	48 81 c4 e0 01 00 00 	add    $0x1e0,%rsp
    12c5:	5d                   	pop    %rbp
    12c6:	c3                   	ret
