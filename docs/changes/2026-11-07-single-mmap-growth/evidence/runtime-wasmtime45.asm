
benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime:     file format elf64-x86-64


Disassembly of section .text:

00000000020dca40 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to>:
 20dca40:	55                   	push   %rbp
 20dca41:	41 57                	push   %r15
 20dca43:	41 56                	push   %r14
 20dca45:	41 55                	push   %r13
 20dca47:	41 54                	push   %r12
 20dca49:	53                   	push   %rbx
 20dca4a:	48 83 ec 48          	sub    $0x48,%rsp
 20dca4e:	49 89 f4             	mov    %rsi,%r12
 20dca51:	49 89 fe             	mov    %rdi,%r14
 20dca54:	48 8b 05 25 44 2b 01 	mov    0x12b4425(%rip),%rax        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dca5b:	48 85 c0             	test   %rax,%rax
 20dca5e:	75 21                	jne    20dca81 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x41>
 20dca60:	bf 1e 00 00 00       	mov    $0x1e,%edi
 20dca65:	ff 15 45 e7 29 01    	call   *0x129e745(%rip)        # 337b1b0 <sysconf@GLIBC_2.2.5>
 20dca6b:	48 85 c0             	test   %rax,%rax
 20dca6e:	0f 88 af 04 00 00    	js     20dcf23 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4e3>
 20dca74:	0f 84 4a 03 00 00    	je     20dcdc4 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x384>
 20dca7a:	48 89 05 ff 43 2b 01 	mov    %rax,0x12b43ff(%rip)        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dca81:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
 20dca85:	49 ff cf             	dec    %r15
 20dca88:	4d 39 e7             	cmp    %r12,%r15
 20dca8b:	0f 82 f4 02 00 00    	jb     20dcd85 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x345>
 20dca91:	49 8b 76 10          	mov    0x10(%r14),%rsi
 20dca95:	49 8b 4e 30          	mov    0x30(%r14),%rcx
 20dca99:	48 8b 56 18          	mov    0x18(%rsi),%rdx
 20dca9d:	48 29 ca             	sub    %rcx,%rdx
 20dcaa0:	0f 82 53 04 00 00    	jb     20dcef9 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4b9>
 20dcaa6:	49 8b 5e 28          	mov    0x28(%r14),%rbx
 20dcaaa:	48 29 da             	sub    %rbx,%rdx
 20dcaad:	0f 82 46 04 00 00    	jb     20dcef9 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4b9>
 20dcab3:	48 f7 d8             	neg    %rax
 20dcab6:	49 21 c7             	and    %rax,%r15
 20dcab9:	49 39 d7             	cmp    %rdx,%r15
 20dcabc:	0f 86 cf 00 00 00    	jbe    20dcb91 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x151>
 20dcac2:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
 20dcac7:	49 89 dc             	mov    %rbx,%r12
 20dcaca:	4d 01 fc             	add    %r15,%r12
 20dcacd:	0f 82 86 02 00 00    	jb     20dcd59 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x319>
 20dcad3:	49 8b 56 20          	mov    0x20(%r14),%rdx
 20dcad7:	4c 01 e2             	add    %r12,%rdx
 20dcada:	0f 82 79 02 00 00    	jb     20dcd59 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x319>
 20dcae0:	48 01 ca             	add    %rcx,%rdx
 20dcae3:	0f 82 70 02 00 00    	jb     20dcd59 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x319>
 20dcae9:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
 20dcaee:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 20dcaf3:	31 f6                	xor    %esi,%esi
 20dcaf5:	ff 15 8d e7 29 01    	call   *0x129e78d(%rip)        # 337b288 <_DYNAMIC+0xd1f8>
 20dcafb:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
 20dcb00:	4d 85 ed             	test   %r13,%r13
 20dcb03:	0f 84 a5 01 00 00    	je     20dccae <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x26e>
 20dcb09:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
 20dcb0e:	4c 89 64 24 30       	mov    %r12,0x30(%rsp)
 20dcb13:	49 39 ec             	cmp    %rbp,%r12
 20dcb16:	0f 87 f3 02 00 00    	ja     20dce0f <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x3cf>
 20dcb1c:	4a 8d 3c 2b          	lea    (%rbx,%r13,1),%rdi
 20dcb20:	b8 0a 00 00 00       	mov    $0xa,%eax
 20dcb25:	ba 03 00 00 00       	mov    $0x3,%edx
 20dcb2a:	4c 89 fe             	mov    %r15,%rsi
 20dcb2d:	0f 05                	syscall
 20dcb2f:	48 85 c0             	test   %rax,%rax
 20dcb32:	0f 84 80 01 00 00    	je     20dccb8 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x278>
 20dcb38:	89 c7                	mov    %eax,%edi
 20dcb3a:	e8 71 d1 0c 00       	call   21a9cb0 <wasmtime_internal_core::error::error::Error::new>
 20dcb3f:	48 85 ed             	test   %rbp,%rbp
 20dcb42:	0f 84 02 02 00 00    	je     20dcd4a <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x30a>
 20dcb48:	48 89 c2             	mov    %rax,%rdx
 20dcb4b:	b8 0b 00 00 00       	mov    $0xb,%eax
 20dcb50:	4c 89 ef             	mov    %r13,%rdi
 20dcb53:	48 89 ee             	mov    %rbp,%rsi
 20dcb56:	0f 05                	syscall
 20dcb58:	48 89 c1             	mov    %rax,%rcx
 20dcb5b:	48 89 d0             	mov    %rdx,%rax
 20dcb5e:	48 85 c9             	test   %rcx,%rcx
 20dcb61:	0f 84 e3 01 00 00    	je     20dcd4a <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x30a>
 20dcb67:	66 89 4c 24 08       	mov    %cx,0x8(%rsp)
 20dcb6c:	48 8d 3d a4 7c 58 fe 	lea    -0x1a7835c(%rip),%rdi        # 664817 <anon.7c5fb0e1f11b0e1fe512c12c39e02045.520.llvm.15848842468470254530>
 20dcb73:	48 8d 0d 4e 71 0f 01 	lea    0x10f714e(%rip),%rcx        # 31d3cc8 <anon.7c5fb0e1f11b0e1fe512c12c39e02045.59.llvm.15848842468470254530>
 20dcb7a:	4c 8d 05 a7 83 0f 01 	lea    0x10f83a7(%rip),%r8        # 31d4f28 <anon.7c5fb0e1f11b0e1fe512c12c39e02045.522.llvm.15848842468470254530>
 20dcb81:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 20dcb86:	be 0d 00 00 00       	mov    $0xd,%esi
 20dcb8b:	ff 15 8f 19 29 01    	call   *0x129198f(%rip)        # 336e520 <_DYNAMIC+0x490>
 20dcb91:	49 39 d4             	cmp    %rdx,%r12
 20dcb94:	0f 87 43 02 00 00    	ja     20dcddd <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x39d>
 20dcb9a:	41 83 3e 01          	cmpl   $0x1,(%r14)
 20dcb9e:	75 0a                	jne    20dcbaa <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x16a>
 20dcba0:	4d 3b 66 08          	cmp    0x8(%r14),%r12
 20dcba4:	0f 87 4c 02 00 00    	ja     20dcdf6 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x3b6>
 20dcbaa:	4d 8b 6e 18          	mov    0x18(%r14),%r13
 20dcbae:	48 8b 05 cb 42 2b 01 	mov    0x12b42cb(%rip),%rax        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dcbb5:	48 85 c0             	test   %rax,%rax
 20dcbb8:	75 27                	jne    20dcbe1 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x1a1>
 20dcbba:	48 89 f5             	mov    %rsi,%rbp
 20dcbbd:	bf 1e 00 00 00       	mov    $0x1e,%edi
 20dcbc2:	ff 15 e8 e5 29 01    	call   *0x129e5e8(%rip)        # 337b1b0 <sysconf@GLIBC_2.2.5>
 20dcbc8:	48 85 c0             	test   %rax,%rax
 20dcbcb:	0f 88 52 03 00 00    	js     20dcf23 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4e3>
 20dcbd1:	0f 84 ed 01 00 00    	je     20dcdc4 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x384>
 20dcbd7:	48 89 05 a2 42 2b 01 	mov    %rax,0x12b42a2(%rip)        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dcbde:	48 89 ee             	mov    %rbp,%rsi
 20dcbe1:	4a 8d 2c 28          	lea    (%rax,%r13,1),%rbp
 20dcbe5:	48 ff cd             	dec    %rbp
 20dcbe8:	4c 39 ed             	cmp    %r13,%rbp
 20dcbeb:	0f 82 a9 01 00 00    	jb     20dcd9a <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x35a>
 20dcbf1:	48 f7 d8             	neg    %rax
 20dcbf4:	48 21 c5             	and    %rax,%rbp
 20dcbf7:	49 39 ef             	cmp    %rbp,%r15
 20dcbfa:	0f 82 44 01 00 00    	jb     20dcd44 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x304>
 20dcc00:	48 8b 05 79 42 2b 01 	mov    0x12b4279(%rip),%rax        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dcc07:	48 85 c0             	test   %rax,%rax
 20dcc0a:	75 2b                	jne    20dcc37 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x1f7>
 20dcc0c:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
 20dcc11:	bf 1e 00 00 00       	mov    $0x1e,%edi
 20dcc16:	ff 15 94 e5 29 01    	call   *0x129e594(%rip)        # 337b1b0 <sysconf@GLIBC_2.2.5>
 20dcc1c:	48 85 c0             	test   %rax,%rax
 20dcc1f:	0f 88 fe 02 00 00    	js     20dcf23 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4e3>
 20dcc25:	0f 84 99 01 00 00    	je     20dcdc4 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x384>
 20dcc2b:	48 89 05 4e 42 2b 01 	mov    %rax,0x12b424e(%rip)        # 3390e80 <wasmtime::runtime::vm::host_page_size::PAGE_SIZE>
 20dcc32:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
 20dcc37:	49 8d 7d ff          	lea    -0x1(%r13),%rdi
 20dcc3b:	48 01 c7             	add    %rax,%rdi
 20dcc3e:	4c 39 ef             	cmp    %r13,%rdi
 20dcc41:	0f 82 53 01 00 00    	jb     20dcd9a <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x35a>
 20dcc47:	48 f7 d8             	neg    %rax
 20dcc4a:	48 21 c7             	and    %rax,%rdi
 20dcc4d:	48 01 df             	add    %rbx,%rdi
 20dcc50:	0f 82 c0 01 00 00    	jb     20dce16 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x3d6>
 20dcc56:	49 29 ef             	sub    %rbp,%r15
 20dcc59:	0f 84 e5 00 00 00    	je     20dcd44 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x304>
 20dcc5f:	48 89 f8             	mov    %rdi,%rax
 20dcc62:	4c 01 f8             	add    %r15,%rax
 20dcc65:	0f 82 d6 01 00 00    	jb     20dce41 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x401>
 20dcc6b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 20dcc70:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
 20dcc74:	48 39 c8             	cmp    %rcx,%rax
 20dcc77:	0f 87 ee 01 00 00    	ja     20dce6b <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x42b>
 20dcc7d:	48 03 7e 10          	add    0x10(%rsi),%rdi
 20dcc81:	b8 0a 00 00 00       	mov    $0xa,%eax
 20dcc86:	ba 03 00 00 00       	mov    $0x3,%edx
 20dcc8b:	4c 89 fe             	mov    %r15,%rsi
 20dcc8e:	0f 05                	syscall
 20dcc90:	48 85 c0             	test   %rax,%rax
 20dcc93:	0f 84 ab 00 00 00    	je     20dcd44 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x304>
 20dcc99:	89 c7                	mov    %eax,%edi
 20dcc9b:	48 83 c4 48          	add    $0x48,%rsp
 20dcc9f:	5b                   	pop    %rbx
 20dcca0:	41 5c                	pop    %r12
 20dcca2:	41 5d                	pop    %r13
 20dcca4:	41 5e                	pop    %r14
 20dcca6:	41 5f                	pop    %r15
 20dcca8:	5d                   	pop    %rbp
 20dcca9:	e9 02 d0 0c 00       	jmp    21a9cb0 <wasmtime_internal_core::error::error::Error::new>
 20dccae:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 20dccb3:	e9 92 00 00 00       	jmp    20dcd4a <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x30a>
 20dccb8:	49 8b 56 18          	mov    0x18(%r14),%rdx
 20dccbc:	48 89 d0             	mov    %rdx,%rax
 20dccbf:	48 01 d8             	add    %rbx,%rax
 20dccc2:	0f 82 e6 01 00 00    	jb     20dceae <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x46e>
 20dccc8:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 20dcccd:	49 3b 44 24 18       	cmp    0x18(%r12),%rax
 20dccd2:	0f 87 ef 01 00 00    	ja     20dcec7 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x487>
 20dccd8:	48 39 e8             	cmp    %rbp,%rax
 20dccdb:	0f 87 ff 01 00 00    	ja     20dcee0 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x4a0>
 20dcce1:	49 03 5c 24 10       	add    0x10(%r12),%rbx
 20dcce6:	48 89 de             	mov    %rbx,%rsi
 20dcce9:	ff 15 29 16 29 01    	call   *0x1291629(%rip)        # 336e318 <memcpy@GLIBC_2.14>
 20dccef:	ff 15 83 16 29 01    	call   *0x1291683(%rip)        # 336e378 <_DYNAMIC+0x2e8>
 20dccf5:	bf 20 00 00 00       	mov    $0x20,%edi
 20dccfa:	be 08 00 00 00       	mov    $0x8,%esi
 20dccff:	ff 15 7b 16 29 01    	call   *0x129167b(%rip)        # 336e380 <_DYNAMIC+0x2f0>
 20dcd05:	48 85 c0             	test   %rax,%rax
 20dcd08:	0f 84 23 01 00 00    	je     20dce31 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x3f1>
 20dcd0e:	49 89 c7             	mov    %rax,%r15
 20dcd11:	49 8d 5e 10          	lea    0x10(%r14),%rbx
 20dcd15:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
 20dcd1c:	48 c7 40 08 01 00 00 	movq   $0x1,0x8(%rax)
 20dcd23:	00
 20dcd24:	4c 89 68 10          	mov    %r13,0x10(%rax)
 20dcd28:	48 89 68 18          	mov    %rbp,0x18(%rax)
 20dcd2c:	f0 49 ff 0c 24       	lock decq (%r12)
 20dcd31:	75 09                	jne    20dcd3c <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x2fc>
 20dcd33:	48 89 df             	mov    %rbx,%rdi
 20dcd36:	ff 15 e4 32 29 01    	call   *0x12932e4(%rip)        # 3370020 <_DYNAMIC+0x1f90>
 20dcd3c:	4c 89 3b             	mov    %r15,(%rbx)
 20dcd3f:	4c 8b 64 24 40       	mov    0x40(%rsp),%r12
 20dcd44:	4d 89 66 18          	mov    %r12,0x18(%r14)
 20dcd48:	31 c0                	xor    %eax,%eax
 20dcd4a:	48 83 c4 48          	add    $0x48,%rsp
 20dcd4e:	5b                   	pop    %rbx
 20dcd4f:	41 5c                	pop    %r12
 20dcd51:	41 5d                	pop    %r13
 20dcd53:	41 5e                	pop    %r14
 20dcd55:	41 5f                	pop    %r15
 20dcd57:	5d                   	pop    %rbp
 20dcd58:	c3                   	ret
 20dcd59:	bf 02 00 00 00       	mov    $0x2,%edi
 20dcd5e:	e8 bd d3 0c 00       	call   21aa120 <wasmtime_internal_core::error::error::Error::new>
 20dcd63:	48 8d 35 f9 40 58 fe 	lea    -0x1a7bf07(%rip),%rsi        # 660e63 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.2.llvm.1488487092125395986+0x334>
 20dcd6a:	ba 2e 00 00 00       	mov    $0x2e,%edx
 20dcd6f:	48 89 c7             	mov    %rax,%rdi
 20dcd72:	48 83 c4 48          	add    $0x48,%rsp
 20dcd76:	5b                   	pop    %rbx
 20dcd77:	41 5c                	pop    %r12
 20dcd79:	41 5d                	pop    %r13
 20dcd7b:	41 5e                	pop    %r14
 20dcd7d:	41 5f                	pop    %r15
 20dcd7f:	5d                   	pop    %rbp
 20dcd80:	e9 2b eb 0c 00       	jmp    21ab8b0 <wasmtime_internal_core::error::error::Error::context>
 20dcd85:	31 ff                	xor    %edi,%edi
 20dcd87:	48 83 c4 48          	add    $0x48,%rsp
 20dcd8b:	5b                   	pop    %rbx
 20dcd8c:	41 5c                	pop    %r12
 20dcd8e:	41 5d                	pop    %r13
 20dcd90:	41 5e                	pop    %r14
 20dcd92:	41 5f                	pop    %r15
 20dcd94:	5d                   	pop    %rbp
 20dcd95:	e9 86 d3 0c 00       	jmp    21aa120 <wasmtime_internal_core::error::error::Error::new>
 20dcd9a:	c6 44 24 08 00       	movb   $0x0,0x8(%rsp)
 20dcd9f:	48 8d 3d 45 52 58 fe 	lea    -0x1a7adbb(%rip),%rdi        # 661feb <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.483.llvm.1488487092125395986+0x136>
 20dcda6:	48 8d 0d 13 4b 0f 01 	lea    0x10f4b13(%rip),%rcx        # 31d18c0 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.141.llvm.1488487092125395986+0x20>
 20dcdad:	4c 8d 05 54 5b 0f 01 	lea    0x10f5b54(%rip),%r8        # 31d2908 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.481.llvm.1488487092125395986+0x1b0>
 20dcdb4:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 20dcdb9:	be 26 00 00 00       	mov    $0x26,%esi
 20dcdbe:	ff 15 5c 17 29 01    	call   *0x129175c(%rip)        # 336e520 <_DYNAMIC+0x490>
 20dcdc4:	48 8d 3d 36 4b 58 fe 	lea    -0x1a7b4ca(%rip),%rdi        # 661901 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.355.llvm.1488487092125395986>
 20dcdcb:	48 8d 15 8e 54 0f 01 	lea    0x10f548e(%rip),%rdx        # 31d2260 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.356.llvm.1488487092125395986>
 20dcdd2:	be 1b 00 00 00       	mov    $0x1b,%esi
 20dcdd7:	ff 15 1b 18 29 01    	call   *0x129181b(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dcddd:	48 8d 3d d8 3f 58 fe 	lea    -0x1a7c028(%rip),%rdi        # 660dbc <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.2.llvm.1488487092125395986+0x28d>
 20dcde4:	48 8d 15 9d 45 0f 01 	lea    0x10f459d(%rip),%rdx        # 31d1388 <anon.9e5f1e500c856abdfd1784fa4eefb150.581.llvm.6348182690917012180+0x380>
 20dcdeb:	be 3b 00 00 00       	mov    $0x3b,%esi
 20dcdf0:	ff 15 02 18 29 01    	call   *0x1291802(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dcdf6:	48 8d 3d fa 3f 58 fe 	lea    -0x1a7c006(%rip),%rdi        # 660df7 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.2.llvm.1488487092125395986+0x2c8>
 20dcdfd:	48 8d 15 9c 45 0f 01 	lea    0x10f459c(%rip),%rdx        # 31d13a0 <anon.9e5f1e500c856abdfd1784fa4eefb150.581.llvm.6348182690917012180+0x398>
 20dce04:	be 42 00 00 00       	mov    $0x42,%esi
 20dce09:	ff 15 e9 17 29 01    	call   *0x12917e9(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dce0f:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
 20dce14:	eb 5a                	jmp    20dce70 <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x430>
 20dce16:	bf 02 00 00 00       	mov    $0x2,%edi
 20dce1b:	e8 00 d3 0c 00       	call   21aa120 <wasmtime_internal_core::error::error::Error::new>
 20dce20:	48 8d 35 12 40 58 fe 	lea    -0x1a7bfee(%rip),%rsi        # 660e39 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.2.llvm.1488487092125395986+0x30a>
 20dce27:	ba 2a 00 00 00       	mov    $0x2a,%edx
 20dce2c:	e9 3e ff ff ff       	jmp    20dcd6f <<wasmtime::runtime::vm::memory::mmap::MmapMemory as wasmtime::runtime::vm::memory::RuntimeLinearMemory>::grow_to+0x32f>
 20dce31:	bf 08 00 00 00       	mov    $0x8,%edi
 20dce36:	be 20 00 00 00       	mov    $0x20,%esi
 20dce3b:	ff 15 e7 16 29 01    	call   *0x12916e7(%rip)        # 336e528 <_DYNAMIC+0x498>
 20dce41:	c6 44 24 08 02       	movb   $0x2,0x8(%rsp)
 20dce46:	48 8d 3d 65 26 59 fe 	lea    -0x1a6d99b(%rip),%rdi        # 66f4b2 <anon.acac3fb8bd464c154ae71c598f09cef5.909.llvm.4233312357680831195>
 20dce4d:	48 8d 0d a4 fb 0f 01 	lea    0x10ffba4(%rip),%rcx        # 31dc9f8 <anon.acac3fb8bd464c154ae71c598f09cef5.321.llvm.4233312357680831195>
 20dce54:	4c 8d 05 55 2a 10 01 	lea    0x1102a55(%rip),%r8        # 31df8b0 <anon.acac3fb8bd464c154ae71c598f09cef5.910.llvm.4233312357680831195>
 20dce5b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 20dce60:	be 1d 00 00 00       	mov    $0x1d,%esi
 20dce65:	ff 15 b5 16 29 01    	call   *0x12916b5(%rip)        # 336e520 <_DYNAMIC+0x490>
 20dce6b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
 20dce70:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
 20dce75:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 20dce7a:	48 8b 05 ff e3 29 01 	mov    0x129e3ff(%rip),%rax        # 337b280 <_DYNAMIC+0xd1f0>
 20dce81:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 20dce86:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
 20dce8b:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 20dce90:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 20dce95:	48 8d 3d 6b 3d 30 fe 	lea    -0x1cfc295(%rip),%rdi        # 3e0c07 <anon.acac3fb8bd464c154ae71c598f09cef5.911.llvm.4233312357680831195>
 20dce9c:	48 8d 15 25 2a 10 01 	lea    0x1102a25(%rip),%rdx        # 31df8c8 <anon.acac3fb8bd464c154ae71c598f09cef5.912.llvm.4233312357680831195>
 20dcea3:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
 20dcea8:	ff 15 12 17 29 01    	call   *0x1291712(%rip)        # 336e5c0 <_DYNAMIC+0x530>
 20dceae:	48 8d 3d 88 4f 58 fe 	lea    -0x1a7b078(%rip),%rdi        # 661e3d <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.429.llvm.1488487092125395986+0x205>
 20dceb5:	48 8d 15 84 58 0f 01 	lea    0x10f5884(%rip),%rdx        # 31d2740 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.471.llvm.1488487092125395986+0x60>
 20dcebc:	be 2a 00 00 00       	mov    $0x2a,%esi
 20dcec1:	ff 15 31 17 29 01    	call   *0x1291731(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dcec7:	48 8d 3d 99 4f 58 fe 	lea    -0x1a7b067(%rip),%rdi        # 661e67 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.480.llvm.1488487092125395986>
 20dcece:	48 8d 15 83 58 0f 01 	lea    0x10f5883(%rip),%rdx        # 31d2758 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.481.llvm.1488487092125395986>
 20dced5:	be 29 00 00 00       	mov    $0x29,%esi
 20dceda:	ff 15 18 17 29 01    	call   *0x1291718(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dcee0:	48 8d 3d 30 25 59 fe 	lea    -0x1a6dad0(%rip),%rdi        # 66f417 <anon.acac3fb8bd464c154ae71c598f09cef5.889.llvm.4233312357680831195>
 20dcee7:	48 8d 15 aa 29 10 01 	lea    0x11029aa(%rip),%rdx        # 31df898 <anon.acac3fb8bd464c154ae71c598f09cef5.908.llvm.4233312357680831195>
 20dceee:	be 29 00 00 00       	mov    $0x29,%esi
 20dcef3:	ff 15 ff 16 29 01    	call   *0x12916ff(%rip)        # 336e5f8 <_DYNAMIC+0x568>
 20dcef9:	c6 44 24 08 03       	movb   $0x3,0x8(%rsp)
 20dcefe:	48 8d 3d 0c 51 58 fe 	lea    -0x1a7aef4(%rip),%rdi        # 662011 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.483.llvm.1488487092125395986+0x15c>
 20dcf05:	48 8d 0d b4 49 0f 01 	lea    0x10f49b4(%rip),%rcx        # 31d18c0 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.141.llvm.1488487092125395986+0x20>
 20dcf0c:	4c 8d 05 0d 5a 0f 01 	lea    0x10f5a0d(%rip),%r8        # 31d2920 <anon.1ca2ff5c8c37f9b5a4fbabf7612af358.481.llvm.1488487092125395986+0x1c8>
 20dcf13:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 20dcf18:	be 1d 00 00 00       	mov    $0x1d,%esi
 20dcf1d:	ff 15 fd 15 29 01    	call   *0x12915fd(%rip)        # 336e520 <_DYNAMIC+0x490>
 20dcf23:	48 8d 3d 84 6f 58 fe 	lea    -0x1a7907c(%rip),%rdi        # 663eae <anon.7c5fb0e1f11b0e1fe512c12c39e02045.61.llvm.15848842468470254530>
 20dcf2a:	48 8d 0d b7 6d 0f 01 	lea    0x10f6db7(%rip),%rcx        # 31d3ce8 <anon.7c5fb0e1f11b0e1fe512c12c39e02045.60.llvm.15848842468470254530>
 20dcf31:	4c 8d 05 68 81 0f 01 	lea    0x10f8168(%rip),%r8        # 31d50a0 <anon.7c5fb0e1f11b0e1fe512c12c39e02045.587.llvm.15848842468470254530>
 20dcf38:	48 8d 54 24 07       	lea    0x7(%rsp),%rdx
 20dcf3d:	be 2b 00 00 00       	mov    $0x2b,%esi
 20dcf42:	ff 15 d8 15 29 01    	call   *0x12915d8(%rip)        # 336e520 <_DYNAMIC+0x490>
 20dcf48:	cc                   	int3
 20dcf49:	cc                   	int3
 20dcf4a:	cc                   	int3
 20dcf4b:	cc                   	int3
 20dcf4c:	cc                   	int3
 20dcf4d:	cc                   	int3
 20dcf4e:	cc                   	int3
 20dcf4f:	cc                   	int3
