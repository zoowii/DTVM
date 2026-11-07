
work/pr644-research/dtvm-single-capacity:     file format elf64-x86-64


Disassembly of section .text:

00000000002755f0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)>:
  2755f0:	41 57                	push   %r15
  2755f2:	41 56                	push   %r14
  2755f4:	41 55                	push   %r13
  2755f6:	49 89 cd             	mov    %rcx,%r13
  2755f9:	41 54                	push   %r12
  2755fb:	49 89 d4             	mov    %rdx,%r12
  2755fe:	55                   	push   %rbp
  2755ff:	48 89 f5             	mov    %rsi,%rbp
  275602:	53                   	push   %rbx
  275603:	48 89 fb             	mov    %rdi,%rbx
  275606:	48 83 ec 68          	sub    $0x68,%rsp
  27560a:	80 7e 14 00          	cmpb   $0x0,0x14(%rsi)
  27560e:	75 48                	jne    275658 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x68>
  275610:	4c 89 e9             	mov    %r13,%rcx
  275613:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  275618:	4c 89 e2             	mov    %r12,%rdx
  27561b:	48 89 ee             	mov    %rbp,%rsi
  27561e:	e8 8d f1 ff ff       	call   2747b0 <zen::runtime::WasmMemoryAllocator::reallocateNonBucketMemoryAndFillZerosToNew(zen::runtime::WasmMemoryData const&, unsigned long)>
  275623:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  275628:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  27562d:	66 0f 6f 44 24 40    	movdqa 0x40(%rsp),%xmm0
  275633:	0f 11 03             	movups %xmm0,(%rbx)
  275636:	66 0f 6f 44 24 50    	movdqa 0x50(%rsp),%xmm0
  27563c:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  275640:	48 83 c4 68          	add    $0x68,%rsp
  275644:	48 89 d8             	mov    %rbx,%rax
  275647:	5b                   	pop    %rbx
  275648:	5d                   	pop    %rbp
  275649:	41 5c                	pop    %r12
  27564b:	41 5d                	pop    %r13
  27564d:	41 5e                	pop    %r14
  27564f:	41 5f                	pop    %r15
  275651:	c3                   	ret
  275652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  275658:	44 8b 32             	mov    (%rdx),%r14d
  27565b:	4c 8b 7a 08          	mov    0x8(%rdx),%r15
  27565f:	41 83 fe 02          	cmp    $0x2,%r14d
  275663:	0f 84 ff 00 00 00    	je     275768 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x178>
  275669:	48 8b 76 20          	mov    0x20(%rsi),%rsi
  27566d:	48 39 ce             	cmp    %rcx,%rsi
  275670:	0f 82 4a 01 00 00    	jb     2757c0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1d0>
  275676:	41 83 fe 03          	cmp    $0x3,%r14d
  27567a:	75 94                	jne    275610 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x20>
  27567c:	48 8b 45 00          	mov    0x0(%rbp),%rax
  275680:	66 0f ef c0          	pxor   %xmm0,%xmm0
  275684:	0f 11 44 24 24       	movups %xmm0,0x24(%rsp)
  275689:	83 b8 ac 00 00 00 01 	cmpl   $0x1,0xac(%rax)
  275690:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
  275695:	0f 85 27 34 fa ff    	jne    218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  27569b:	48 8b 80 08 01 00 00 	mov    0x108(%rax),%rax
  2756a2:	8b 38                	mov    (%rax),%edi
  2756a4:	48 8b 42 10          	mov    0x10(%rdx),%rax
  2756a8:	48 c1 e7 10          	shl    $0x10,%rdi
  2756ac:	48 39 f8             	cmp    %rdi,%rax
  2756af:	75 09                	jne    2756ba <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xca>
  2756b1:	48 39 c8             	cmp    %rcx,%rax
  2756b4:	0f 82 16 02 00 00    	jb     2758d0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x2e0>
  2756ba:	4d 89 fa             	mov    %r15,%r10
  2756bd:	4c 8b 4d 40          	mov    0x40(%rbp),%r9
  2756c1:	4c 89 d0             	mov    %r10,%rax
  2756c4:	31 d2                	xor    %edx,%edx
  2756c6:	49 8b 79 08          	mov    0x8(%r9),%rdi
  2756ca:	48 f7 f7             	div    %rdi
  2756cd:	49 8b 01             	mov    (%r9),%rax
  2756d0:	4c 8b 04 d0          	mov    (%rax,%rdx,8),%r8
  2756d4:	49 89 d3             	mov    %rdx,%r11
  2756d7:	4d 85 c0             	test   %r8,%r8
  2756da:	0f 84 80 01 00 00    	je     275860 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x270>
  2756e0:	49 8b 00             	mov    (%r8),%rax
  2756e3:	48 8b 48 08          	mov    0x8(%rax),%rcx
  2756e7:	49 39 ca             	cmp    %rcx,%r10
  2756ea:	74 2c                	je     275718 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x128>
  2756ec:	48 8b 30             	mov    (%rax),%rsi
  2756ef:	48 85 f6             	test   %rsi,%rsi
  2756f2:	0f 84 68 01 00 00    	je     275860 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x270>
  2756f8:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  2756fc:	49 89 c0             	mov    %rax,%r8
  2756ff:	31 d2                	xor    %edx,%edx
  275701:	48 89 c8             	mov    %rcx,%rax
  275704:	48 f7 f7             	div    %rdi
  275707:	49 39 d3             	cmp    %rdx,%r11
  27570a:	0f 85 50 01 00 00    	jne    275860 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x270>
  275710:	48 89 f0             	mov    %rsi,%rax
  275713:	49 39 ca             	cmp    %rcx,%r10
  275716:	75 d4                	jne    2756ec <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xfc>
  275718:	49 8b 10             	mov    (%r8),%rdx
  27571b:	48 8d 42 10          	lea    0x10(%rdx),%rax
  27571f:	48 85 d2             	test   %rdx,%rdx
  275722:	0f 84 38 01 00 00    	je     275860 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x270>
  275728:	48 8b 10             	mov    (%rax),%rdx
  27572b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  275730:	48 8d bd 88 00 00 00 	lea    0x88(%rbp),%rdi
  275737:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  27573c:	48 89 14 24          	mov    %rdx,(%rsp)
  275740:	e8 bb 0f 00 00       	call   276700 <std::__detail::_Map_base<unsigned char*, std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> >, std::allocator<std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> > >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](unsigned char* const&)>
  275745:	48 8b 14 24          	mov    (%rsp),%rdx
  275749:	48 8b 08             	mov    (%rax),%rcx
  27574c:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  275751:	48 29 d0             	sub    %rdx,%rax
  275754:	31 d2                	xor    %edx,%edx
  275756:	48 f7 71 68          	divq   0x68(%rcx)
  27575a:	4c 89 6c c1 08       	mov    %r13,0x8(%rcx,%rax,8)
  27575f:	eb 24                	jmp    275785 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x195>
  275761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  275768:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  27576f:	00 00 00
  275772:	48 39 c8             	cmp    %rcx,%rax
  275775:	72 53                	jb     2757ca <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1da>
  275777:	66 0f ef c0          	pxor   %xmm0,%xmm0
  27577b:	0f 11 44 24 24       	movups %xmm0,0x24(%rsp)
  275780:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
  275785:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  27578a:	31 d2                	xor    %edx,%edx
  27578c:	48 89 ef             	mov    %rbp,%rdi
  27578f:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
  275794:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  275799:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
  27579e:	e8 cd fb ff ff       	call   275370 <zen::runtime::WasmMemoryAllocator::mprotectReadWriteWasmMemoryData(zen::runtime::WasmMemoryData const&, bool)>
  2757a3:	66 0f 6f 44 24 20    	movdqa 0x20(%rsp),%xmm0
  2757a9:	0f 11 03             	movups %xmm0,(%rbx)
  2757ac:	66 0f 6f 44 24 30    	movdqa 0x30(%rsp),%xmm0
  2757b2:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  2757b6:	e9 85 fe ff ff       	jmp    275640 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x50>
  2757bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2757c0:	41 83 fe 03          	cmp    $0x3,%r14d
  2757c4:	0f 85 46 fe ff ff    	jne    275610 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x20>
  2757ca:	4c 89 ea             	mov    %r13,%rdx
  2757cd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  2757d2:	48 89 ee             	mov    %rbp,%rsi
  2757d5:	4d 8b 74 24 10       	mov    0x10(%r12),%r14
  2757da:	e8 51 e3 ff ff       	call   273b30 <zen::runtime::WasmMemoryAllocator::allocateNonBucketMemory(unsigned long)>
  2757df:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  2757e4:	4d 85 ed             	test   %r13,%r13
  2757e7:	0f 84 d5 32 fa ff    	je     218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  2757ed:	4d 85 ff             	test   %r15,%r15
  2757f0:	0f 84 32 fe ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2757f6:	49 8b 74 24 08       	mov    0x8(%r12),%rsi
  2757fb:	4c 89 f2             	mov    %r14,%rdx
  2757fe:	4c 89 ef             	mov    %r13,%rdi
  275801:	e8 2a d9 f9 ff       	call   213130 <memcpy@plt>
  275806:	41 8b 04 24          	mov    (%r12),%eax
  27580a:	83 f8 02             	cmp    $0x2,%eax
  27580d:	74 29                	je     275838 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x248>
  27580f:	83 f8 01             	cmp    $0x1,%eax
  275812:	74 09                	je     27581d <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x22d>
  275814:	83 f8 03             	cmp    $0x3,%eax
  275817:	0f 84 a3 00 00 00    	je     2758c0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x2d0>
  27581d:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  275822:	48 85 ff             	test   %rdi,%rdi
  275825:	0f 84 fd fd ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  27582b:	e8 60 db f9 ff       	call   213390 <free@plt>
  275830:	e9 f3 fd ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275835:	0f 1f 00             	nopl   (%rax)
  275838:	48 be 00 00 00 00 02 	movabs $0x200000000,%rsi
  27583f:	00 00 00
  275842:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  275847:	e8 34 e3 f9 ff       	call   213b80 <munmap@plt>
  27584c:	85 c0                	test   %eax,%eax
  27584e:	0f 84 d4 fd ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275854:	e9 69 32 fa ff       	jmp    218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  275859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  275860:	bf 18 00 00 00       	mov    $0x18,%edi
  275865:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  27586a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  27586f:	4c 89 0c 24          	mov    %r9,(%rsp)
  275873:	e8 58 da f9 ff       	call   2132d0 <operator new(unsigned long)@plt>
  275878:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  27587d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  275882:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  275888:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  27588f:	48 89 c1             	mov    %rax,%rcx
  275892:	48 8b 3c 24          	mov    (%rsp),%rdi
  275896:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  27589b:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  2758a0:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
  2758a7:	00
  2758a8:	48 89 41 08          	mov    %rax,0x8(%rcx)
  2758ac:	e8 2f 0f 00 00       	call   2767e0 <std::_Hashtable<unsigned char*, std::pair<unsigned char* const, unsigned char*>, std::allocator<std::pair<unsigned char* const, unsigned char*> >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<unsigned char* const, unsigned char*>, false>*, unsigned long)>
  2758b1:	48 83 c0 10          	add    $0x10,%rax
  2758b5:	e9 6e fe ff ff       	jmp    275728 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x138>
  2758ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  2758c0:	4c 89 e6             	mov    %r12,%rsi
  2758c3:	48 89 ef             	mov    %rbp,%rdi
  2758c6:	e8 95 e6 ff ff       	call   273f60 <zen::runtime::WasmMemoryAllocator::internalFreeWasmMemory(zen::runtime::WasmMemoryData const&) [clone .part.0]>
  2758cb:	e9 58 fd ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2758d0:	48 29 fe             	sub    %rdi,%rsi
  2758d3:	45 31 c9             	xor    %r9d,%r9d
  2758d6:	4c 01 ff             	add    %r15,%rdi
  2758d9:	31 d2                	xor    %edx,%edx
  2758db:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  2758e1:	b9 32 00 00 00       	mov    $0x32,%ecx
  2758e6:	e8 75 ea f9 ff       	call   214360 <mmap@plt>
  2758eb:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  2758ef:	0f 84 cd 31 fa ff    	je     218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  2758f5:	4d 8b 54 24 08       	mov    0x8(%r12),%r10
  2758fa:	e9 be fd ff ff       	jmp    2756bd <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xcd>
  2758ff:	48 89 c3             	mov    %rax,%rbx
  275902:	e9 c0 31 fa ff       	jmp    218ac7 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]+0x5>
  275907:	90                   	nop
  275908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  27590f:	00
