factorial.o: factorial.asm
	nasm -f elf64 factorial.asm -o factorial.o

factorial: factorial.c factorial.o
	gcc -no-pie factorial.o factorial.c -lpthread -o factorial
