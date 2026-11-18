
/tmp/dtvm-remat-use/small-32-mask0.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	41 57                	push   r15
   6:	41 56                	push   r14
   8:	41 55                	push   r13
   a:	41 54                	push   r12
   c:	53                   	push   rbx
   d:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  14:	48 89 7d c0          	mov    QWORD PTR [rbp-0x40],rdi
  18:	89 75 cc             	mov    DWORD PTR [rbp-0x34],esi
  1b:	48 89 d0             	mov    rax,rdx
  1e:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  22:	48 8b 84 e4 00 c0 ff 	mov    rax,QWORD PTR [rsp+riz*8-0x4000]
  29:	ff
  2a:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  2d:	85 c0                	test   eax,eax
  2f:	0f 84 6f 02 00 00    	je     0x2a4
  35:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  39:	48 8b 7d c0          	mov    rdi,QWORD PTR [rbp-0x40]
  3d:	ba 15 cd 5b 07       	mov    edx,0x75bcd15
  42:	b9 52 13 5d 07       	mov    ecx,0x75d1352
  47:	41 b8 8f 59 5e 07    	mov    r8d,0x75e598f
  4d:	41 b9 cc 9f 5f 07    	mov    r9d,0x75f9fcc
  53:	b8 09 e6 60 07       	mov    eax,0x760e609
  58:	48 89 85 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rax
  5f:	b8 46 2c 62 07       	mov    eax,0x7622c46
  64:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
  6b:	b8 83 72 63 07       	mov    eax,0x7637283
  70:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  77:	b8 c0 b8 64 07       	mov    eax,0x764b8c0
  7c:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
  83:	b8 fd fe 65 07       	mov    eax,0x765fefd
  88:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
  8f:	b8 3a 45 67 07       	mov    eax,0x767453a
  94:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  9b:	b8 77 8b 68 07       	mov    eax,0x7688b77
  a0:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
  a7:	b8 b4 d1 69 07       	mov    eax,0x769d1b4
  ac:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
  b3:	b8 f1 17 6b 07       	mov    eax,0x76b17f1
  b8:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  bf:	b8 2e 5e 6c 07       	mov    eax,0x76c5e2e
  c4:	48 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rax
  cb:	b8 6b a4 6d 07       	mov    eax,0x76da46b
  d0:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
  d7:	b8 a8 ea 6e 07       	mov    eax,0x76eeaa8
  dc:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
  e3:	b8 e5 30 70 07       	mov    eax,0x77030e5
  e8:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
  ef:	b8 22 77 71 07       	mov    eax,0x7717722
  f4:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
  f8:	b8 5f bd 72 07       	mov    eax,0x772bd5f
  fd:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
 101:	b8 9c 03 74 07       	mov    eax,0x774039c
 106:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
 10a:	b8 d9 49 75 07       	mov    eax,0x77549d9
 10f:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
 113:	b8 16 90 76 07       	mov    eax,0x7769016
 118:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
 11c:	b8 53 d6 77 07       	mov    eax,0x777d653
 121:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
 125:	b8 90 1c 79 07       	mov    eax,0x7791c90
 12a:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
 12e:	41 bd cd 62 7a 07    	mov    r13d,0x77a62cd
 134:	41 bc 0a a9 7b 07    	mov    r12d,0x77ba90a
 13a:	41 bf 47 ef 7c 07    	mov    r15d,0x77cef47
 140:	41 be 84 35 7e 07    	mov    r14d,0x77e3584
 146:	bb c1 7b 7f 07       	mov    ebx,0x77f7bc1
 14b:	41 bb fe c1 80 07    	mov    r11d,0x780c1fe
 151:	41 ba 3b 08 82 07    	mov    r10d,0x782083b
 157:	b8 78 4e 83 07       	mov    eax,0x7834e78
 15c:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
 160:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
 167:	48 89 04 24          	mov    QWORD PTR [rsp],rax
 16b:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
 172:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
 177:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
 17e:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
 183:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
 18a:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
 18f:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
 196:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 19b:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
 1a2:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
 1a7:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
 1ae:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
 1b3:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
 1ba:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
 1bf:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
 1c6:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
 1cb:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
 1d2:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
 1d7:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
 1de:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
 1e3:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
 1ea:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
 1ef:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
 1f6:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
 1fb:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
 1ff:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
 204:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
 208:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
 20d:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
 211:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
 216:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
 21a:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
 221:	00
 222:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
 226:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
 22d:	00
 22e:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
 232:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
 239:	00
 23a:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
 23e:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
 245:	00
 246:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
 24a:	4c 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r13
 251:	00
 252:	4c 89 a4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r12
 259:	00
 25a:	4c 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r15
 261:	00
 262:	4c 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r14
 269:	00
 26a:	48 89 9c 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rbx
 271:	00
 272:	4c 89 9c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],r11
 279:	00
 27a:	4c 89 94 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r10
 281:	00
 282:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
 289:	00
 28a:	e8 00 00 00 00       	call   0x28f
 28f:	48 89 c1             	mov    rcx,rax
 292:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 295:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 299:	8d 40 ff             	lea    eax,[rax-0x1]
 29c:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
 29f:	e9 86 fd ff ff       	jmp    0x2a
 2a4:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 2a8:	48 89 85 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],rax
 2af:	48 8b 85 10 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf0]
 2b6:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
 2bd:	5b                   	pop    rbx
 2be:	41 5c                	pop    r12
 2c0:	41 5d                	pop    r13
 2c2:	41 5e                	pop    r14
 2c4:	41 5f                	pop    r15
 2c6:	5d                   	pop    rbp
 2c7:	c3                   	ret
