

#include <stdio.h>
#include <time.h>
#include "factorial.h"

extern long factorial(long a);

int main(void)
{
    long my, gcc;

    my = benchmark(factorial);
    gcc = benchmark(gcc_factorial);

    printf("My  is \t%li\n", my);
    printf("GCC is \t%li\n", gcc);

    if (gcc > my) printf("GCC wins.\n");
    else if (my > gcc) printf("Davi wins.\n");
    else printf("Tie.\n");


    return 0;
}

long gcc_factorial(long a)
{
    if (a <= 1) return 1;
    return (a * gcc_factorial(a-1));
}

// Runs a function for 5 seconds
long benchmark(long (*function) (long))
{
    long a, b, counter;
    clock_t start, end;

    long cmp[] = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880};

    a = 0;
    counter = 0;
    start = clock();

    do {

        b = function(a);

        // Make sure the result is correct
        if (cmp[a] != b) printf("Error in comparison\n");

        counter++;
        a++;

        // Reset a to 1 if a >= 10
        if (a >= 10) a = 0;

        end = clock();

    } while ((end - start) / CLOCKS_PER_SEC < 5);

    return counter;
}
