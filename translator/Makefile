# Jack VM Translator for x86_64 Linux Assembly
# (c) 2021 Davi Nakamura Cardoso
#
# 
#

%.o: %.c
	gcc -c $^ -o $@

all: main.o
	gcc $^ -o jack 
	

