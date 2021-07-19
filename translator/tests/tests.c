/**
 *      Test suite for the Jack Virtual Machine Translator 
 *
 *      (c) 2021 Davi Nakamura Cardoso
 *
*/

#include <stdio.h>
#include <stdlib.h>
#include <tests.h>
#include <utils/test.h>



int main(void)
{

    unsigned int result = testall();
   
    if (!result)
    printf("All tests passed.\n"); 

    return 0; 
}

unsigned int testall(void)
{
    unsigned int (*tests[]) (void) = {
        compilation, 
        NULL
    };

    return test(tests);
}

unsigned int compilation(void)
{
    return system("cd .. && make all");
}
