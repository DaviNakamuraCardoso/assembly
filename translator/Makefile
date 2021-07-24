# Jack VM Translator for x86_64 Linux Assembly
# (c) 2021 Davi Nakamura Cardoso
#
# 
#
#
# 

CC = gcc 


# Header files 
H = ./include
L = ./libs


./libs/lib%.a:  
	ar -rcs $@ $^

%.o: %.c
	$(CC) -I $(H) -c $^ -o $@

./obj/%.o: ./src/%.c
	$(CC) -I $(H) -c $^ -o $@

LIBS = ./libs/libparser.a


all: main.o $(LIBS) 
	$(CC) -L $(L) main.o -o jack -lparser 
	


PARSER = ./obj/parser/parser.o

./libs/libparser.a: $(PARSER)
