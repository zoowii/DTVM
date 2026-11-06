 1ee:	43 8b 3c 23          	mov    (%r11,%r12,1),%edi
 1f2:	45 8b 14 1b          	mov    (%r11,%rbx,1),%r10d
 1f6:	44 01 d7             	add    %r10d,%edi
 1f9:	41 39 ff             	cmp    %edi,%r15d
 1fc:	44 0f 4c ff          	cmovl  %edi,%r15d
 200:	45 89 3c 03          	mov    %r15d,(%r11,%rax,1)
 204:	8d 5b 04             	lea    0x4(%rbx),%ebx
 207:	45 8d a4 24 10 27 00 	lea    0x2710(%r12),%r12d
 20f:	8d 52 ff             	lea    -0x1(%rdx),%edx
 212:	85 d2                	test   %edx,%edx
 214:	75 d8                	jne    0x1ee
