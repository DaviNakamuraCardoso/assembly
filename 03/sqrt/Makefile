
main.o: main.c
	gcc -c $^ -o $@

sqrt.o: sqrt.asm
	nasm -f elf64 $^ -o $@

all: sqrt.o main.o
	gcc -no-pie $^ -o sqrt
