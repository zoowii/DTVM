
/tmp/dtvm-remat-use/large-24-mask1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	41 57                	push   r15
   6:	41 56                	push   r14
   8:	41 55                	push   r13
   a:	41 54                	push   r12
   c:	53                   	push   rbx
   d:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  14:	48 89 7d c0          	mov    QWORD PTR [rbp-0x40],rdi
  18:	89 75 cc             	mov    DWORD PTR [rbp-0x34],esi
  1b:	48 89 d0             	mov    rax,rdx
  1e:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  22:	48 8b 84 e4 00 c0 ff 	mov    rax,QWORD PTR [rsp+riz*8-0x4000]
  29:	ff
  2a:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  2d:	85 c0                	test   eax,eax
  2f:	0f 84 03 02 00 00    	je     0x238
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
  6f:	48 b8 ec 9d dc f0 ae 	movabs rax,0x1801daaef0dc9dec
  76:	da 01 18
  79:	48 b8 85 c7 4c d2 56 	movabs rax,0x1c94c556d24cc785
  80:	c5 94 1c
  83:	48 b8 1e f1 bc b3 fe 	movabs rax,0x2127affeb3bcf11e
  8a:	af 27 21
  8d:	48 b8 b7 1a 2d 95 a6 	movabs rax,0x25ba9aa6952d1ab7
  94:	9a ba 25
  97:	48 b8 50 44 9d 76 4e 	movabs rax,0x2a4d854e769d4450
  9e:	85 4d 2a
  a1:	48 b8 e9 6d 0d 58 f6 	movabs rax,0x2ee06ff6580d6de9
  a8:	6f e0 2e
  ab:	48 b8 82 97 7d 39 9e 	movabs rax,0x33735a9e397d9782
  b2:	5a 73 33
  b5:	48 b8 1b c1 ed 1a 46 	movabs rax,0x380645461aedc11b
  bc:	45 06 38
  bf:	48 b8 b4 ea 5d fc ed 	movabs rax,0x3c992fedfc5deab4
  c6:	2f 99 3c
  c9:	48 b8 4d 14 ce dd 95 	movabs rax,0x412c1a95ddce144d
  d0:	1a 2c 41
  d3:	48 b8 e6 3d 3e bf 3d 	movabs rax,0x45bf053dbf3e3de6
  da:	05 bf 45
  dd:	49 bd 7f 67 ae a0 e5 	movabs r13,0x4a51efe5a0ae677f
  e4:	ef 51 4a
  e7:	49 bc 18 91 1e 82 8d 	movabs r12,0x4ee4da8d821e9118
  ee:	da e4 4e
  f1:	49 bf b1 ba 8e 63 35 	movabs r15,0x5377c535638ebab1
  f8:	c5 77 53
  fb:	49 be 4a e4 fe 44 dd 	movabs r14,0x580aafdd44fee44a
 102:	af 0a 58
 105:	48 bb e3 0d 6f 26 85 	movabs rbx,0x5c9d9a85266f0de3
 10c:	9a 9d 5c
 10f:	49 bb 7c 37 df 07 2d 	movabs r11,0x6130852d07df377c
 116:	85 30 61
 119:	49 ba 15 61 4f e9 d4 	movabs r10,0x65c36fd4e94f6115
 120:	6f c3 65
 123:	48 b8 ae 8a bf ca 7c 	movabs rax,0x6a565a7ccabf8aae
 12a:	5a 56 6a
 12d:	48 b8 53 74 6c 0f 07 	movabs rax,0x136ef0070f6c7453
 134:	f0 6e 13
 137:	48 89 04 24          	mov    QWORD PTR [rsp],rax
 13b:	48 b8 ec 9d dc f0 ae 	movabs rax,0x1801daaef0dc9dec
 142:	da 01 18
 145:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
 14a:	48 b8 85 c7 4c d2 56 	movabs rax,0x1c94c556d24cc785
 151:	c5 94 1c
 154:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
 159:	48 b8 1e f1 bc b3 fe 	movabs rax,0x2127affeb3bcf11e
 160:	af 27 21
 163:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
 168:	48 b8 b7 1a 2d 95 a6 	movabs rax,0x25ba9aa6952d1ab7
 16f:	9a ba 25
 172:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 177:	48 b8 50 44 9d 76 4e 	movabs rax,0x2a4d854e769d4450
 17e:	85 4d 2a
 181:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
 186:	48 b8 e9 6d 0d 58 f6 	movabs rax,0x2ee06ff6580d6de9
 18d:	6f e0 2e
 190:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
 195:	48 b8 82 97 7d 39 9e 	movabs rax,0x33735a9e397d9782
 19c:	5a 73 33
 19f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
 1a4:	48 b8 1b c1 ed 1a 46 	movabs rax,0x380645461aedc11b
 1ab:	45 06 38
 1ae:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
 1b3:	48 b8 b4 ea 5d fc ed 	movabs rax,0x3c992fedfc5deab4
 1ba:	2f 99 3c
 1bd:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
 1c2:	48 b8 4d 14 ce dd 95 	movabs rax,0x412c1a95ddce144d
 1c9:	1a 2c 41
 1cc:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
 1d1:	48 b8 e6 3d 3e bf 3d 	movabs rax,0x45bf053dbf3e3de6
 1d8:	05 bf 45
 1db:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
 1e0:	48 b8 ae 8a bf ca 7c 	movabs rax,0x6a565a7ccabf8aae
 1e7:	5a 56 6a
 1ea:	4c 89 6c 24 60       	mov    QWORD PTR [rsp+0x60],r13
 1ef:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
 1f4:	4c 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],r15
 1f9:	4c 89 74 24 78       	mov    QWORD PTR [rsp+0x78],r14
 1fe:	48 89 9c 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rbx
 205:	00
 206:	4c 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r11
 20d:	00
 20e:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
 215:	00
 216:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
 21d:	00
 21e:	e8 00 00 00 00       	call   0x223
 223:	48 89 c1             	mov    rcx,rax
 226:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 229:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 22d:	8d 40 ff             	lea    eax,[rax-0x1]
 230:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
 233:	e9 f2 fd ff ff       	jmp    0x2a
 238:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 23c:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
 240:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
 244:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
 24b:	5b                   	pop    rbx
 24c:	41 5c                	pop    r12
 24e:	41 5d                	pop    r13
 250:	41 5e                	pop    r14
 252:	41 5f                	pop    r15
 254:	5d                   	pop    rbp
 255:	c3                   	ret
