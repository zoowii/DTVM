 2a5:	c4 e2 73 f6 0d 7a 01 	mulx   0x17a(%rip),%ecx,%ecx        # 0x428
 2ac:	00 00 
 2ae:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 2b3:	c1 e9 04             	shr    $0x4,%ecx
 2b6:	6b c9 14             	imul   $0x14,%ecx,%ecx
 2b9:	41 03 cc             	add    %r12d,%ecx
 2bc:	85 c9                	test   %ecx,%ecx
 2be:	0f 85 17 00 00 00    	jne    0x2db
 2c4:	ba 0a 00 00 00       	mov    $0xa,%edx
 2c9:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 2ce:	48 8b 34 24          	mov    (%rsp),%rsi
 2d2:	48 8b 3c 24          	mov    (%rsp),%rdi
 2d6:	e8 a5 4a 00 00       	call   0x4d80
 2db:	43 8d 04 2f          	lea    (%r15,%r13,1),%eax
 2df:	41 8b 04 06          	mov    (%r14,%rax,1),%eax
 2e3:	41 89 44 1e 10       	mov    %eax,0x10(%r14,%rbx,1)
 2e8:	b9 2b 04 00 00       	mov    $0x42b,%ecx
 2ed:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 2f2:	44 8d 40 e0          	lea    -0x20(%rax),%r8d
 2f6:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 2fb:	48 8b 34 24          	mov    (%rsp),%rsi
 2ff:	48 8b 3c 24          	mov    (%rsp),%rdi
 303:	e8 f8 a8 00 00       	call   0xac00
 308:	41 81 c4 ff ff ff ff 	add    $0xffffffff,%r12d
 30f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 314:	81 c2 01 00 00 00    	add    $0x1,%edx
 31a:	41 8d 4d 04          	lea    0x4(%r13),%ecx
 31e:	41 81 fd bc 2b 00 00 	cmp    $0x2bbc,%r13d
 325:	0f 84 08 00 00 00    	je     0x333
 32b:	49 89 cd             	mov    %rcx,%r13
 32e:	e9 72 ff ff ff       	jmp    0x2a5
