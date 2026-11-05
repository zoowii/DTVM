
work/wapm-followup/pi.cwasm:     file format elf64-x86-64


Disassembly of section .text:

00000000000004a0 <wasm[0]::function[13]>:
     4a0:	55                   	push   %rbp
     4a1:	48 89 e5             	mov    %rsp,%rbp
     4a4:	4c 8b 57 08          	mov    0x8(%rdi),%r10
     4a8:	4d 8b 52 18          	mov    0x18(%r10),%r10
     4ac:	49 81 c2 f0 00 00 00 	add    $0xf0,%r10
     4b3:	4c 3b d4             	cmp    %rsp,%r10
     4b6:	0f 87 ae 0c 00 00    	ja     116a <wasm[0]::function[13]+0xcca>
     4bc:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
     4c3:	48 89 9c 24 b0 00 00 	mov    %rbx,0xb0(%rsp)
     4ca:	00
     4cb:	4c 89 a4 24 b8 00 00 	mov    %r12,0xb8(%rsp)
     4d2:	00
     4d3:	4c 89 ac 24 c0 00 00 	mov    %r13,0xc0(%rsp)
     4da:	00
     4db:	4c 89 b4 24 c8 00 00 	mov    %r14,0xc8(%rsp)
     4e2:	00
     4e3:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
     4ea:	00
     4eb:	8b 87 c0 01 00 00    	mov    0x1c0(%rdi),%eax
     4f1:	48 89 c6             	mov    %rax,%rsi
     4f4:	83 ee 10             	sub    $0x10,%esi
     4f7:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
     4fe:	00
     4ff:	89 b7 c0 01 00 00    	mov    %esi,0x1c0(%rdi)
     505:	83 fa 02             	cmp    $0x2,%edx
     508:	0f 8d 09 00 00 00    	jge    517 <wasm[0]::function[13]+0x77>
     50e:	48 89 3c 24          	mov    %rdi,(%rsp)
     512:	e9 2e 0c 00 00       	jmp    1145 <wasm[0]::function[13]+0xca5>
     517:	48 8b 47 38          	mov    0x38(%rdi),%rax
     51b:	48 89 3c 24          	mov    %rdi,(%rsp)
     51f:	8b c9                	mov    %ecx,%ecx
     521:	8b 54 08 04          	mov    0x4(%rax,%rcx,1),%edx
     525:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
     52c:	00
     52d:	48 8b 34 24          	mov    (%rsp),%rsi
     531:	e8 ea b4 00 00       	call   ba20 <wasm[0]::function[58]>
     536:	85 c0                	test   %eax,%eax
     538:	0f 8e 07 0c 00 00    	jle    1145 <wasm[0]::function[13]+0xca5>
     53e:	8d 48 14             	lea    0x14(%rax),%ecx
     541:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
     548:	00
     549:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     54d:	c5 fb 2a c1          	vcvtsi2sd %ecx,%xmm0,%xmm0
     551:	c5 fb 59 05 67 0c 00 	vmulsd 0xc67(%rip),%xmm0,%xmm0        # 11c0 <wasm[0]::function[13]+0xd20>
     558:	00
     559:	c5 fb 5e 05 6f 0c 00 	vdivsd 0xc6f(%rip),%xmm0,%xmm0        # 11d0 <wasm[0]::function[13]+0xd30>
     560:	00
     561:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     568:	ff ff 7f
     56b:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     570:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     574:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     57b:	00 e0 41
     57e:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     583:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     587:	0f 97 c0             	seta   %al
     58a:	0f b6 c0             	movzbl %al,%eax
     58d:	85 c0                	test   %eax,%eax
     58f:	0f 84 43 00 00 00    	je     5d8 <wasm[0]::function[13]+0x138>
     595:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     599:	83 f8 01             	cmp    $0x1,%eax
     59c:	0f 81 3b 00 00 00    	jno    5dd <wasm[0]::function[13]+0x13d>
     5a2:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     5a6:	0f 8a c0 0b 00 00    	jp     116c <wasm[0]::function[13]+0xccc>
     5ac:	48 b9 00 00 20 00 00 	movabs $0xc1e0000000200000,%rcx
     5b3:	00 e0 c1
     5b6:	66 48 0f 6e c9       	movq   %rcx,%xmm1
     5bb:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     5bf:	0f 86 a9 0b 00 00    	jbe    116e <wasm[0]::function[13]+0xcce>
     5c5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     5c9:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     5cd:	0f 82 9d 0b 00 00    	jb     1170 <wasm[0]::function[13]+0xcd0>
     5d3:	e9 05 00 00 00       	jmp    5dd <wasm[0]::function[13]+0x13d>
     5d8:	b8 00 00 00 80       	mov    $0x80000000,%eax
     5dd:	45 33 f6             	xor    %r14d,%r14d
     5e0:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
     5e5:	83 f8 02             	cmp    $0x2,%eax
     5e8:	0f 8d 0d 00 00 00    	jge    5fb <wasm[0]::function[13]+0x15b>
     5ee:	4c 8b a4 24 a8 00 00 	mov    0xa8(%rsp),%r12
     5f5:	00
     5f6:	e9 d4 0a 00 00       	jmp    10cf <wasm[0]::function[13]+0xc2f>
     5fb:	48 89 c1             	mov    %rax,%rcx
     5fe:	d1 e1                	shl    $1,%ecx
     600:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
     605:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     609:	c5 fb 2a c1          	vcvtsi2sd %ecx,%xmm0,%xmm0
     60d:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
     614:	00
     615:	48 8b 34 24          	mov    (%rsp),%rsi
     619:	48 8b 3c 24          	mov    (%rsp),%rdi
     61d:	e8 de ba 00 00       	call   c100 <wasm[0]::function[63]>
     622:	f3 0f 7f 84 24 80 00 	movdqu %xmm0,0x80(%rsp)
     629:	00 00
     62b:	41 bc 03 00 00 00    	mov    $0x3,%r12d
     631:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     635:	f3 0f 7f 44 24 40    	movdqu %xmm0,0x40(%rsp)
     63b:	41 be 00 00 00 80    	mov    $0x80000000,%r14d
     641:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
     646:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     64a:	c4 c1 7b 2a c4       	vcvtsi2sd %r12d,%xmm0,%xmm0
     64f:	f3 0f 7f 44 24 70    	movdqu %xmm0,0x70(%rsp)
     655:	48 8b 34 24          	mov    (%rsp),%rsi
     659:	48 8b 3c 24          	mov    (%rsp),%rdi
     65d:	e8 9e ba 00 00       	call   c100 <wasm[0]::function[63]>
     662:	f3 0f 6f 8c 24 80 00 	movdqu 0x80(%rsp),%xmm1
     669:	00 00
     66b:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
     66f:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     676:	ff ff 7f
     679:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     67e:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     682:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     689:	00 e0 41
     68c:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     691:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     695:	0f 97 c0             	seta   %al
     698:	0f b6 c0             	movzbl %al,%eax
     69b:	85 c0                	test   %eax,%eax
     69d:	0f 84 4a 00 00 00    	je     6ed <wasm[0]::function[13]+0x24d>
     6a3:	f2 44 0f 2c f0       	cvttsd2si %xmm0,%r14d
     6a8:	41 83 fe 01          	cmp    $0x1,%r14d
     6ac:	0f 81 31 00 00 00    	jno    6e3 <wasm[0]::function[13]+0x243>
     6b2:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     6b6:	0f 8a b6 0a 00 00    	jp     1172 <wasm[0]::function[13]+0xcd2>
     6bc:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     6c3:	00 e0 c1
     6c6:	66 48 0f 6e c8       	movq   %rax,%xmm1
     6cb:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     6cf:	0f 86 9f 0a 00 00    	jbe    1174 <wasm[0]::function[13]+0xcd4>
     6d5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     6d9:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     6dd:	0f 82 93 0a 00 00    	jb     1176 <wasm[0]::function[13]+0xcd6>
     6e3:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
     6e8:	e9 0a 00 00 00       	jmp    6f7 <wasm[0]::function[13]+0x257>
     6ed:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     6f2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
     6f7:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     6fd:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
     702:	45 85 f6             	test   %r14d,%r14d
     705:	0f 8f 0a 00 00 00    	jg     715 <wasm[0]::function[13]+0x275>
     70b:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
     710:	e9 2c 00 00 00       	jmp    741 <wasm[0]::function[13]+0x2a1>
     715:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     71b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
     720:	81 c0 ff ff ff ff    	add    $0xffffffff,%eax
     726:	45 0f af fc          	imul   %r12d,%r15d
     72a:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
     72f:	85 c0                	test   %eax,%eax
     731:	0f 84 0a 00 00 00    	je     741 <wasm[0]::function[13]+0x2a1>
     737:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
     73c:	e9 df ff ff ff       	jmp    720 <wasm[0]::function[13]+0x280>
     741:	bb 01 00 00 00       	mov    $0x1,%ebx
     746:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
     74b:	45 33 ed             	xor    %r13d,%r13d
     74e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     752:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
     757:	c4 c1 7b 2a cf       	vcvtsi2sd %r15d,%xmm0,%xmm1
     75c:	f3 0f 7f 4c 24 60    	movdqu %xmm1,0x60(%rsp)
     762:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
     767:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     76c:	4d 89 ef             	mov    %r13,%r15
     76f:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
     774:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
     779:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     77e:	41 3b c4             	cmp    %r12d,%eax
     781:	0f 8d 0d 00 00 00    	jge    794 <wasm[0]::function[13]+0x2f4>
     787:	48 89 de             	mov    %rbx,%rsi
     78a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     78f:	e9 50 00 00 00       	jmp    7e4 <wasm[0]::function[13]+0x344>
     794:	48 89 d8             	mov    %rbx,%rax
     797:	99                   	cltd
     798:	45 85 e4             	test   %r12d,%r12d
     79b:	0f 84 d7 09 00 00    	je     1178 <wasm[0]::function[13]+0xcd8>
     7a1:	41 f7 fc             	idiv   %r12d
     7a4:	99                   	cltd
     7a5:	48 89 c6             	mov    %rax,%rsi
     7a8:	41 83 fc ff          	cmp    $0xffffffff,%r12d
     7ac:	0f 85 0a 00 00 00    	jne    7bc <wasm[0]::function[13]+0x31c>
     7b2:	ba 00 00 00 00       	mov    $0x0,%edx
     7b7:	e9 03 00 00 00       	jmp    7bf <wasm[0]::function[13]+0x31f>
     7bc:	41 f7 fc             	idiv   %r12d
     7bf:	41 8d 45 ff          	lea    -0x1(%r13),%eax
     7c3:	85 d2                	test   %edx,%edx
     7c5:	0f 85 0b 00 00 00    	jne    7d6 <wasm[0]::function[13]+0x336>
     7cb:	49 89 c5             	mov    %rax,%r13
     7ce:	48 89 f0             	mov    %rsi,%rax
     7d1:	e9 c1 ff ff ff       	jmp    797 <wasm[0]::function[13]+0x2f7>
     7d6:	41 81 c5 ff ff ff ff 	add    $0xffffffff,%r13d
     7dd:	33 c0                	xor    %eax,%eax
     7df:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     7e4:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     7e8:	c5 fb 2a c1          	vcvtsi2sd %ecx,%xmm0,%xmm0
     7ec:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     7f0:	c5 f3 2a ce          	vcvtsi2sd %esi,%xmm1,%xmm1
     7f4:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     7f8:	48 8b 34 24          	mov    (%rsp),%rsi
     7fc:	48 8b 3c 24          	mov    (%rsp),%rdi
     800:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     806:	e8 35 b6 00 00       	call   be40 <wasm[0]::function[62]>
     80b:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     812:	ff ff 7f
     815:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     81a:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     81e:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     825:	00 e0 41
     828:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     82d:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     831:	0f 97 c0             	seta   %al
     834:	0f b6 c0             	movzbl %al,%eax
     837:	85 c0                	test   %eax,%eax
     839:	0f 84 4b 00 00 00    	je     88a <wasm[0]::function[13]+0x3ea>
     83f:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
     843:	83 f9 01             	cmp    $0x1,%ecx
     846:	0f 81 31 00 00 00    	jno    87d <wasm[0]::function[13]+0x3dd>
     84c:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     850:	0f 8a 24 09 00 00    	jp     117a <wasm[0]::function[13]+0xcda>
     856:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     85d:	00 e0 c1
     860:	66 48 0f 6e c8       	movq   %rax,%xmm1
     865:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     869:	0f 86 0d 09 00 00    	jbe    117c <wasm[0]::function[13]+0xcdc>
     86f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     873:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     877:	0f 82 01 09 00 00    	jb     117e <wasm[0]::function[13]+0xcde>
     87d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
     882:	49 89 da             	mov    %rbx,%r10
     885:	e9 0d 00 00 00       	jmp    897 <wasm[0]::function[13]+0x3f7>
     88a:	49 89 da             	mov    %rbx,%r10
     88d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     892:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     897:	4c 89 d0             	mov    %r10,%rax
     89a:	d1 e0                	shl    $1,%eax
     89c:	4c 89 d3             	mov    %r10,%rbx
     89f:	8d 50 ff             	lea    -0x1(%rax),%edx
     8a2:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
     8a7:	41 3b cc             	cmp    %r12d,%ecx
     8aa:	0f 8d 0d 00 00 00    	jge    8bd <wasm[0]::function[13]+0x41d>
     8b0:	48 89 d6             	mov    %rdx,%rsi
     8b3:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
     8b8:	e9 5c 00 00 00       	jmp    919 <wasm[0]::function[13]+0x479>
     8bd:	8d 50 ff             	lea    -0x1(%rax),%edx
     8c0:	48 89 d6             	mov    %rdx,%rsi
     8c3:	41 3b cc             	cmp    %r12d,%ecx
     8c6:	0f 85 45 00 00 00    	jne    911 <wasm[0]::function[13]+0x471>
     8cc:	81 c0 ff ff ff ff    	add    $0xffffffff,%eax
     8d2:	99                   	cltd
     8d3:	45 85 e4             	test   %r12d,%r12d
     8d6:	0f 84 a4 08 00 00    	je     1180 <wasm[0]::function[13]+0xce0>
     8dc:	41 f7 fc             	idiv   %r12d
     8df:	99                   	cltd
     8e0:	48 89 c6             	mov    %rax,%rsi
     8e3:	41 83 fc ff          	cmp    $0xffffffff,%r12d
     8e7:	0f 85 0a 00 00 00    	jne    8f7 <wasm[0]::function[13]+0x457>
     8ed:	ba 00 00 00 00       	mov    $0x0,%edx
     8f2:	e9 03 00 00 00       	jmp    8fa <wasm[0]::function[13]+0x45a>
     8f7:	41 f7 fc             	idiv   %r12d
     8fa:	41 81 c5 01 00 00 00 	add    $0x1,%r13d
     901:	85 d2                	test   %edx,%edx
     903:	0f 85 08 00 00 00    	jne    911 <wasm[0]::function[13]+0x471>
     909:	48 89 f0             	mov    %rsi,%rax
     90c:	e9 c1 ff ff ff       	jmp    8d2 <wasm[0]::function[13]+0x432>
     911:	41 2b cc             	sub    %r12d,%ecx
     914:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
     919:	c5 e9 57 e2          	vxorpd %xmm2,%xmm2,%xmm4
     91d:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     922:	c5 db 2a f1          	vcvtsi2sd %ecx,%xmm4,%xmm6
     926:	c5 e9 57 e2          	vxorpd %xmm2,%xmm2,%xmm4
     92a:	c5 db 2a fe          	vcvtsi2sd %esi,%xmm4,%xmm7
     92e:	c5 cb 59 c7          	vmulsd %xmm7,%xmm6,%xmm0
     932:	48 8b 34 24          	mov    (%rsp),%rsi
     936:	48 8b 3c 24          	mov    (%rsp),%rdi
     93a:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     940:	e8 fb b4 00 00       	call   be40 <wasm[0]::function[62]>
     945:	48 ba ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rdx
     94c:	ff ff 7f
     94f:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
     954:	c5 f9 54 f4          	vandpd %xmm4,%xmm0,%xmm6
     958:	48 be 00 00 00 00 00 	movabs $0x41e0000000000000,%rsi
     95f:	00 e0 41
     962:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
     967:	c5 f9 2e ee          	vucomisd %xmm6,%xmm5
     96b:	40 0f 97 c6          	seta   %sil
     96f:	40 0f b6 f6          	movzbl %sil,%esi
     973:	85 f6                	test   %esi,%esi
     975:	0f 84 48 00 00 00    	je     9c3 <wasm[0]::function[13]+0x523>
     97b:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
     97f:	83 f9 01             	cmp    $0x1,%ecx
     982:	0f 81 31 00 00 00    	jno    9b9 <wasm[0]::function[13]+0x519>
     988:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     98c:	0f 8a f0 07 00 00    	jp     1182 <wasm[0]::function[13]+0xce2>
     992:	48 bf 00 00 20 00 00 	movabs $0xc1e0000000200000,%rdi
     999:	00 e0 c1
     99c:	66 48 0f 6e f7       	movq   %rdi,%xmm6
     9a1:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
     9a5:	0f 86 d9 07 00 00    	jbe    1184 <wasm[0]::function[13]+0xce4>
     9ab:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
     9af:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
     9b3:	0f 82 cd 07 00 00    	jb     1186 <wasm[0]::function[13]+0xce6>
     9b9:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
     9be:	e9 0a 00 00 00       	jmp    9cd <wasm[0]::function[13]+0x52d>
     9c3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     9c8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     9cd:	45 85 ed             	test   %r13d,%r13d
     9d0:	0f 8f 0d 00 00 00    	jg     9e3 <wasm[0]::function[13]+0x543>
     9d6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
     9db:	49 89 de             	mov    %rbx,%r14
     9de:	e9 ae 02 00 00       	jmp    c91 <wasm[0]::function[13]+0x7f1>
     9e3:	33 c9                	xor    %ecx,%ecx
     9e5:	b8 01 00 00 00       	mov    $0x1,%eax
     9ea:	48 89 c7             	mov    %rax,%rdi
     9ed:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     9f2:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
     9f7:	99                   	cltd
     9f8:	45 85 c0             	test   %r8d,%r8d
     9fb:	0f 84 87 07 00 00    	je     1188 <wasm[0]::function[13]+0xce8>
     a01:	48 89 c6             	mov    %rax,%rsi
     a04:	41 f7 f8             	idiv   %r8d
     a07:	48 89 c2             	mov    %rax,%rdx
     a0a:	41 0f af d0          	imul   %r8d,%edx
     a0e:	2b f2                	sub    %edx,%esi
     a10:	0f af c7             	imul   %edi,%eax
     a13:	2b c8                	sub    %eax,%ecx
     a15:	85 f6                	test   %esi,%esi
     a17:	0f 84 14 00 00 00    	je     a31 <wasm[0]::function[13]+0x591>
     a1d:	48 89 ca             	mov    %rcx,%rdx
     a20:	48 89 f9             	mov    %rdi,%rcx
     a23:	48 89 d7             	mov    %rdx,%rdi
     a26:	4c 89 c0             	mov    %r8,%rax
     a29:	49 89 f0             	mov    %rsi,%r8
     a2c:	e9 c6 ff ff ff       	jmp    9f7 <wasm[0]::function[13]+0x557>
     a31:	48 89 f8             	mov    %rdi,%rax
     a34:	99                   	cltd
     a35:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
     a3a:	83 ff ff             	cmp    $0xffffffff,%edi
     a3d:	0f 85 0a 00 00 00    	jne    a4d <wasm[0]::function[13]+0x5ad>
     a43:	ba 00 00 00 00       	mov    $0x0,%edx
     a48:	e9 02 00 00 00       	jmp    a4f <wasm[0]::function[13]+0x5af>
     a4d:	f7 ff                	idiv   %edi
     a4f:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     a53:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
     a58:	c5 fb 2a c1          	vcvtsi2sd %ecx,%xmm0,%xmm0
     a5c:	48 89 d0             	mov    %rdx,%rax
     a5f:	c1 f8 1f             	sar    $0x1f,%eax
     a62:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
     a67:	23 c1                	and    %ecx,%eax
     a69:	03 c2                	add    %edx,%eax
     a6b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     a6f:	c5 f3 2a c8          	vcvtsi2sd %eax,%xmm1,%xmm1
     a73:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     a77:	48 8b 34 24          	mov    (%rsp),%rsi
     a7b:	48 8b 3c 24          	mov    (%rsp),%rdi
     a7f:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     a85:	e8 b6 b3 00 00       	call   be40 <wasm[0]::function[62]>
     a8a:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     a91:	ff ff 7f
     a94:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     a99:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     a9d:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     aa4:	00 e0 41
     aa7:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     aac:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     ab0:	0f 97 c0             	seta   %al
     ab3:	0f b6 c0             	movzbl %al,%eax
     ab6:	85 c0                	test   %eax,%eax
     ab8:	0f 84 43 00 00 00    	je     b01 <wasm[0]::function[13]+0x661>
     abe:	f2 0f 2c f0          	cvttsd2si %xmm0,%esi
     ac2:	83 fe 01             	cmp    $0x1,%esi
     ac5:	0f 81 3b 00 00 00    	jno    b06 <wasm[0]::function[13]+0x666>
     acb:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     acf:	0f 8a b5 06 00 00    	jp     118a <wasm[0]::function[13]+0xcea>
     ad5:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     adc:	00 e0 c1
     adf:	66 48 0f 6e c8       	movq   %rax,%xmm1
     ae4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     ae8:	0f 86 9e 06 00 00    	jbe    118c <wasm[0]::function[13]+0xcec>
     aee:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     af2:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     af6:	0f 82 92 06 00 00    	jb     118e <wasm[0]::function[13]+0xcee>
     afc:	e9 05 00 00 00       	jmp    b06 <wasm[0]::function[13]+0x666>
     b01:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
     b06:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     b0a:	49 89 de             	mov    %rbx,%r14
     b0d:	c4 c1 7b 2a c6       	vcvtsi2sd %r14d,%xmm0,%xmm0
     b12:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     b16:	c5 f3 2a ce          	vcvtsi2sd %esi,%xmm1,%xmm1
     b1a:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     b1e:	48 8b 34 24          	mov    (%rsp),%rsi
     b22:	48 8b 3c 24          	mov    (%rsp),%rdi
     b26:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     b2c:	e8 0f b3 00 00       	call   be40 <wasm[0]::function[62]>
     b31:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     b38:	ff ff 7f
     b3b:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     b40:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     b44:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     b4b:	00 e0 41
     b4e:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     b53:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     b57:	0f 97 c0             	seta   %al
     b5a:	0f b6 c0             	movzbl %al,%eax
     b5d:	85 c0                	test   %eax,%eax
     b5f:	0f 84 48 00 00 00    	je     bad <wasm[0]::function[13]+0x70d>
     b65:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     b69:	83 f8 01             	cmp    $0x1,%eax
     b6c:	0f 81 31 00 00 00    	jno    ba3 <wasm[0]::function[13]+0x703>
     b72:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     b76:	0f 8a 14 06 00 00    	jp     1190 <wasm[0]::function[13]+0xcf0>
     b7c:	48 b9 00 00 20 00 00 	movabs $0xc1e0000000200000,%rcx
     b83:	00 e0 c1
     b86:	66 48 0f 6e c9       	movq   %rcx,%xmm1
     b8b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     b8f:	0f 86 fd 05 00 00    	jbe    1192 <wasm[0]::function[13]+0xcf2>
     b95:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     b99:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     b9d:	0f 82 f1 05 00 00    	jb     1194 <wasm[0]::function[13]+0xcf4>
     ba3:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
     ba8:	e9 0a 00 00 00       	jmp    bb7 <wasm[0]::function[13]+0x717>
     bad:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     bb2:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
     bb7:	44 3b eb             	cmp    %ebx,%r13d
     bba:	0f 8d b7 00 00 00    	jge    c77 <wasm[0]::function[13]+0x7d7>
     bc0:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
     bc5:	41 2b dd             	sub    %r13d,%ebx
     bc8:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     bcc:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
     bd0:	f3 0f 6f 4c 24 70    	movdqu 0x70(%rsp),%xmm1
     bd6:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
     bda:	48 8b 34 24          	mov    (%rsp),%rsi
     bde:	48 8b 3c 24          	mov    (%rsp),%rdi
     be2:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     be8:	e8 53 b2 00 00       	call   be40 <wasm[0]::function[62]>
     bed:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     bf4:	ff ff 7f
     bf7:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     bfc:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     c00:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     c07:	00 e0 41
     c0a:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     c0f:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     c13:	0f 97 c0             	seta   %al
     c16:	0f b6 c0             	movzbl %al,%eax
     c19:	85 c0                	test   %eax,%eax
     c1b:	0f 84 43 00 00 00    	je     c64 <wasm[0]::function[13]+0x7c4>
     c21:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     c25:	83 f8 01             	cmp    $0x1,%eax
     c28:	0f 81 3b 00 00 00    	jno    c69 <wasm[0]::function[13]+0x7c9>
     c2e:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     c32:	0f 8a 5e 05 00 00    	jp     1196 <wasm[0]::function[13]+0xcf6>
     c38:	48 b9 00 00 20 00 00 	movabs $0xc1e0000000200000,%rcx
     c3f:	00 e0 c1
     c42:	66 48 0f 6e c9       	movq   %rcx,%xmm1
     c47:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     c4b:	0f 86 47 05 00 00    	jbe    1198 <wasm[0]::function[13]+0xcf8>
     c51:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     c55:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     c59:	0f 82 3b 05 00 00    	jb     119a <wasm[0]::function[13]+0xcfa>
     c5f:	e9 05 00 00 00       	jmp    c69 <wasm[0]::function[13]+0x7c9>
     c64:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     c69:	81 c3 ff ff ff ff    	add    $0xffffffff,%ebx
     c6f:	85 db                	test   %ebx,%ebx
     c71:	0f 85 51 ff ff ff    	jne    bc8 <wasm[0]::function[13]+0x728>
     c77:	44 03 f8             	add    %eax,%r15d
     c7a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     c7f:	44 3b f8             	cmp    %eax,%r15d
     c82:	0f 4c 05 57 05 00 00 	cmovl  0x557(%rip),%eax        # 11e0 <wasm[0]::function[13]+0xd40>
     c89:	44 2b f8             	sub    %eax,%r15d
     c8c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
     c91:	81 c0 01 00 00 00    	add    $0x1,%eax
     c97:	41 8d 4e 01          	lea    0x1(%r14),%ecx
     c9b:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
     ca0:	81 c2 02 00 00 00    	add    $0x2,%edx
     ca6:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
     cab:	44 3b f6             	cmp    %esi,%r14d
     cae:	0f 84 12 00 00 00    	je     cc6 <wasm[0]::function[13]+0x826>
     cb4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     cb9:	48 89 cb             	mov    %rcx,%rbx
     cbc:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
     cc1:	e9 b8 fa ff ff       	jmp    77e <wasm[0]::function[13]+0x2de>
     cc6:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
     ccd:	00
     cce:	44 8d 73 ff          	lea    -0x1(%rbx),%r14d
     cd2:	41 bd 01 00 00 00    	mov    $0x1,%r13d
     cd8:	bb 0a 00 00 00       	mov    $0xa,%ebx
     cdd:	41 f7 c6 01 00 00 00 	test   $0x1,%r14d
     ce4:	0f 84 a6 00 00 00    	je     d90 <wasm[0]::function[13]+0x8f0>
     cea:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     cee:	c4 c1 7b 2a c5       	vcvtsi2sd %r13d,%xmm0,%xmm0
     cf3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     cf7:	c5 f3 2a cb          	vcvtsi2sd %ebx,%xmm1,%xmm1
     cfb:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     cff:	48 8b 34 24          	mov    (%rsp),%rsi
     d03:	48 8b 3c 24          	mov    (%rsp),%rdi
     d07:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     d0d:	e8 2e b1 00 00       	call   be40 <wasm[0]::function[62]>
     d12:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     d19:	ff ff 7f
     d1c:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     d21:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     d25:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     d2c:	00 e0 41
     d2f:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     d34:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     d38:	0f 97 c0             	seta   %al
     d3b:	0f b6 c0             	movzbl %al,%eax
     d3e:	85 c0                	test   %eax,%eax
     d40:	0f 84 45 00 00 00    	je     d8b <wasm[0]::function[13]+0x8eb>
     d46:	f2 44 0f 2c e8       	cvttsd2si %xmm0,%r13d
     d4b:	41 83 fd 01          	cmp    $0x1,%r13d
     d4f:	0f 81 3b 00 00 00    	jno    d90 <wasm[0]::function[13]+0x8f0>
     d55:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     d59:	0f 8a 3d 04 00 00    	jp     119c <wasm[0]::function[13]+0xcfc>
     d5f:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     d66:	00 e0 c1
     d69:	66 48 0f 6e c8       	movq   %rax,%xmm1
     d6e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     d72:	0f 86 26 04 00 00    	jbe    119e <wasm[0]::function[13]+0xcfe>
     d78:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     d7c:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     d80:	0f 82 1a 04 00 00    	jb     11a0 <wasm[0]::function[13]+0xd00>
     d86:	e9 05 00 00 00       	jmp    d90 <wasm[0]::function[13]+0x8f0>
     d8b:	4c 8b 6c 24 58       	mov    0x58(%rsp),%r13
     d90:	41 d1 fe             	sar    $1,%r14d
     d93:	45 85 f6             	test   %r14d,%r14d
     d96:	0f 84 a0 00 00 00    	je     e3c <wasm[0]::function[13]+0x99c>
     d9c:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     da0:	c5 fb 2a c3          	vcvtsi2sd %ebx,%xmm0,%xmm0
     da4:	c5 fb 59 c0          	vmulsd %xmm0,%xmm0,%xmm0
     da8:	48 8b 34 24          	mov    (%rsp),%rsi
     dac:	48 8b 3c 24          	mov    (%rsp),%rdi
     db0:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     db6:	e8 85 b0 00 00       	call   be40 <wasm[0]::function[62]>
     dbb:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     dc2:	ff ff 7f
     dc5:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     dca:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     dce:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     dd5:	00 e0 41
     dd8:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     ddd:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     de1:	0f 97 c0             	seta   %al
     de4:	0f b6 c0             	movzbl %al,%eax
     de7:	85 c0                	test   %eax,%eax
     de9:	0f 84 43 00 00 00    	je     e32 <wasm[0]::function[13]+0x992>
     def:	f2 0f 2c d8          	cvttsd2si %xmm0,%ebx
     df3:	83 fb 01             	cmp    $0x1,%ebx
     df6:	0f 81 e1 fe ff ff    	jno    cdd <wasm[0]::function[13]+0x83d>
     dfc:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     e00:	0f 8a 9c 03 00 00    	jp     11a2 <wasm[0]::function[13]+0xd02>
     e06:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
     e0d:	00 e0 c1
     e10:	66 48 0f 6e c8       	movq   %rax,%xmm1
     e15:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     e19:	0f 86 85 03 00 00    	jbe    11a4 <wasm[0]::function[13]+0xd04>
     e1f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     e23:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     e27:	0f 82 79 03 00 00    	jb     11a6 <wasm[0]::function[13]+0xd06>
     e2d:	e9 ab fe ff ff       	jmp    cdd <wasm[0]::function[13]+0x83d>
     e32:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
     e37:	e9 a1 fe ff ff       	jmp    cdd <wasm[0]::function[13]+0x83d>
     e3c:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     e40:	c4 c1 7b 2a c7       	vcvtsi2sd %r15d,%xmm0,%xmm0
     e45:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     e49:	c4 c1 73 2a cd       	vcvtsi2sd %r13d,%xmm1,%xmm1
     e4e:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     e52:	48 8b 34 24          	mov    (%rsp),%rsi
     e56:	48 8b 3c 24          	mov    (%rsp),%rdi
     e5a:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     e60:	e8 db af 00 00       	call   be40 <wasm[0]::function[62]>
     e65:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
     e6c:	ff ff 7f
     e6f:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     e74:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
     e78:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
     e7f:	00 e0 41
     e82:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
     e87:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
     e8b:	0f 97 c0             	seta   %al
     e8e:	0f b6 c0             	movzbl %al,%eax
     e91:	85 c0                	test   %eax,%eax
     e93:	0f 84 43 00 00 00    	je     edc <wasm[0]::function[13]+0xa3c>
     e99:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     e9d:	83 f8 01             	cmp    $0x1,%eax
     ea0:	0f 81 3b 00 00 00    	jno    ee1 <wasm[0]::function[13]+0xa41>
     ea6:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     eaa:	0f 8a f8 02 00 00    	jp     11a8 <wasm[0]::function[13]+0xd08>
     eb0:	48 b9 00 00 20 00 00 	movabs $0xc1e0000000200000,%rcx
     eb7:	00 e0 c1
     eba:	66 48 0f 6e c9       	movq   %rcx,%xmm1
     ebf:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     ec3:	0f 86 e1 02 00 00    	jbe    11aa <wasm[0]::function[13]+0xd0a>
     ec9:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     ecd:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
     ed1:	0f 82 d5 02 00 00    	jb     11ac <wasm[0]::function[13]+0xd0c>
     ed7:	e9 05 00 00 00       	jmp    ee1 <wasm[0]::function[13]+0xa41>
     edc:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     ee1:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     ee5:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
     ee9:	f3 0f 6f 4c 24 60    	movdqu 0x60(%rsp),%xmm1
     eef:	c5 fb 5e c9          	vdivsd %xmm1,%xmm0,%xmm1
     ef3:	f3 0f 6f 44 24 40    	movdqu 0x40(%rsp),%xmm0
     ef9:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
     efd:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
     f04:	00 f0 3f
     f07:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     f0c:	48 8b 34 24          	mov    (%rsp),%rsi
     f10:	48 8b 3c 24          	mov    (%rsp),%rdi
     f14:	e8 27 af 00 00       	call   be40 <wasm[0]::function[62]>
     f19:	41 8d 44 24 01       	lea    0x1(%r12),%eax
     f1e:	a9 01 00 00 00       	test   $0x1,%eax
     f23:	0f 85 08 00 00 00    	jne    f31 <wasm[0]::function[13]+0xa91>
     f29:	49 89 c4             	mov    %rax,%r12
     f2c:	e9 e8 ff ff ff       	jmp    f19 <wasm[0]::function[13]+0xa79>
     f31:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     f35:	c5 f3 2a c8          	vcvtsi2sd %eax,%xmm1,%xmm1
     f39:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
     f3d:	c5 eb 51 c9          	vsqrtsd %xmm1,%xmm2,%xmm1
     f41:	48 b9 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rcx
     f48:	ff ff 7f
     f4b:	c4 e1 f9 6e d1       	vmovq  %rcx,%xmm2
     f50:	c5 f1 54 d2          	vandpd %xmm2,%xmm1,%xmm2
     f54:	48 b9 00 00 00 00 00 	movabs $0x41e0000000000000,%rcx
     f5b:	00 e0 41
     f5e:	c4 e1 f9 6e d9       	vmovq  %rcx,%xmm3
     f63:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
     f67:	0f 97 c1             	seta   %cl
     f6a:	0f b6 c9             	movzbl %cl,%ecx
     f6d:	85 c9                	test   %ecx,%ecx
     f6f:	0f 84 43 00 00 00    	je     fb8 <wasm[0]::function[13]+0xb18>
     f75:	f2 0f 2c c9          	cvttsd2si %xmm1,%ecx
     f79:	83 f9 01             	cmp    $0x1,%ecx
     f7c:	0f 81 3b 00 00 00    	jno    fbd <wasm[0]::function[13]+0xb1d>
     f82:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
     f86:	0f 8a 22 02 00 00    	jp     11ae <wasm[0]::function[13]+0xd0e>
     f8c:	48 ba 00 00 20 00 00 	movabs $0xc1e0000000200000,%rdx
     f93:	00 e0 c1
     f96:	66 48 0f 6e d2       	movq   %rdx,%xmm2
     f9b:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
     f9f:	0f 86 0b 02 00 00    	jbe    11b0 <wasm[0]::function[13]+0xd10>
     fa5:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
     fa9:	66 0f 2e d1          	ucomisd %xmm1,%xmm2
     fad:	0f 82 ff 01 00 00    	jb     11b2 <wasm[0]::function[13]+0xd12>
     fb3:	e9 05 00 00 00       	jmp    fbd <wasm[0]::function[13]+0xb1d>
     fb8:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
     fbd:	83 f9 03             	cmp    $0x3,%ecx
     fc0:	0f 8d 08 00 00 00    	jge    fce <wasm[0]::function[13]+0xb2e>
     fc6:	48 89 c7             	mov    %rax,%rdi
     fc9:	e9 44 00 00 00       	jmp    1012 <wasm[0]::function[13]+0xb72>
     fce:	be 03 00 00 00       	mov    $0x3,%esi
     fd3:	99                   	cltd
     fd4:	48 89 c7             	mov    %rax,%rdi
     fd7:	83 fe ff             	cmp    $0xffffffff,%esi
     fda:	0f 85 0a 00 00 00    	jne    fea <wasm[0]::function[13]+0xb4a>
     fe0:	ba 00 00 00 00       	mov    $0x0,%edx
     fe5:	e9 02 00 00 00       	jmp    fec <wasm[0]::function[13]+0xb4c>
     fea:	f7 fe                	idiv   %esi
     fec:	85 d2                	test   %edx,%edx
     fee:	0f 85 08 00 00 00    	jne    ffc <wasm[0]::function[13]+0xb5c>
     ff4:	49 89 fc             	mov    %rdi,%r12
     ff7:	e9 1d ff ff ff       	jmp    f19 <wasm[0]::function[13]+0xa79>
     ffc:	81 c6 02 00 00 00    	add    $0x2,%esi
    1002:	3b f1                	cmp    %ecx,%esi
    1004:	0f 8f 08 00 00 00    	jg     1012 <wasm[0]::function[13]+0xb72>
    100a:	48 89 f8             	mov    %rdi,%rax
    100d:	e9 c1 ff ff ff       	jmp    fd3 <wasm[0]::function[13]+0xb33>
    1012:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    1019:	00
    101a:	44 3b e0             	cmp    %eax,%r12d
    101d:	0f 8d 16 00 00 00    	jge    1039 <wasm[0]::function[13]+0xb99>
    1023:	49 89 fc             	mov    %rdi,%r12
    1026:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    102d:	00
    102e:	f3 0f 7f 44 24 40    	movdqu %xmm0,0x40(%rsp)
    1034:	e9 0d f6 ff ff       	jmp    646 <wasm[0]::function[13]+0x1a6>
    1039:	c5 fb 59 05 af 01 00 	vmulsd 0x1af(%rip),%xmm0,%xmm0        # 11f0 <wasm[0]::function[13]+0xd50>
    1040:	00
    1041:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    1048:	ff ff 7f
    104b:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
    1050:	c5 f9 54 c9          	vandpd %xmm1,%xmm0,%xmm1
    1054:	48 b8 00 00 00 00 00 	movabs $0x41e0000000000000,%rax
    105b:	00 e0 41
    105e:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
    1063:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
    1067:	0f 97 c0             	seta   %al
    106a:	0f b6 c0             	movzbl %al,%eax
    106d:	85 c0                	test   %eax,%eax
    106f:	0f 84 52 00 00 00    	je     10c7 <wasm[0]::function[13]+0xc27>
    1075:	f2 44 0f 2c f0       	cvttsd2si %xmm0,%r14d
    107a:	41 83 fe 01          	cmp    $0x1,%r14d
    107e:	0f 81 31 00 00 00    	jno    10b5 <wasm[0]::function[13]+0xc15>
    1084:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
    1088:	0f 8a 26 01 00 00    	jp     11b4 <wasm[0]::function[13]+0xd14>
    108e:	48 b8 00 00 20 00 00 	movabs $0xc1e0000000200000,%rax
    1095:	00 e0 c1
    1098:	66 48 0f 6e c8       	movq   %rax,%xmm1
    109d:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    10a1:	0f 86 0f 01 00 00    	jbe    11b6 <wasm[0]::function[13]+0xd16>
    10a7:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    10ab:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    10af:	0f 82 03 01 00 00    	jb     11b8 <wasm[0]::function[13]+0xd18>
    10b5:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
    10ba:	4c 8b a4 24 a8 00 00 	mov    0xa8(%rsp),%r12
    10c1:	00
    10c2:	e9 08 00 00 00       	jmp    10cf <wasm[0]::function[13]+0xc2f>
    10c7:	4c 8b a4 24 a8 00 00 	mov    0xa8(%rsp),%r12
    10ce:	00
    10cf:	4c 89 e1             	mov    %r12,%rcx
    10d2:	83 e9 10             	sub    $0x10,%ecx
    10d5:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    10dc:	00
    10dd:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    10e2:	44 89 74 0e 04       	mov    %r14d,0x4(%rsi,%rcx,1)
    10e7:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
    10ee:	00
    10ef:	89 1c 0e             	mov    %ebx,(%rsi,%rcx,1)
    10f2:	ba 00 04 00 00       	mov    $0x400,%edx
    10f7:	48 8b 34 24          	mov    (%rsp),%rsi
    10fb:	48 8b 3c 24          	mov    (%rsp),%rdi
    10ff:	e8 3c 2f 00 00       	call   4040 <wasm[0]::function[29]>
    1104:	48 8b 04 24          	mov    (%rsp),%rax
    1108:	44 89 a0 c0 01 00 00 	mov    %r12d,0x1c0(%rax)
    110f:	33 c0                	xor    %eax,%eax
    1111:	48 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%rbx
    1118:	00
    1119:	4c 8b a4 24 b8 00 00 	mov    0xb8(%rsp),%r12
    1120:	00
    1121:	4c 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%r13
    1128:	00
    1129:	4c 8b b4 24 c8 00 00 	mov    0xc8(%rsp),%r14
    1130:	00
    1131:	4c 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%r15
    1138:	00
    1139:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
    1140:	48 89 ec             	mov    %rbp,%rsp
    1143:	5d                   	pop    %rbp
    1144:	c3                   	ret
    1145:	ba 2b 04 00 00       	mov    $0x42b,%edx
    114a:	48 8b 34 24          	mov    (%rsp),%rsi
    114e:	48 8b 3c 24          	mov    (%rsp),%rdi
    1152:	e8 49 96 00 00       	call   a7a0 <wasm[0]::function[45]>
    1157:	ba 01 00 00 00       	mov    $0x1,%edx
    115c:	48 8b 34 24          	mov    (%rsp),%rsi
    1160:	48 89 f7             	mov    %rsi,%rdi
    1163:	e8 78 2e 00 00       	call   3fe0 <wasm[0]::function[28]>
    1168:	0f 0b                	ud2
    116a:	0f 0b                	ud2
    116c:	0f 0b                	ud2
    116e:	0f 0b                	ud2
    1170:	0f 0b                	ud2
    1172:	0f 0b                	ud2
    1174:	0f 0b                	ud2
    1176:	0f 0b                	ud2
    1178:	0f 0b                	ud2
    117a:	0f 0b                	ud2
    117c:	0f 0b                	ud2
    117e:	0f 0b                	ud2
    1180:	0f 0b                	ud2
    1182:	0f 0b                	ud2
    1184:	0f 0b                	ud2
    1186:	0f 0b                	ud2
    1188:	0f 0b                	ud2
    118a:	0f 0b                	ud2
    118c:	0f 0b                	ud2
    118e:	0f 0b                	ud2
    1190:	0f 0b                	ud2
    1192:	0f 0b                	ud2
    1194:	0f 0b                	ud2
    1196:	0f 0b                	ud2
    1198:	0f 0b                	ud2
    119a:	0f 0b                	ud2
    119c:	0f 0b                	ud2
    119e:	0f 0b                	ud2
    11a0:	0f 0b                	ud2
    11a2:	0f 0b                	ud2
    11a4:	0f 0b                	ud2
    11a6:	0f 0b                	ud2
    11a8:	0f 0b                	ud2
    11aa:	0f 0b                	ud2
    11ac:	0f 0b                	ud2
    11ae:	0f 0b                	ud2
    11b0:	0f 0b                	ud2
    11b2:	0f 0b                	ud2
    11b4:	0f 0b                	ud2
    11b6:	0f 0b                	ud2
    11b8:	0f 0b                	ud2
    11ba:	00 00                	add    %al,(%rax)
    11bc:	00 00                	add    %al,(%rax)
    11be:	00 00                	add    %al,(%rax)
    11c0:	16                   	(bad)
    11c1:	55                   	push   %rbp
    11c2:	b5 bb                	mov    $0xbb,%ch
    11c4:	b1 6b                	mov    $0x6b,%cl
    11c6:	02 40 00             	add    0x0(%rax),%al
    11c9:	00 00                	add    %al,(%rax)
    11cb:	00 00                	add    %al,(%rax)
    11cd:	00 00                	add    %al,(%rax)
    11cf:	00 ef                	add    %ch,%bh
    11d1:	39 fa                	cmp    %edi,%edx
    11d3:	fe 42 2e             	incb   0x2e(%rdx)
    11d6:	e6 3f                	out    %al,$0x3f
	...
    11f4:	65 cd cd             	gs int $0xcd
    11f7:	41 00 00             	add    %al,(%r8)
    11fa:	00 00                	add    %al,(%rax)
    11fc:	00 00                	add    %al,(%rax)
	...
