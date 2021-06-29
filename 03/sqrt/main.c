/**
*
*       Computes the squareroot
*
*/

#include <stdio.h>

extern unsigned long sqroot(unsigned long a);
extern unsigned long shift(unsigned long a);

int main(void)
{
    unsigned long l = sqroot(4);
    printf("%li\n", l);
    return 0;
}
