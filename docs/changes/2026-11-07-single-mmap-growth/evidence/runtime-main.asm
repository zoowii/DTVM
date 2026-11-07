
work/pr643/dtvm-pr643-d6f31ef:     file format elf64-x86-64


Disassembly of section .text:

00000000002755f0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)>:
  2755f0:	41 57                	push   %r15
  2755f2:	49 89 f7             	mov    %rsi,%r15
  2755f5:	41 56                	push   %r14
  2755f7:	41 55                	push   %r13
  2755f9:	41 54                	push   %r12
  2755fb:	49 89 cc             	mov    %rcx,%r12
  2755fe:	55                   	push   %rbp
  2755ff:	48 89 d5             	mov    %rdx,%rbp
  275602:	53                   	push   %rbx
  275603:	48 89 fb             	mov    %rdi,%rbx
  275606:	48 83 ec 58          	sub    $0x58,%rsp
  27560a:	80 7e 14 00          	cmpb   $0x0,0x14(%rsi)
  27560e:	75 48                	jne    275658 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x68>
  275610:	4c 89 e1             	mov    %r12,%rcx
  275613:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  275618:	48 89 ea             	mov    %rbp,%rdx
  27561b:	4c 89 fe             	mov    %r15,%rsi
  27561e:	e8 8d f1 ff ff       	call   2747b0 <zen::runtime::WasmMemoryAllocator::reallocateNonBucketMemoryAndFillZerosToNew(zen::runtime::WasmMemoryData const&, unsigned long)>
  275623:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  275628:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
  27562d:	66 0f 6f 44 24 30    	movdqa 0x30(%rsp),%xmm0
  275633:	0f 11 03             	movups %xmm0,(%rbx)
  275636:	66 0f 6f 44 24 40    	movdqa 0x40(%rsp),%xmm0
  27563c:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  275640:	48 83 c4 58          	add    $0x58,%rsp
  275644:	48 89 d8             	mov    %rbx,%rax
  275647:	5b                   	pop    %rbx
  275648:	5d                   	pop    %rbp
  275649:	41 5c                	pop    %r12
  27564b:	41 5d                	pop    %r13
  27564d:	41 5e                	pop    %r14
  27564f:	41 5f                	pop    %r15
  275651:	c3                   	ret
  275652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  275658:	44 8b 0a             	mov    (%rdx),%r9d
  27565b:	41 8d 41 fe          	lea    -0x2(%r9),%eax
  27565f:	83 f8 01             	cmp    $0x1,%eax
  275662:	77 ac                	ja     275610 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x20>
  275664:	4c 8b 6a 08          	mov    0x8(%rdx),%r13
  275668:	48 39 4e 20          	cmp    %rcx,0x20(%rsi)
  27566c:	73 62                	jae    2756d0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xe0>
  27566e:	4c 8b 72 10          	mov    0x10(%rdx),%r14
  275672:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  275677:	48 89 ca             	mov    %rcx,%rdx
  27567a:	e8 b1 e4 ff ff       	call   273b30 <zen::runtime::WasmMemoryAllocator::allocateNonBucketMemory(unsigned long)>
  27567f:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  275684:	4d 85 e4             	test   %r12,%r12
  275687:	0f 84 35 34 fa ff    	je     218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  27568d:	4d 85 ed             	test   %r13,%r13
  275690:	74 96                	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275692:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  275696:	4c 89 f2             	mov    %r14,%rdx
  275699:	4c 89 e7             	mov    %r12,%rdi
  27569c:	e8 8f da f9 ff       	call   213130 <memcpy@plt>
  2756a1:	8b 45 00             	mov    0x0(%rbp),%eax
  2756a4:	83 f8 02             	cmp    $0x2,%eax
  2756a7:	74 77                	je     275720 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x130>
  2756a9:	83 f8 01             	cmp    $0x1,%eax
  2756ac:	74 09                	je     2756b7 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xc7>
  2756ae:	83 f8 03             	cmp    $0x3,%eax
  2756b1:	0f 84 89 00 00 00    	je     275740 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x150>
  2756b7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  2756bb:	48 85 ff             	test   %rdi,%rdi
  2756be:	0f 84 64 ff ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2756c4:	e8 c7 dc f9 ff       	call   213390 <free@plt>
  2756c9:	e9 5a ff ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2756ce:	66 90                	xchg   %ax,%ax
  2756d0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  2756d4:	0f 11 44 24 34       	movups %xmm0,0x34(%rsp)
  2756d9:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
  2756de:	41 83 f9 03          	cmp    $0x3,%r9d
  2756e2:	74 6c                	je     275750 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x160>
  2756e4:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  2756e9:	31 d2                	xor    %edx,%edx
  2756eb:	4c 89 ff             	mov    %r15,%rdi
  2756ee:	44 89 4c 24 30       	mov    %r9d,0x30(%rsp)
  2756f3:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
  2756f8:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  2756fd:	e8 6e fc ff ff       	call   275370 <zen::runtime::WasmMemoryAllocator::mprotectReadWriteWasmMemoryData(zen::runtime::WasmMemoryData const&, bool)>
  275702:	66 0f 6f 44 24 30    	movdqa 0x30(%rsp),%xmm0
  275708:	0f 11 03             	movups %xmm0,(%rbx)
  27570b:	66 0f 6f 44 24 40    	movdqa 0x40(%rsp),%xmm0
  275711:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  275715:	e9 26 ff ff ff       	jmp    275640 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x50>
  27571a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  275720:	48 be 00 00 00 00 02 	movabs $0x200000000,%rsi
  275727:	00 00 00
  27572a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  27572e:	e8 4d e4 f9 ff       	call   213b80 <munmap@plt>
  275733:	85 c0                	test   %eax,%eax
  275735:	0f 84 ed fe ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  27573b:	e9 82 33 fa ff       	jmp    218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  275740:	48 89 ee             	mov    %rbp,%rsi
  275743:	4c 89 ff             	mov    %r15,%rdi
  275746:	e8 15 e8 ff ff       	call   273f60 <zen::runtime::WasmMemoryAllocator::internalFreeWasmMemory(zen::runtime::WasmMemoryData const&) [clone .part.0]>
  27574b:	e9 d8 fe ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275750:	4c 8b 56 40          	mov    0x40(%rsi),%r10
  275754:	4c 89 e8             	mov    %r13,%rax
  275757:	31 d2                	xor    %edx,%edx
  275759:	4d 8b 42 08          	mov    0x8(%r10),%r8
  27575d:	49 f7 f0             	div    %r8
  275760:	49 8b 02             	mov    (%r10),%rax
  275763:	4c 8b 1c d0          	mov    (%rax,%rdx,8),%r11
  275767:	48 89 d6             	mov    %rdx,%rsi
  27576a:	4d 85 db             	test   %r11,%r11
  27576d:	74 79                	je     2757e8 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1f8>
  27576f:	49 8b 03             	mov    (%r11),%rax
  275772:	48 8b 48 08          	mov    0x8(%rax),%rcx
  275776:	49 39 cd             	cmp    %rcx,%r13
  275779:	74 24                	je     27579f <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1af>
  27577b:	48 8b 38             	mov    (%rax),%rdi
  27577e:	48 85 ff             	test   %rdi,%rdi
  275781:	74 65                	je     2757e8 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1f8>
  275783:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  275787:	49 89 c3             	mov    %rax,%r11
  27578a:	31 d2                	xor    %edx,%edx
  27578c:	48 89 c8             	mov    %rcx,%rax
  27578f:	49 f7 f0             	div    %r8
  275792:	48 39 d6             	cmp    %rdx,%rsi
  275795:	75 51                	jne    2757e8 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1f8>
  275797:	48 89 f8             	mov    %rdi,%rax
  27579a:	49 39 cd             	cmp    %rcx,%r13
  27579d:	75 dc                	jne    27577b <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x18b>
  27579f:	49 8b 13             	mov    (%r11),%rdx
  2757a2:	48 8d 42 10          	lea    0x10(%rdx),%rax
  2757a6:	48 85 d2             	test   %rdx,%rdx
  2757a9:	74 3d                	je     2757e8 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1f8>
  2757ab:	4c 8b 30             	mov    (%rax),%r14
  2757ae:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
  2757b3:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
  2757b8:	49 8d bf 88 00 00 00 	lea    0x88(%r15),%rdi
  2757bf:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  2757c4:	e8 77 0e 00 00       	call   276640 <std::__detail::_Map_base<unsigned char*, std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> >, std::allocator<std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> > >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](unsigned char* const&)>
  2757c9:	31 d2                	xor    %edx,%edx
  2757cb:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  2757d0:	48 8b 08             	mov    (%rax),%rcx
  2757d3:	48 8b 45 08          	mov    0x8(%rbp),%rax
  2757d7:	4c 29 f0             	sub    %r14,%rax
  2757da:	48 f7 71 68          	divq   0x68(%rcx)
  2757de:	4c 89 64 c1 08       	mov    %r12,0x8(%rcx,%rax,8)
  2757e3:	e9 fc fe ff ff       	jmp    2756e4 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xf4>
  2757e8:	bf 18 00 00 00       	mov    $0x18,%edi
  2757ed:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
  2757f2:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
  2757f7:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
  2757fc:	e8 cf da f9 ff       	call   2132d0 <operator new(unsigned long)@plt>
  275801:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  275806:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  27580b:	4c 89 ea             	mov    %r13,%rdx
  27580e:	49 89 c6             	mov    %rax,%r14
  275811:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  275818:	48 8b 45 08          	mov    0x8(%rbp),%rax
  27581c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  275822:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  275829:	00
  27582a:	4c 89 f1             	mov    %r14,%rcx
  27582d:	49 89 46 08          	mov    %rax,0x8(%r14)
  275831:	e8 ea 0e 00 00       	call   276720 <std::_Hashtable<unsigned char*, std::pair<unsigned char* const, unsigned char*>, std::allocator<std::pair<unsigned char* const, unsigned char*> >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<unsigned char* const, unsigned char*>, false>*, unsigned long)>
  275836:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  27583b:	48 83 c0 10          	add    $0x10,%rax
  27583f:	e9 67 ff ff ff       	jmp    2757ab <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1bb>
  275844:	48 89 c3             	mov    %rax,%rbx
  275847:	e9 7b 32 fa ff       	jmp    218ac7 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]+0x5>
  27584c:	0f 1f 40 00          	nopl   0x0(%rax)
