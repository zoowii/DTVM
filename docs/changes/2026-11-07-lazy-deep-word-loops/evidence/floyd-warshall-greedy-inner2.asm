 290:	89 d9                	mov    %ebx,%ecx
 292:	48 ba cd cc cc cc 00 	movabs $0xcccccccd,%rdx
 299:	00 00 00 
 29c:	48 0f af ca          	imul   %rdx,%rcx
 2a0:	48 c1 e9 24          	shr    $0x24,%rcx
 2a4:	89 c9                	mov    %ecx,%ecx
 2a6:	6b c9 14             	imul   $0x14,%ecx,%ecx
 2a9:	44 89 ea             	mov    %r13d,%edx
 2ac:	01 ca                	add    %ecx,%edx
 2ae:	85 d2                	test   %edx,%edx
 2b0:	75 20                	jne    0x2d2
 2b2:	be 0a 00 00 00       	mov    $0xa,%esi
 2b7:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
 2bb:	4c 89 e7             	mov    %r12,%rdi
 2be:	44 89 f2             	mov    %r14d,%edx
 2c1:	e8 66 1e ff ff       	call   0xffffffffffff212c
 2c6:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 2ca:	49 8b 84 24 b8 11 00 	mov    0x11b8(%r12),%rax
 2d2:	89 f1                	mov    %esi,%ecx
 2d4:	44 01 f9             	add    %r15d,%ecx
 2d7:	8b 0c 08             	mov    (%rax,%rcx,1),%ecx
 2da:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 2de:	48 89 d6             	mov    %rdx,%rsi
 2e1:	89 4c 30 10          	mov    %ecx,0x10(%rax,%rsi,1)
 2e5:	ba 2b 04 00 00       	mov    $0x42b,%edx
 2ea:	8d 4e 10             	lea    0x10(%rsi),%ecx
 2ed:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
 2f1:	4c 89 e7             	mov    %r12,%rdi
 2f4:	44 89 f6             	mov    %r14d,%esi
 2f7:	e8 76 1e ff ff       	call   0xffffffffffff2172
 2fc:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 300:	49 8b 84 24 b8 11 00 	mov    0x11b8(%r12),%rax
 308:	8d 5b 01             	lea    0x1(%rbx),%ebx
 30b:	45 8d 6d ff          	lea    -0x1(%r13),%r13d
 30f:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 313:	41 81 ff c0 2b 00 00 	cmp    $0x2bc0,%r15d
 31a:	0f 85 70 ff ff ff    	jne    0x290
