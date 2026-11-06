 353:	8b 4d ac             	mov    -0x54(%rbp),%ecx
 356:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 359:	ba 14 00 00 00       	mov    $0x14,%edx
 35e:	89 c9                	mov    %ecx,%ecx
 360:	48 ba cd cc cc cc 00 	movabs $0xcccccccd,%rdx
 367:	00 00 00 
 36a:	48 0f af ca          	imul   %rdx,%rcx
 36e:	48 c1 e9 24          	shr    $0x24,%rcx
 372:	89 c9                	mov    %ecx,%ecx
 374:	6b c9 14             	imul   $0x14,%ecx,%ecx
 377:	01 c8                	add    %ecx,%eax
 379:	85 c0                	test   %eax,%eax
 37b:	75 22                	jne    0x39f
 37d:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 381:	8b 55 9c             	mov    -0x64(%rbp),%edx
 384:	be 0a 00 00 00       	mov    $0xa,%esi
 389:	e8 9e 1d ff ff       	call   0xffffffffffff212c
 38e:	89 c1                	mov    %eax,%ecx
 390:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 394:	48 8b 80 b8 11 00 00 	mov    0x11b8(%rax),%rax
 39b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 39f:	44 8b 4d a8          	mov    -0x58(%rbp),%r9d
 3a3:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
 3a7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 3ab:	8b 45 b0             	mov    -0x50(%rbp),%eax
 3ae:	8b 75 9c             	mov    -0x64(%rbp),%esi
 3b1:	44 8b 45 a0          	mov    -0x60(%rbp),%r8d
 3b5:	89 c2                	mov    %eax,%edx
 3b7:	45 01 c8             	add    %r9d,%r8d
 3ba:	46 8b 04 01          	mov    (%rcx,%r8,1),%r8d
 3be:	44 89 44 11 10       	mov    %r8d,0x10(%rcx,%rdx,1)
 3c3:	ba 2b 04 00 00       	mov    $0x42b,%edx
 3c8:	8d 48 10             	lea    0x10(%rax),%ecx
 3cb:	e8 a2 1d ff ff       	call   0xffffffffffff2172
 3d0:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
 3d4:	8b 55 ac             	mov    -0x54(%rbp),%edx
 3d7:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 3da:	89 c7                	mov    %eax,%edi
 3dc:	8b 45 a8             	mov    -0x58(%rbp),%eax
 3df:	48 8b b6 b8 11 00 00 	mov    0x11b8(%rsi),%rsi
 3e6:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 3ea:	8d 52 01             	lea    0x1(%rdx),%edx
 3ed:	89 55 ac             	mov    %edx,-0x54(%rbp)
 3f0:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 3f3:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 3f6:	8d 40 04             	lea    0x4(%rax),%eax
 3f9:	89 c1                	mov    %eax,%ecx
 3fb:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 3fe:	3d c0 2b 00 00       	cmp    $0x2bc0,%eax
 403:	0f 85 4a ff ff ff    	jne    0x353
