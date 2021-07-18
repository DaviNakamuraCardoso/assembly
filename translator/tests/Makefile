# Makefile for the test suite of Jack VM translator 
#
#

H = ./include

%.o: %.c
	gcc -I $(H) -c $^ -o $@

./obj/%.o: ./src/%.c
	gcc -c $^ -o $@

OBJECTS = ./obj/utils/test.o

all: tests.o $(OBJECTS)
	gcc $^ -o tests
