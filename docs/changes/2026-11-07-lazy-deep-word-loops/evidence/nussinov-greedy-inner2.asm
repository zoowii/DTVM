 2d0:	89 f8                	mov    %edi,%eax
 2d2:	44 01 f0             	add    %r14d,%eax
 2d5:	be 14 00 00 00       	mov    $0x14,%esi
 2da:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 2df:	75 07                	jne    0x2e8
 2e1:	31 d2                	xor    %edx,%edx
 2e3:	83 fe ff             	cmp    $0xffffffff,%esi
 2e6:	74 03                	je     0x2eb
 2e8:	99                   	cltd
 2e9:	f7 fe                	idiv   %esi
 2eb:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
 2ef:	85 d2                	test   %edx,%edx
 2f1:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
 2f5:	75 1f                	jne    0x316
 2f7:	be 0a 00 00 00       	mov    $0xa,%esi
 2fc:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 300:	48 89 df             	mov    %rbx,%rdi
 303:	44 89 c2             	mov    %r8d,%edx
 306:	e8 21 1e ff ff       	call   0xffffffffffff212c
 30b:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
 30f:	48 8b 8b b8 11 00 00 	mov    0x11b8(%rbx),%rcx
 316:	42 8b 04 39          	mov    (%rcx,%r15,1),%eax
 31a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 31e:	48 89 d6             	mov    %rdx,%rsi
 321:	89 44 31 10          	mov    %eax,0x10(%rcx,%rsi,1)
 325:	ba 2c 04 00 00       	mov    $0x42c,%edx
 32a:	8d 4e 10             	lea    0x10(%rsi),%ecx
 32d:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 331:	48 89 df             	mov    %rbx,%rdi
 334:	44 89 c6             	mov    %r8d,%esi
 337:	e8 36 1e ff ff       	call   0xffffffffffff2172
 33c:	48 8b 8b b8 11 00 00 	mov    0x11b8(%rbx),%rcx
 343:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 347:	45 8d 76 01          	lea    0x1(%r14),%r14d
 34b:	45 39 f5             	cmp    %r14d,%r13d
 34e:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
 352:	0f 85 78 ff ff ff    	jne    0x2d0
