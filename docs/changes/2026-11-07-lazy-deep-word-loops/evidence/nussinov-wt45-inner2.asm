 300:	43 8d 0c 3c          	lea    (%r12,%r15,1),%ecx
 304:	48 89 c8             	mov    %rcx,%rax
 307:	f7 2d 6b 01 00 00    	imull  0x16b(%rip)        # 0x478
 30d:	c1 fa 03             	sar    $0x3,%edx
 310:	48 89 d0             	mov    %rdx,%rax
 313:	c1 e8 1f             	shr    $0x1f,%eax
 316:	03 c2                	add    %edx,%eax
 318:	6b c0 14             	imul   $0x14,%eax,%eax
 31b:	2b c8                	sub    %eax,%ecx
 31d:	85 c9                	test   %ecx,%ecx
 31f:	0f 85 17 00 00 00    	jne    0x33c
 325:	ba 0a 00 00 00       	mov    $0xa,%edx
 32a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 32f:	48 8b 34 24          	mov    (%rsp),%rsi
 333:	48 8b 3c 24          	mov    (%rsp),%rdi
 337:	e8 84 4a 00 00       	call   0x4dc0
 33c:	41 8b c5             	mov    %r13d,%eax
 33f:	41 8b 0c 06          	mov    (%r14,%rax,1),%ecx
 343:	41 89 4c 1e 10       	mov    %ecx,0x10(%r14,%rbx,1)
 348:	b9 2c 04 00 00       	mov    $0x42c,%ecx
 34d:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 352:	44 8d 40 e0          	lea    -0x20(%rax),%r8d
 356:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 35b:	48 8b 34 24          	mov    (%rsp),%rsi
 35f:	48 8b 3c 24          	mov    (%rsp),%rdi
 363:	e8 d8 a8 00 00       	call   0xac40
 368:	41 81 c7 01 00 00 00 	add    $0x1,%r15d
 36f:	41 81 c5 04 00 00 00 	add    $0x4,%r13d
 376:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
 37b:	45 3b c7             	cmp    %r15d,%r8d
 37e:	0f 84 0a 00 00 00    	je     0x38e
 384:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
 389:	e9 72 ff ff ff       	jmp    0x300
