%.o: %.asm
	nasm -f elf64 $^ -o $@

%.o: %.c
	gcc -c $^ -o $@


all: function.o main.o
	gcc -no-pie $^ -o function
