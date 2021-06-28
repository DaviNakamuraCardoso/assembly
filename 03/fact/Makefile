
fact.o: fact.asm
	nasm -f elf64 fact.asm -o fact.o

main.o: main.c
	gcc -c $^ -o $@

all: main.o fact.o
	gcc -no-pie main.o fact.o -o fact
