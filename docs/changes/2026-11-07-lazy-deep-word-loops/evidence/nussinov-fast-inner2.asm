 3c7:	8b 4d f4             	mov    -0xc(%rbp),%ecx
 3ca:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 3cd:	01 c8                	add    %ecx,%eax
 3cf:	89 45 8c             	mov    %eax,-0x74(%rbp)
 3d2:	b9 14 00 00 00       	mov    $0x14,%ecx
 3d7:	89 4d 90             	mov    %ecx,-0x70(%rbp)
 3da:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 3df:	75 0d                	jne    0x3ee
 3e1:	8b 45 90             	mov    -0x70(%rbp),%eax
 3e4:	31 d2                	xor    %edx,%edx
 3e6:	89 55 88             	mov    %edx,-0x78(%rbp)
 3e9:	83 f8 ff             	cmp    $0xffffffff,%eax
 3ec:	74 0c                	je     0x3fa
 3ee:	8b 4d 90             	mov    -0x70(%rbp),%ecx
 3f1:	8b 45 8c             	mov    -0x74(%rbp),%eax
 3f4:	99                   	cltd
 3f5:	f7 f9                	idiv   %ecx
 3f7:	89 55 88             	mov    %edx,-0x78(%rbp)
 3fa:	8b 45 88             	mov    -0x78(%rbp),%eax
 3fd:	85 c0                	test   %eax,%eax
 3ff:	75 22                	jne    0x423
 401:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 405:	8b 55 a8             	mov    -0x58(%rbp),%edx
 408:	be 0a 00 00 00       	mov    $0xa,%esi
 40d:	e8 1a 1d ff ff       	call   0xffffffffffff212c
 412:	89 c1                	mov    %eax,%ecx
 414:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 418:	48 8b 80 b8 11 00 00 	mov    0x11b8(%rax),%rax
 41f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 423:	44 8b 45 d8          	mov    -0x28(%rbp),%r8d
 427:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 42b:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 42f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 432:	8b 75 a8             	mov    -0x58(%rbp),%esi
 435:	89 c2                	mov    %eax,%edx
 437:	46 8b 04 01          	mov    (%rcx,%r8,1),%r8d
 43b:	44 89 44 11 10       	mov    %r8d,0x10(%rcx,%rdx,1)
 440:	ba 2c 04 00 00       	mov    $0x42c,%edx
 445:	8d 48 10             	lea    0x10(%rax),%ecx
 448:	e8 25 1d ff ff       	call   0xffffffffffff2172
 44d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
 451:	8b 55 d8             	mov    -0x28(%rbp),%edx
 454:	8b 4d f4             	mov    -0xc(%rbp),%ecx
 457:	89 c7                	mov    %eax,%edi
 459:	8b 45 bc             	mov    -0x44(%rbp),%eax
 45c:	48 8b b6 b8 11 00 00 	mov    0x11b8(%rsi),%rsi
 463:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
 467:	8d 52 04             	lea    0x4(%rdx),%edx
 46a:	89 55 d8             	mov    %edx,-0x28(%rbp)
 46d:	8d 49 01             	lea    0x1(%rcx),%ecx
 470:	89 ca                	mov    %ecx,%edx
 472:	89 55 f4             	mov    %edx,-0xc(%rbp)
 475:	39 c8                	cmp    %ecx,%eax
 477:	0f 85 4a ff ff ff    	jne    0x3c7
