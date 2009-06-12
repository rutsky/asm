
binary_O1:     file format elf64-x86-64


Disassembly of section .init:

0000000000400430 <_init>:
  400430:	48 83 ec 08          	sub    $0x8,%rsp
  400434:	e8 73 00 00 00       	callq  4004ac <call_gmon_start>
  400439:	e8 02 01 00 00       	callq  400540 <frame_dummy>
  40043e:	e8 fd 01 00 00       	callq  400640 <__do_global_ctors_aux>
  400443:	48 83 c4 08          	add    $0x8,%rsp
  400447:	c3                   	retq   

Disassembly of section .plt:

0000000000400448 <__libc_start_main@plt-0x10>:
  400448:	ff 35 22 05 20 00    	pushq  0x200522(%rip)        # 600970 <_GLOBAL_OFFSET_TABLE_+0x8>
  40044e:	ff 25 24 05 20 00    	jmpq   *0x200524(%rip)        # 600978 <_GLOBAL_OFFSET_TABLE_+0x10>
  400454:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400458 <__libc_start_main@plt>:
  400458:	ff 25 22 05 20 00    	jmpq   *0x200522(%rip)        # 600980 <_GLOBAL_OFFSET_TABLE_+0x18>
  40045e:	68 00 00 00 00       	pushq  $0x0
  400463:	e9 e0 ff ff ff       	jmpq   400448 <_init+0x18>

0000000000400468 <__gxx_personality_v0@plt>:
  400468:	ff 25 1a 05 20 00    	jmpq   *0x20051a(%rip)        # 600988 <_GLOBAL_OFFSET_TABLE_+0x20>
  40046e:	68 01 00 00 00       	pushq  $0x1
  400473:	e9 d0 ff ff ff       	jmpq   400448 <_init+0x18>

Disassembly of section .text:

0000000000400480 <_start>:
  400480:	31 ed                	xor    %ebp,%ebp
  400482:	49 89 d1             	mov    %rdx,%r9
  400485:	5e                   	pop    %rsi
  400486:	48 89 e2             	mov    %rsp,%rdx
  400489:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40048d:	50                   	push   %rax
  40048e:	54                   	push   %rsp
  40048f:	49 c7 c0 a0 05 40 00 	mov    $0x4005a0,%r8
  400496:	48 c7 c1 b0 05 40 00 	mov    $0x4005b0,%rcx
  40049d:	48 c7 c7 85 05 40 00 	mov    $0x400585,%rdi
  4004a4:	e8 af ff ff ff       	callq  400458 <__libc_start_main@plt>
  4004a9:	f4                   	hlt    
  4004aa:	90                   	nop    
  4004ab:	90                   	nop    

00000000004004ac <call_gmon_start>:
  4004ac:	48 83 ec 08          	sub    $0x8,%rsp
  4004b0:	48 8b 05 a9 04 20 00 	mov    0x2004a9(%rip),%rax        # 600960 <_DYNAMIC+0x1d0>
  4004b7:	48 85 c0             	test   %rax,%rax
  4004ba:	74 02                	je     4004be <call_gmon_start+0x12>
  4004bc:	ff d0                	callq  *%rax
  4004be:	48 83 c4 08          	add    $0x8,%rsp
  4004c2:	c3                   	retq   
  4004c3:	90                   	nop    
  4004c4:	90                   	nop    
  4004c5:	90                   	nop    
  4004c6:	90                   	nop    
  4004c7:	90                   	nop    
  4004c8:	90                   	nop    
  4004c9:	90                   	nop    
  4004ca:	90                   	nop    
  4004cb:	90                   	nop    
  4004cc:	90                   	nop    
  4004cd:	90                   	nop    
  4004ce:	90                   	nop    
  4004cf:	90                   	nop    

00000000004004d0 <__do_global_dtors_aux>:
  4004d0:	55                   	push   %rbp
  4004d1:	48 89 e5             	mov    %rsp,%rbp
  4004d4:	53                   	push   %rbx
  4004d5:	48 83 ec 08          	sub    $0x8,%rsp
  4004d9:	80 3d c0 04 20 00 00 	cmpb   $0x0,0x2004c0(%rip)        # 6009a0 <__bss_start>
  4004e0:	75 4b                	jne    40052d <__do_global_dtors_aux+0x5d>
  4004e2:	b8 80 07 60 00       	mov    $0x600780,%eax
  4004e7:	48 8b 15 ba 04 20 00 	mov    0x2004ba(%rip),%rdx        # 6009a8 <dtor_idx.6087>
  4004ee:	48 2d 78 07 60 00    	sub    $0x600778,%rax
  4004f4:	48 c1 f8 03          	sar    $0x3,%rax
  4004f8:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  4004fc:	48 39 da             	cmp    %rbx,%rdx
  4004ff:	73 25                	jae    400526 <__do_global_dtors_aux+0x56>
  400501:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400508:	48 8d 42 01          	lea    0x1(%rdx),%rax
  40050c:	48 89 05 95 04 20 00 	mov    %rax,0x200495(%rip)        # 6009a8 <dtor_idx.6087>
  400513:	ff 14 c5 78 07 60 00 	callq  *0x600778(,%rax,8)
  40051a:	48 8b 15 87 04 20 00 	mov    0x200487(%rip),%rdx        # 6009a8 <dtor_idx.6087>
  400521:	48 39 da             	cmp    %rbx,%rdx
  400524:	72 e2                	jb     400508 <__do_global_dtors_aux+0x38>
  400526:	c6 05 73 04 20 00 01 	movb   $0x1,0x200473(%rip)        # 6009a0 <__bss_start>
  40052d:	48 83 c4 08          	add    $0x8,%rsp
  400531:	5b                   	pop    %rbx
  400532:	c9                   	leaveq 
  400533:	c3                   	retq   
  400534:	66 66 66 2e 0f 1f 84 	nopw   %cs:0x0(%rax,%rax,1)
  40053b:	00 00 00 00 00 

0000000000400540 <frame_dummy>:
  400540:	55                   	push   %rbp
  400541:	48 83 3d 3f 02 20 00 	cmpq   $0x0,0x20023f(%rip)        # 600788 <__JCR_END__>
  400548:	00 
  400549:	48 89 e5             	mov    %rsp,%rbp
  40054c:	74 1a                	je     400568 <frame_dummy+0x28>
  40054e:	b8 00 00 00 00       	mov    $0x0,%eax
  400553:	48 85 c0             	test   %rax,%rax
  400556:	74 10                	je     400568 <frame_dummy+0x28>
  400558:	bf 88 07 60 00       	mov    $0x600788,%edi
  40055d:	49 89 c3             	mov    %rax,%r11
  400560:	c9                   	leaveq 
  400561:	41 ff e3             	jmpq   *%r11
  400564:	0f 1f 40 00          	nopl   0x0(%rax)
  400568:	c9                   	leaveq 
  400569:	c3                   	retq   
  40056a:	90                   	nop    
  40056b:	90                   	nop    

000000000040056c <_Z9factoriali>:
  40056c:	53                   	push   %rbx
  40056d:	89 fb                	mov    %edi,%ebx
  40056f:	b8 01 00 00 00       	mov    $0x1,%eax
  400574:	85 ff                	test   %edi,%edi
  400576:	74 0b                	je     400583 <_Z9factoriali+0x17>
  400578:	8d 7b ff             	lea    -0x1(%rbx),%edi
  40057b:	e8 ec ff ff ff       	callq  40056c <_Z9factoriali>
  400580:	0f af c3             	imul   %ebx,%eax
  400583:	5b                   	pop    %rbx
  400584:	c3                   	retq   

0000000000400585 <main>:
  400585:	48 83 ec 08          	sub    $0x8,%rsp
  400589:	e8 de ff ff ff       	callq  40056c <_Z9factoriali>
  40058e:	48 83 c4 08          	add    $0x8,%rsp
  400592:	c3                   	retq   
  400593:	90                   	nop    
  400594:	90                   	nop    
  400595:	90                   	nop    
  400596:	90                   	nop    
  400597:	90                   	nop    
  400598:	90                   	nop    
  400599:	90                   	nop    
  40059a:	90                   	nop    
  40059b:	90                   	nop    
  40059c:	90                   	nop    
  40059d:	90                   	nop    
  40059e:	90                   	nop    
  40059f:	90                   	nop    

00000000004005a0 <__libc_csu_fini>:
  4005a0:	f3 c3                	repz retq 
  4005a2:	66 66 66 66 66 2e 0f 	nopw   %cs:0x0(%rax,%rax,1)
  4005a9:	1f 84 00 00 00 00 00 

00000000004005b0 <__libc_csu_init>:
  4005b0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005b5:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005ba:	48 8d 2d a3 01 20 00 	lea    0x2001a3(%rip),%rbp        # 600764 <__init_array_end>
  4005c1:	4c 8d 3d 9c 01 20 00 	lea    0x20019c(%rip),%r15        # 600764 <__init_array_end>
  4005c8:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005cd:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005d2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005d7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005dc:	48 83 ec 38          	sub    $0x38,%rsp
  4005e0:	4c 29 fd             	sub    %r15,%rbp
  4005e3:	41 89 fe             	mov    %edi,%r14d
  4005e6:	49 89 f5             	mov    %rsi,%r13
  4005e9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ed:	49 89 d4             	mov    %rdx,%r12
  4005f0:	e8 3b fe ff ff       	callq  400430 <_init>
  4005f5:	48 85 ed             	test   %rbp,%rbp
  4005f8:	74 1c                	je     400616 <__libc_csu_init+0x66>
  4005fa:	31 db                	xor    %ebx,%ebx
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400600:	4c 89 e2             	mov    %r12,%rdx
  400603:	4c 89 ee             	mov    %r13,%rsi
  400606:	44 89 f7             	mov    %r14d,%edi
  400609:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40060d:	48 83 c3 01          	add    $0x1,%rbx
  400611:	48 39 eb             	cmp    %rbp,%rbx
  400614:	72 ea                	jb     400600 <__libc_csu_init+0x50>
  400616:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40061b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400620:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400625:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40062a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40062f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400634:	48 83 c4 38          	add    $0x38,%rsp
  400638:	c3                   	retq   
  400639:	90                   	nop    
  40063a:	90                   	nop    
  40063b:	90                   	nop    
  40063c:	90                   	nop    
  40063d:	90                   	nop    
  40063e:	90                   	nop    
  40063f:	90                   	nop    

0000000000400640 <__do_global_ctors_aux>:
  400640:	55                   	push   %rbp
  400641:	48 89 e5             	mov    %rsp,%rbp
  400644:	53                   	push   %rbx
  400645:	48 83 ec 08          	sub    $0x8,%rsp
  400649:	48 8b 05 18 01 20 00 	mov    0x200118(%rip),%rax        # 600768 <__CTOR_LIST__>
  400650:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400654:	74 19                	je     40066f <__do_global_ctors_aux+0x2f>
  400656:	bb 68 07 60 00       	mov    $0x600768,%ebx
  40065b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400660:	48 83 eb 08          	sub    $0x8,%rbx
  400664:	ff d0                	callq  *%rax
  400666:	48 8b 03             	mov    (%rbx),%rax
  400669:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40066d:	75 f1                	jne    400660 <__do_global_ctors_aux+0x20>
  40066f:	48 83 c4 08          	add    $0x8,%rsp
  400673:	5b                   	pop    %rbx
  400674:	c9                   	leaveq 
  400675:	c3                   	retq   
  400676:	90                   	nop    
  400677:	90                   	nop    

Disassembly of section .fini:

0000000000400678 <_fini>:
  400678:	48 83 ec 08          	sub    $0x8,%rsp
  40067c:	e8 4f fe ff ff       	callq  4004d0 <__do_global_dtors_aux>
  400681:	48 83 c4 08          	add    $0x8,%rsp
  400685:	c3                   	retq   
