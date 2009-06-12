
main_O1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z9factoriali>:
   0:	53                   	push   %rbx
   1:	89 fb                	mov    %edi,%ebx
   3:	b8 01 00 00 00       	mov    $0x1,%eax
   8:	85 ff                	test   %edi,%edi
   a:	74 0b                	je     17 <_Z9factoriali+0x17>
   c:	8d 7b ff             	lea    -0x1(%rbx),%edi
   f:	e8 00 00 00 00       	callq  14 <_Z9factoriali+0x14>
  14:	0f af c3             	imul   %ebx,%eax
  17:	5b                   	pop    %rbx
  18:	c3                   	retq   

0000000000000019 <main>:
  19:	48 83 ec 08          	sub    $0x8,%rsp
  1d:	e8 00 00 00 00       	callq  22 <main+0x9>
  22:	48 83 c4 08          	add    $0x8,%rsp
  26:	c3                   	retq   
