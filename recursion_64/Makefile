# Makefile
# Vladimir Rutsky <altsysrq@gmail.com>
# 09.06.2009

all:
	g++ -c -g -Wa,-a,-ad -Wall -O0 -o main_O0.o main.cpp > main_O0.o.lst
	g++ -c -g -Wa,-a,-ad -Wall -O1 -o main_O1.o main.cpp > main_O1.o.lst
	g++ -c -g -Wa,-a,-ad -Wall -O2 -o main_O2.o main.cpp > main_O2.o.lst
	g++ -c -g -Wa,-a,-ad -Wall -O3 -o main_O3.o main.cpp > main_O3.o.lst
	objdump -d main_O0.o > main_O0.o.s
	objdump -d main_O1.o > main_O1.o.s
	objdump -d main_O2.o > main_O2.o.s
	objdump -d main_O3.o > main_O3.o.s
	g++ -o binary_O0 main_O0.o
	g++ -o binary_O1 main_O1.o
	g++ -o binary_O2 main_O2.o
	g++ -o binary_O3 main_O3.o
	objdump -d binary_O0 > binary_O0.s
	objdump -d binary_O1 > binary_O1.s
	objdump -d binary_O2 > binary_O2.s
	objdump -d binary_O3 > binary_O3.s

clean:
	rm -f *.o.lst
	rm -f *.o
	rm -f *.o.s
	rm -f binary_O0 binary_O1 binary_O2 binary_O3
	rm -f binary_O0.s binary_O1.s binary_O2.s binary_O3.s
