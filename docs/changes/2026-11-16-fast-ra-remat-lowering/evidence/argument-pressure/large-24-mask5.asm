
/tmp/dtvm-remat-use/large-24-mask5.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
   b:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   f:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  12:	48 89 d0             	mov    rax,rdx
  15:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  19:	48 8b 84 e4 00 c0 ff 	mov    rax,QWORD PTR [rsp+riz*8-0x4000]
  20:	ff
  21:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  24:	85 c0                	test   eax,eax
  26:	0f 84 81 01 00 00    	je     0x1ad
  2c:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  30:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  34:	48 ba ef cd ab 89 67 	movabs rdx,0x123456789abcdef
  3b:	45 23 01
  3e:	48 b9 88 f7 1b 6b 0f 	movabs rcx,0x5b6300f6b1bf788
  45:	30 b6 05
  48:	49 b8 21 21 8c 4c b7 	movabs r8,0xa491ab74c8c2121
  4f:	1a 49 0a
  52:	49 b9 ba 4a fc 2d 5f 	movabs r9,0xedc055f2dfc4aba
  59:	05 dc 0e
  5c:	48 b8 53 74 6c 0f 07 	movabs rax,0x136ef0070f6c7453
  63:	f0 6e 13
  66:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  6a:	48 b8 ec 9d dc f0 ae 	movabs rax,0x1801daaef0dc9dec
  71:	da 01 18
  74:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  79:	48 b8 85 c7 4c d2 56 	movabs rax,0x1c94c556d24cc785
  80:	c5 94 1c
  83:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  88:	48 b8 1e f1 bc b3 fe 	movabs rax,0x2127affeb3bcf11e
  8f:	af 27 21
  92:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  97:	48 b8 b7 1a 2d 95 a6 	movabs rax,0x25ba9aa6952d1ab7
  9e:	9a ba 25
  a1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  a6:	48 b8 50 44 9d 76 4e 	movabs rax,0x2a4d854e769d4450
  ad:	85 4d 2a
  b0:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  b5:	48 b8 e9 6d 0d 58 f6 	movabs rax,0x2ee06ff6580d6de9
  bc:	6f e0 2e
  bf:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  c4:	48 b8 82 97 7d 39 9e 	movabs rax,0x33735a9e397d9782
  cb:	5a 73 33
  ce:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  d3:	48 b8 1b c1 ed 1a 46 	movabs rax,0x380645461aedc11b
  da:	45 06 38
  dd:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  e2:	48 b8 b4 ea 5d fc ed 	movabs rax,0x3c992fedfc5deab4
  e9:	2f 99 3c
  ec:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  f1:	48 b8 4d 14 ce dd 95 	movabs rax,0x412c1a95ddce144d
  f8:	1a 2c 41
  fb:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
 100:	48 b8 e6 3d 3e bf 3d 	movabs rax,0x45bf053dbf3e3de6
 107:	05 bf 45
 10a:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
 10f:	48 b8 7f 67 ae a0 e5 	movabs rax,0x4a51efe5a0ae677f
 116:	ef 51 4a
 119:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
 11e:	48 b8 18 91 1e 82 8d 	movabs rax,0x4ee4da8d821e9118
 125:	da e4 4e
 128:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
 12d:	48 b8 b1 ba 8e 63 35 	movabs rax,0x5377c535638ebab1
 134:	c5 77 53
 137:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
 13c:	48 b8 4a e4 fe 44 dd 	movabs rax,0x580aafdd44fee44a
 143:	af 0a 58
 146:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
 14b:	48 b8 e3 0d 6f 26 85 	movabs rax,0x5c9d9a85266f0de3
 152:	9a 9d 5c
 155:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
 15c:	00
 15d:	48 b8 7c 37 df 07 2d 	movabs rax,0x6130852d07df377c
 164:	85 30 61
 167:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
 16e:	00
 16f:	48 b8 15 61 4f e9 d4 	movabs rax,0x65c36fd4e94f6115
 176:	6f c3 65
 179:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
 180:	00
 181:	48 b8 ae 8a bf ca 7c 	movabs rax,0x6a565a7ccabf8aae
 188:	5a 56 6a
 18b:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
 192:	00
 193:	e8 00 00 00 00       	call   0x198
 198:	48 89 c1             	mov    rcx,rax
 19b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 19e:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
 1a2:	8d 40 ff             	lea    eax,[rax-0x1]
 1a5:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
 1a8:	e9 74 fe ff ff       	jmp    0x21
 1ad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1b1:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
 1b5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 1b9:	48 81 c4 c0 00 00 00 	add    rsp,0xc0
 1c0:	5d                   	pop    rbp
 1c1:	c3                   	ret
