
/tmp/dtvm-remat-use/large-24.cwasm:     file format elf64-x86-64


Disassembly of section .text:

0000000000000240 <wasm[0]::function[1]>:
     240:	55                   	push   rbp
     241:	48 89 e5             	mov    rbp,rsp
     244:	4c 8b 57 08          	mov    r10,QWORD PTR [rdi+0x8]
     248:	4d 8b 52 18          	mov    r10,QWORD PTR [r10+0x18]
     24c:	49 81 c2 60 01 00 00 	add    r10,0x160
     253:	4c 3b d4             	cmp    r10,rsp
     256:	0f 87 f4 02 00 00    	ja     550 <wasm[0]::function[1]+0x310>
     25c:	48 81 ec 50 01 00 00 	sub    rsp,0x150
     263:	48 89 9c 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rbx
     26a:	00
     26b:	4c 89 a4 24 28 01 00 	mov    QWORD PTR [rsp+0x128],r12
     272:	00
     273:	4c 89 ac 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r13
     27a:	00
     27b:	4c 89 b4 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r14
     282:	00
     283:	4c 89 bc 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r15
     28a:	00
     28b:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
     292:	00
     293:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
     29a:	00
     29b:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
     2a2:	00
     2a3:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
     2aa:	00
     2ab:	85 c0                	test   eax,eax
     2ad:	48 89 84 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rax
     2b4:	00
     2b5:	0f 84 56 02 00 00    	je     511 <wasm[0]::function[1]+0x2d1>
     2bb:	49 b8 ef cd ab 89 67 	movabs r8,0x123456789abcdef
     2c2:	45 23 01
     2c5:	4c 89 84 24 18 01 00 	mov    QWORD PTR [rsp+0x118],r8
     2cc:	00
     2cd:	49 b9 88 f7 1b 6b 0f 	movabs r9,0x5b6300f6b1bf788
     2d4:	30 b6 05
     2d7:	4c 89 8c 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r9
     2de:	00
     2df:	48 b8 21 21 8c 4c b7 	movabs rax,0xa491ab74c8c2121
     2e6:	1a 49 0a
     2e9:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
     2f0:	00
     2f1:	48 be ba 4a fc 2d 5f 	movabs rsi,0xedc055f2dfc4aba
     2f8:	05 dc 0e
     2fb:	48 bf 53 74 6c 0f 07 	movabs rdi,0x136ef0070f6c7453
     302:	f0 6e 13
     305:	49 ba ec 9d dc f0 ae 	movabs r10,0x1801daaef0dc9dec
     30c:	da 01 18
     30f:	49 bb 85 c7 4c d2 56 	movabs r11,0x1c94c556d24cc785
     316:	c5 94 1c
     319:	48 bb 1e f1 bc b3 fe 	movabs rbx,0x2127affeb3bcf11e
     320:	af 27 21
     323:	49 bc b7 1a 2d 95 a6 	movabs r12,0x25ba9aa6952d1ab7
     32a:	9a ba 25
     32d:	49 bd 50 44 9d 76 4e 	movabs r13,0x2a4d854e769d4450
     334:	85 4d 2a
     337:	49 be e9 6d 0d 58 f6 	movabs r14,0x2ee06ff6580d6de9
     33e:	6f e0 2e
     341:	49 bf 82 97 7d 39 9e 	movabs r15,0x33735a9e397d9782
     348:	5a 73 33
     34b:	48 ba 1b c1 ed 1a 46 	movabs rdx,0x380645461aedc11b
     352:	45 06 38
     355:	48 b9 b4 ea 5d fc ed 	movabs rcx,0x3c992fedfc5deab4
     35c:	2f 99 3c
     35f:	49 b8 4d 14 ce dd 95 	movabs r8,0x412c1a95ddce144d
     366:	1a 2c 41
     369:	49 b9 e6 3d 3e bf 3d 	movabs r9,0x45bf053dbf3e3de6
     370:	05 bf 45
     373:	48 b8 7f 67 ae a0 e5 	movabs rax,0x4a51efe5a0ae677f
     37a:	ef 51 4a
     37d:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
     384:	00
     385:	48 b8 18 91 1e 82 8d 	movabs rax,0x4ee4da8d821e9118
     38c:	da e4 4e
     38f:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
     396:	00
     397:	48 b8 b1 ba 8e 63 35 	movabs rax,0x5377c535638ebab1
     39e:	c5 77 53
     3a1:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
     3a8:	00
     3a9:	48 b8 4a e4 fe 44 dd 	movabs rax,0x580aafdd44fee44a
     3b0:	af 0a 58
     3b3:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
     3ba:	00
     3bb:	48 b8 e3 0d 6f 26 85 	movabs rax,0x5c9d9a85266f0de3
     3c2:	9a 9d 5c
     3c5:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
     3cc:	00
     3cd:	48 b8 7c 37 df 07 2d 	movabs rax,0x6130852d07df377c
     3d4:	85 30 61
     3d7:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
     3de:	00
     3df:	48 b8 15 61 4f e9 d4 	movabs rax,0x65c36fd4e94f6115
     3e6:	6f c3 65
     3e9:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
     3f0:	00
     3f1:	48 b8 ae 8a bf ca 7c 	movabs rax,0x6a565a7ccabf8aae
     3f8:	5a 56 6a
     3fb:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
     402:	00
     403:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
     407:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
     40c:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
     411:	4c 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],r11
     416:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
     41b:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
     420:	4c 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],r13
     425:	4c 89 74 24 38       	mov    QWORD PTR [rsp+0x38],r14
     42a:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
     42f:	48 89 54 24 48       	mov    QWORD PTR [rsp+0x48],rdx
     434:	48 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],rcx
     439:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
     43e:	4c 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],r9
     443:	48 8b 8c 24 00 01 00 	mov    rcx,QWORD PTR [rsp+0x100]
     44a:	00
     44b:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
     450:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
     457:	00
     458:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
     45d:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
     464:	00
     465:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
     46a:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
     471:	00
     472:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
     479:	00
     47a:	48 8b 84 24 e0 00 00 	mov    rax,QWORD PTR [rsp+0xe0]
     481:	00
     482:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
     489:	00
     48a:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
     491:	00
     492:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
     499:	00
     49a:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
     4a1:	00
     4a2:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
     4a9:	00
     4aa:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
     4b1:	00
     4b2:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
     4b9:	00
     4ba:	48 8b 8c 24 18 01 00 	mov    rcx,QWORD PTR [rsp+0x118]
     4c1:	00
     4c2:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
     4c9:	00
     4ca:	4c 8b 84 24 10 01 00 	mov    r8,QWORD PTR [rsp+0x110]
     4d1:	00
     4d2:	4c 8b 8c 24 08 01 00 	mov    r9,QWORD PTR [rsp+0x108]
     4d9:	00
     4da:	48 8b b4 24 b0 00 00 	mov    rsi,QWORD PTR [rsp+0xb0]
     4e1:	00
     4e2:	48 8b bc 24 b0 00 00 	mov    rdi,QWORD PTR [rsp+0xb0]
     4e9:	00
     4ea:	e8 11 fb ff ff       	call   0 <wasm[0]::function[0]>
     4ef:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
     4f6:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
     4fd:	00
     4fe:	83 e9 01             	sub    ecx,0x1
     501:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
     508:	00
     509:	48 89 c8             	mov    rax,rcx
     50c:	e9 9a fd ff ff       	jmp    2ab <wasm[0]::function[1]+0x6b>
     511:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
     518:	00
     519:	48 89 d0             	mov    rax,rdx
     51c:	48 8b 9c 24 20 01 00 	mov    rbx,QWORD PTR [rsp+0x120]
     523:	00
     524:	4c 8b a4 24 28 01 00 	mov    r12,QWORD PTR [rsp+0x128]
     52b:	00
     52c:	4c 8b ac 24 30 01 00 	mov    r13,QWORD PTR [rsp+0x130]
     533:	00
     534:	4c 8b b4 24 38 01 00 	mov    r14,QWORD PTR [rsp+0x138]
     53b:	00
     53c:	4c 8b bc 24 40 01 00 	mov    r15,QWORD PTR [rsp+0x140]
     543:	00
     544:	48 81 c4 50 01 00 00 	add    rsp,0x150
     54b:	48 89 ec             	mov    rsp,rbp
     54e:	5d                   	pop    rbp
     54f:	c3                   	ret
     550:	0f 0b                	ud2
