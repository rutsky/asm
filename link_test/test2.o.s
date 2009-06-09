
test2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <test2>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d fc             	mov    %edi,-0x4(%rbp)
   7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   a:	c9                   	leaveq 
   b:	c3                   	retq   
