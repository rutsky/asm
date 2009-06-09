
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	bf 1e 00 00 00       	mov    $0x1e,%edi
   9:	e8 00 00 00 00       	callq  e <main+0xe>
   e:	bf 1e 00 00 00       	mov    $0x1e,%edi
  13:	e8 00 00 00 00       	callq  18 <main+0x18>
  18:	bf 1e 00 00 00       	mov    $0x1e,%edi
  1d:	e8 00 00 00 00       	callq  22 <main+0x22>
  22:	b8 00 00 00 00       	mov    $0x0,%eax
  27:	c9                   	leaveq 
  28:	c3                   	retq   
