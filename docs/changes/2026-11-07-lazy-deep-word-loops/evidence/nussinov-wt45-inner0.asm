  94:	45 8d 4b 01          	lea    0x1(%r11),%r9d
  98:	4d 89 ca             	mov    %r9,%r10
  9b:	41 83 e2 03          	and    $0x3,%r10d
  9f:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
  a4:	41 03 cb             	add    %r11d,%ecx
  a7:	45 88 14 0e          	mov    %r10b,(%r14,%rcx,1)
  ab:	41 81 fb c3 09 00 00 	cmp    $0x9c3,%r11d
  b2:	0f 84 08 00 00 00    	je     0xc0
  b8:	4d 89 cb             	mov    %r9,%r11
  bb:	e9 d4 ff ff ff       	jmp    0x94
