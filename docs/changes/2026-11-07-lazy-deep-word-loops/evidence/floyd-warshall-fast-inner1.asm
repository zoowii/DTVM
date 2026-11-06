 232:	8b 45 a8             	mov    -0x58(%rbp),%eax
 235:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
 239:	44 8b 4d d0          	mov    -0x30(%rbp),%r9d
 23d:	8b 75 a4             	mov    -0x5c(%rbp),%esi
 240:	8b 55 ac             	mov    -0x54(%rbp),%edx
 243:	89 c7                	mov    %eax,%edi
 245:	01 fa                	add    %edi,%edx
 247:	89 d7                	mov    %edx,%edi
 249:	8b 3c 39             	mov    (%rcx,%rdi,1),%edi
 24c:	41 89 f8             	mov    %edi,%r8d
 24f:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
 253:	41 89 c2             	mov    %eax,%r10d
 256:	44 01 d6             	add    %r10d,%esi
 259:	8b 34 31             	mov    (%rcx,%rsi,1),%esi
 25c:	46 8b 0c 09          	mov    (%rcx,%r9,1),%r9d
 260:	44 01 ce             	add    %r9d,%esi
 263:	41 89 f1             	mov    %esi,%r9d
 266:	44 89 4d 9c          	mov    %r9d,-0x64(%rbp)
 26a:	45 39 c8             	cmp    %r9d,%r8d
 26d:	0f 4c f7             	cmovl  %edi,%esi
 270:	89 34 11             	mov    %esi,(%rcx,%rdx,1)
 273:	8d 40 04             	lea    0x4(%rax),%eax
 276:	89 c1                	mov    %eax,%ecx
 278:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 27b:	3d c0 2b 00 00       	cmp    $0x2bc0,%eax
 280:	75 b0                	jne    0x232
