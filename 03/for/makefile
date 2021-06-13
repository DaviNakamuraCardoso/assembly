for.o: for.asm
	nasm -f elf64 for.asm -o for.o

for: for.o
	ld for.o -o for
