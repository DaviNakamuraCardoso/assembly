# Makefile for the test suite of Jack VM translator 
#


%.o: %.c
	gcc -c $^ -o $@


all: tests.o
	gcc $^ -o tests
