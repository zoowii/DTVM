 1a2:	44 8d 0c 31          	lea    (%rcx,%rsi,1),%r9d
 1a6:	47 8b 14 0e          	mov    (%r14,%r9,1),%r10d
 1aa:	44 8d 1c 30          	lea    (%rax,%rsi,1),%r11d
 1ae:	47 8b 1c 1e          	mov    (%r14,%r11,1),%r11d
 1b2:	45 03 1c 3e          	add    (%r14,%rdi,1),%r11d
 1b6:	45 3b da             	cmp    %r10d,%r11d
 1b9:	45 0f 4c d3          	cmovl  %r11d,%r10d
 1bd:	47 89 14 0e          	mov    %r10d,(%r14,%r9,1)
 1c1:	44 8d 4e 04          	lea    0x4(%rsi),%r9d
 1c5:	81 fe bc 2b 00 00    	cmp    $0x2bbc,%esi
 1cb:	0f 84 08 00 00 00    	je     0x1d9
 1d1:	4c 89 ce             	mov    %r9,%rsi
 1d4:	e9 c9 ff ff ff       	jmp    0x1a2
