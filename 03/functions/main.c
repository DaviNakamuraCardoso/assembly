/**
*
*       Main program
*
*/

#include <stdio.h>


extern int hello(void);

int main(void)
{
    int a = hello();

    printf("%i\n", a);
    
    return 0;
}
