# Makefile
# Vladimir Rutsky <altsysrq@gmail.com>
# 09.06.2009

all:
	g++ -c -g -Wa,-a,-ad -Wall -o main.o main.cpp > main.o.lst
	objdump -d main.o > main.o.s
	g++ -o binary main.o
	objdump -d binary > binary.s

clean:
	rm -f *.o.lst
	rm -f *.o
	rm -f *.o.s
	rm -f binary
	rm -f binary.s
