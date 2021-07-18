/*
 *
 *      Test functions
 *
 *
*/


#include <stdio.h>
#include <stdlib.h>


unsigned int test(unsigned int (*tests[]) (void))
{
    for (int i = 0; tests[i] != NULL; i++)
    {
        if (tests[i]())  
        {
            printf("Error in test number %i.\n", i);
            return 1; 
        }
    }

    return 0; 
}
