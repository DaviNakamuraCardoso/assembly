/**
 *      Test suite for the Jack Virtual Machine Translator 
 *
 *      (c) 2021 Davi Nakamura Cardoso
 *
*/

#include <stdio.h>
#include <stdlib.h>
#include <utils/test.h>



int main(void)
{
    inline unsigned int this(void)
    {
        return 0; 

    }

    inline unsigned int that(void)
    {
        return 0; 
    }

   
    unsigned int (*tests[]) (void) = {
        this, that, NULL
    }; 
    
    printf("Result is %u.\n", test(tests));

    printf("All tests passed.\n"); 

    return 0; 
}

