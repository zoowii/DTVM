 288:	8b 45 cc             	mov    -0x34(%rbp),%eax
 28b:	8b 4d c0             	mov    -0x40(%rbp),%ecx
 28e:	8b 55 a8             	mov    -0x58(%rbp),%edx
 291:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
 295:	44 8b 55 d8          	mov    -0x28(%rbp),%r10d
 299:	8b 7d c4             	mov    -0x3c(%rbp),%edi
 29c:	41 89 c8             	mov    %ecx,%r8d
 29f:	46 8b 0c 06          	mov    (%rsi,%r8,1),%r9d
 2a3:	41 89 d0             	mov    %edx,%r8d
 2a6:	46 8b 04 06          	mov    (%rsi,%r8,1),%r8d
 2aa:	45 01 c1             	add    %r8d,%r9d
 2ad:	45 89 cb             	mov    %r9d,%r11d
 2b0:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
 2b4:	45 89 d0             	mov    %r10d,%r8d
 2b7:	45 39 da             	cmp    %r11d,%r10d
 2ba:	45 0f 4c c1          	cmovl  %r9d,%r8d
 2be:	45 89 c1             	mov    %r8d,%r9d
 2c1:	44 89 4d d8          	mov    %r9d,-0x28(%rbp)
 2c5:	44 89 04 3e          	mov    %r8d,(%rsi,%rdi,1)
 2c9:	8d 52 04             	lea    0x4(%rdx),%edx
 2cc:	89 55 a8             	mov    %edx,-0x58(%rbp)
 2cf:	8d 89 10 27 00 00    	lea    0x2710(%rcx),%ecx
 2d5:	89 4d c0             	mov    %ecx,-0x40(%rbp)
 2d8:	8d 40 ff             	lea    -0x1(%rax),%eax
 2db:	89 c1                	mov    %eax,%ecx
 2dd:	89 4d cc             	mov    %ecx,-0x34(%rbp)
 2e0:	85 c0                	test   %eax,%eax
 2e2:	75 a4                	jne    0x288
