# Makefile
# Vladimir Rutsky <altsysrq@gmail.com>
# 09.06.2009

all:
	g++ -c -Wall -o main.o  main.cpp
	g++ -c -Wall -o test1.o test1.cpp
	gcc -c -Wall -o test2.o test2.c
	nasm -f elf64 -Xgnu -o test3.o test3.asm
	
	objdump -d main.o > main.o.s
	objdump -d test1.o > test1.o.s
	objdump -d test2.o > test2.o.s
	objdump -d test3.o > test3.o.s
	
	g++ -o binary main.o test1.o test2.o test3.o
	objdump -d binary > binary.s

clean:
	rm -f *.o
	rm -f *.o.s
	rm -f binary
	rm -f binary.s
