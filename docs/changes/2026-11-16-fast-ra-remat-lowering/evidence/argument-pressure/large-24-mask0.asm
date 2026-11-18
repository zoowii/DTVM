
/tmp/dtvm-remat-use/large-24-mask0.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	41 57                	push   r15
   6:	41 56                	push   r14
   8:	41 55                	push   r13
   a:	41 54                	push   r12
   c:	53                   	push   rbx
   d:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  14:	48 89 7d c0          	mov    QWORD PTR [rbp-0x40],rdi
  18:	89 75 cc             	mov    DWORD PTR [rbp-0x34],esi
  1b:	48 89 d0             	mov    rax,rdx
  1e:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  22:	48 8b 84 e4 00 c0 ff 	mov    rax,QWORD PTR [rsp+riz*8-0x4000]
  29:	ff
  2a:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  2d:	85 c0                	test   eax,eax
  2f:	0f 84 07 02 00 00    	je     0x23c
  35:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  39:	48 8b 7d c0          	mov    rdi,QWORD PTR [rbp-0x40]
  3d:	48 ba ef cd ab 89 67 	movabs rdx,0x123456789abcdef
  44:	45 23 01
  47:	48 b9 88 f7 1b 6b 0f 	movabs rcx,0x5b6300f6b1bf788
  4e:	30 b6 05
  51:	49 b8 21 21 8c 4c b7 	movabs r8,0xa491ab74c8c2121
  58:	1a 49 0a
  5b:	49 b9 ba 4a fc 2d 5f 	movabs r9,0xedc055f2dfc4aba
  62:	05 dc 0e
  65:	48 b8 53 74 6c 0f 07 	movabs rax,0x136ef0070f6c7453
  6c:	f0 6e 13
  6f:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  76:	48 b8 ec 9d dc f0 ae 	movabs rax,0x1801daaef0dc9dec
  7d:	da 01 18
  80:	48 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rax
  87:	48 b8 85 c7 4c d2 56 	movabs rax,0x1c94c556d24cc785
  8e:	c5 94 1c
  91:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
  98:	48 b8 1e f1 bc b3 fe 	movabs rax,0x2127affeb3bcf11e
  9f:	af 27 21
  a2:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
  a9:	48 b8 b7 1a 2d 95 a6 	movabs rax,0x25ba9aa6952d1ab7
  b0:	9a ba 25
  b3:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
  ba:	48 b8 50 44 9d 76 4e 	movabs rax,0x2a4d854e769d4450
  c1:	85 4d 2a
  c4:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
  c8:	48 b8 e9 6d 0d 58 f6 	movabs rax,0x2ee06ff6580d6de9
  cf:	6f e0 2e
  d2:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
  d6:	48 b8 82 97 7d 39 9e 	movabs rax,0x33735a9e397d9782
  dd:	5a 73 33
  e0:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
  e4:	48 b8 1b c1 ed 1a 46 	movabs rax,0x380645461aedc11b
  eb:	45 06 38
  ee:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  f2:	48 b8 b4 ea 5d fc ed 	movabs rax,0x3c992fedfc5deab4
  f9:	2f 99 3c
  fc:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
 100:	48 b8 4d 14 ce dd 95 	movabs rax,0x412c1a95ddce144d
 107:	1a 2c 41
 10a:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
 10e:	48 b8 e6 3d 3e bf 3d 	movabs rax,0x45bf053dbf3e3de6
 115:	05 bf 45
 118:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
 11c:	49 bd 7f 67 ae a0 e5 	movabs r13,0x4a51efe5a0ae677f
 123:	ef 51 4a
 126:	49 bc 18 91 1e 82 8d 	movabs r12,0x4ee4da8d821e9118
 12d:	da e4 4e
 130:	49 bf b1 ba 8e 63 35 	movabs r15,0x5377c535638ebab1
 137:	c5 77 53
 13a:	49 be 4a e4 fe 44 dd 	movabs r14,0x580aafdd44fee44a
 141:	af 0a 58
 144:	48 bb e3 0d 6f 26 85 	movabs rbx,0x5c9d9a85266f0de3
 14b:	9a 9d 5c
 14e:	49 bb 7c 37 df 07 2d 	movabs r11,0x6130852d07df377c
 155:	85 30 61
 158:	49 ba 15 61 4f e9 d4 	movabs r10,0x65c36fd4e94f6115
 15f:	6f c3 65
 162:	48 b8 ae 8a bf ca 7c 	movabs rax,0x6a565a7ccabf8aae
 169:	5a 56 6a
 16c:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
 170:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
 177:	48 89 04 24          	mov    QWORD PTR [rsp],rax
 17b:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
 182:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
 187:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
 18e:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
 193:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
 19a:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
 19f:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
 1a6:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 1ab:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
 1af:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
 1b4:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
 1b8:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
 1bd:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
 1c1:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
 1c6:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
 1ca:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
 1cf:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
 1d3:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
 1d8:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
 1dc:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
 1e1:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
 1e5:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
 1ea:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
 1ee:	4c 89 6c 24 60       	mov    QWORD PTR [rsp+0x60],r13
 1f3:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
 1f8:	4c 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],r15
 1fd:	4c 89 74 24 78       	mov    QWORD PTR [rsp+0x78],r14
 202:	48 89 9c 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rbx
 209:	00
 20a:	4c 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r11
 211:	00
 212:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
 219:	00
 21a:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
 221:	00
 222:	e8 00 00 00 00       	call   0x227
 227:	48 89 c1             	mov    rcx,rax
 22a:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 22d:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 231:	8d 40 ff             	lea    eax,[rax-0x1]
 234:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
 237:	e9 ee fd ff ff       	jmp    0x2a
 23c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 240:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
 247:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
 24e:	48 81 c4 28 01 00 00 	add    rsp,0x128
 255:	5b                   	pop    rbx
 256:	41 5c                	pop    r12
 258:	41 5d                	pop    r13
 25a:	41 5e                	pop    r14
 25c:	41 5f                	pop    r15
 25e:	5d                   	pop    rbp
 25f:	c3                   	ret
