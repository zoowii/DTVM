
/tmp/dtvm-remat-use/small-32.cwasm:     file format elf64-x86-64


Disassembly of section .text:

0000000000000360 <wasm[0]::function[1]>:
     360:	55                   	push   rbp
     361:	48 89 e5             	mov    rbp,rsp
     364:	4c 8b 57 08          	mov    r10,QWORD PTR [rdi+0x8]
     368:	4d 8b 52 18          	mov    r10,QWORD PTR [r10+0x18]
     36c:	49 81 c2 e0 01 00 00 	add    r10,0x1e0
     373:	4c 3b d4             	cmp    r10,rsp
     376:	0f 87 6e 03 00 00    	ja     6ea <wasm[0]::function[1]+0x38a>
     37c:	48 81 ec d0 01 00 00 	sub    rsp,0x1d0
     383:	48 89 9c 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rbx
     38a:	00
     38b:	4c 89 a4 24 a8 01 00 	mov    QWORD PTR [rsp+0x1a8],r12
     392:	00
     393:	4c 89 ac 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r13
     39a:	00
     39b:	4c 89 b4 24 b8 01 00 	mov    QWORD PTR [rsp+0x1b8],r14
     3a2:	00
     3a3:	4c 89 bc 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r15
     3aa:	00
     3ab:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
     3b2:	00
     3b3:	48 89 94 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rdx
     3ba:	00
     3bb:	48 8b 84 24 00 01 00 	mov    rax,QWORD PTR [rsp+0x100]
     3c2:	00
     3c3:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
     3ca:	00
     3cb:	85 c0                	test   eax,eax
     3cd:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
     3d4:	00
     3d5:	0f 84 d0 02 00 00    	je     6ab <wasm[0]::function[1]+0x34b>
     3db:	41 b8 15 cd 5b 07    	mov    r8d,0x75bcd15
     3e1:	4c 89 84 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r8
     3e8:	00
     3e9:	41 b9 52 13 5d 07    	mov    r9d,0x75d1352
     3ef:	4c 89 8c 24 90 01 00 	mov    QWORD PTR [rsp+0x190],r9
     3f6:	00
     3f7:	b8 8f 59 5e 07       	mov    eax,0x75e598f
     3fc:	48 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rax
     403:	00
     404:	be cc 9f 5f 07       	mov    esi,0x75f9fcc
     409:	bf 09 e6 60 07       	mov    edi,0x760e609
     40e:	41 ba 46 2c 62 07    	mov    r10d,0x7622c46
     414:	41 bb 83 72 63 07    	mov    r11d,0x7637283
     41a:	bb c0 b8 64 07       	mov    ebx,0x764b8c0
     41f:	41 bc fd fe 65 07    	mov    r12d,0x765fefd
     425:	41 bd 3a 45 67 07    	mov    r13d,0x767453a
     42b:	41 be 77 8b 68 07    	mov    r14d,0x7688b77
     431:	41 bf b4 d1 69 07    	mov    r15d,0x769d1b4
     437:	ba f1 17 6b 07       	mov    edx,0x76b17f1
     43c:	b9 2e 5e 6c 07       	mov    ecx,0x76c5e2e
     441:	41 b8 6b a4 6d 07    	mov    r8d,0x76da46b
     447:	41 b9 a8 ea 6e 07    	mov    r9d,0x76eeaa8
     44d:	b8 e5 30 70 07       	mov    eax,0x77030e5
     452:	48 89 84 24 80 01 00 	mov    QWORD PTR [rsp+0x180],rax
     459:	00
     45a:	b8 22 77 71 07       	mov    eax,0x7717722
     45f:	48 89 84 24 78 01 00 	mov    QWORD PTR [rsp+0x178],rax
     466:	00
     467:	b8 5f bd 72 07       	mov    eax,0x772bd5f
     46c:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
     473:	00
     474:	b8 9c 03 74 07       	mov    eax,0x774039c
     479:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
     480:	00
     481:	b8 d9 49 75 07       	mov    eax,0x77549d9
     486:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
     48d:	00
     48e:	b8 16 90 76 07       	mov    eax,0x7769016
     493:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
     49a:	00
     49b:	b8 53 d6 77 07       	mov    eax,0x777d653
     4a0:	48 89 84 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rax
     4a7:	00
     4a8:	b8 90 1c 79 07       	mov    eax,0x7791c90
     4ad:	48 89 84 24 48 01 00 	mov    QWORD PTR [rsp+0x148],rax
     4b4:	00
     4b5:	b8 cd 62 7a 07       	mov    eax,0x77a62cd
     4ba:	48 89 84 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rax
     4c1:	00
     4c2:	b8 0a a9 7b 07       	mov    eax,0x77ba90a
     4c7:	48 89 84 24 38 01 00 	mov    QWORD PTR [rsp+0x138],rax
     4ce:	00
     4cf:	b8 47 ef 7c 07       	mov    eax,0x77cef47
     4d4:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
     4db:	00
     4dc:	b8 84 35 7e 07       	mov    eax,0x77e3584
     4e1:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
     4e8:	00
     4e9:	b8 c1 7b 7f 07       	mov    eax,0x77f7bc1
     4ee:	48 89 84 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rax
     4f5:	00
     4f6:	b8 fe c1 80 07       	mov    eax,0x780c1fe
     4fb:	48 89 84 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rax
     502:	00
     503:	b8 3b 08 82 07       	mov    eax,0x782083b
     508:	48 89 84 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rax
     50f:	00
     510:	b8 78 4e 83 07       	mov    eax,0x7834e78
     515:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
     51c:	00
     51d:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
     521:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
     526:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
     52b:	4c 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],r11
     530:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
     535:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
     53a:	4c 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],r13
     53f:	4c 89 74 24 38       	mov    QWORD PTR [rsp+0x38],r14
     544:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
     549:	48 89 54 24 48       	mov    QWORD PTR [rsp+0x48],rdx
     54e:	48 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],rcx
     553:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
     558:	4c 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],r9
     55d:	48 8b 8c 24 80 01 00 	mov    rcx,QWORD PTR [rsp+0x180]
     564:	00
     565:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
     56a:	48 8b 84 24 78 01 00 	mov    rax,QWORD PTR [rsp+0x178]
     571:	00
     572:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
     577:	48 8b 84 24 70 01 00 	mov    rax,QWORD PTR [rsp+0x170]
     57e:	00
     57f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
     584:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
     58b:	00
     58c:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
     593:	00
     594:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
     59b:	00
     59c:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
     5a3:	00
     5a4:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
     5ab:	00
     5ac:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
     5b3:	00
     5b4:	48 8b 84 24 50 01 00 	mov    rax,QWORD PTR [rsp+0x150]
     5bb:	00
     5bc:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
     5c3:	00
     5c4:	48 8b 84 24 48 01 00 	mov    rax,QWORD PTR [rsp+0x148]
     5cb:	00
     5cc:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
     5d3:	00
     5d4:	48 8b 84 24 40 01 00 	mov    rax,QWORD PTR [rsp+0x140]
     5db:	00
     5dc:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
     5e3:	00
     5e4:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
     5eb:	00
     5ec:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
     5f3:	00
     5f4:	48 8b 84 24 30 01 00 	mov    rax,QWORD PTR [rsp+0x130]
     5fb:	00
     5fc:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
     603:	00
     604:	48 8b 84 24 28 01 00 	mov    rax,QWORD PTR [rsp+0x128]
     60b:	00
     60c:	48 89 84 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rax
     613:	00
     614:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
     61b:	00
     61c:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
     623:	00
     624:	48 8b 84 24 18 01 00 	mov    rax,QWORD PTR [rsp+0x118]
     62b:	00
     62c:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
     633:	00
     634:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
     63b:	00
     63c:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
     643:	00
     644:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
     64b:	00
     64c:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
     653:	00
     654:	48 8b 8c 24 98 01 00 	mov    rcx,QWORD PTR [rsp+0x198]
     65b:	00
     65c:	48 8b 94 24 f8 00 00 	mov    rdx,QWORD PTR [rsp+0xf8]
     663:	00
     664:	4c 8b 84 24 90 01 00 	mov    r8,QWORD PTR [rsp+0x190]
     66b:	00
     66c:	4c 8b 8c 24 88 01 00 	mov    r9,QWORD PTR [rsp+0x188]
     673:	00
     674:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
     67b:	00
     67c:	48 8b bc 24 f0 00 00 	mov    rdi,QWORD PTR [rsp+0xf0]
     683:	00
     684:	e8 77 f9 ff ff       	call   0 <wasm[0]::function[0]>
     689:	48 81 ec f0 00 00 00 	sub    rsp,0xf0
     690:	48 8b 8c 24 00 01 00 	mov    rcx,QWORD PTR [rsp+0x100]
     697:	00
     698:	83 e9 01             	sub    ecx,0x1
     69b:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
     6a2:	00
     6a3:	48 89 c8             	mov    rax,rcx
     6a6:	e9 20 fd ff ff       	jmp    3cb <wasm[0]::function[1]+0x6b>
     6ab:	48 8b 94 24 f8 00 00 	mov    rdx,QWORD PTR [rsp+0xf8]
     6b2:	00
     6b3:	48 89 d0             	mov    rax,rdx
     6b6:	48 8b 9c 24 a0 01 00 	mov    rbx,QWORD PTR [rsp+0x1a0]
     6bd:	00
     6be:	4c 8b a4 24 a8 01 00 	mov    r12,QWORD PTR [rsp+0x1a8]
     6c5:	00
     6c6:	4c 8b ac 24 b0 01 00 	mov    r13,QWORD PTR [rsp+0x1b0]
     6cd:	00
     6ce:	4c 8b b4 24 b8 01 00 	mov    r14,QWORD PTR [rsp+0x1b8]
     6d5:	00
     6d6:	4c 8b bc 24 c0 01 00 	mov    r15,QWORD PTR [rsp+0x1c0]
     6dd:	00
     6de:	48 81 c4 d0 01 00 00 	add    rsp,0x1d0
     6e5:	48 89 ec             	mov    rsp,rbp
     6e8:	5d                   	pop    rbp
     6e9:	c3                   	ret
     6ea:	0f 0b                	ud2
