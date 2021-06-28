/**
*
*       Imports a factorial function written in Assembly
*
*/

#include <stdio.h>

extern unsigned long fact(unsigned long a);

int main(void)
{
    unsigned long l = fact(15);
    printf("%li\n", l);

    return 0;
}
