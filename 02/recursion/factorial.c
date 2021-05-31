

#include <stdio.h>
#include <time.h>
#include <pthread.h>
#include "factorial.h"

extern long factorial(long a);

pthread_mutex_t gcc_lock = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t davi_lock = PTHREAD_MUTEX_INITIALIZER;

long DAVI, GCC = 0;

int main(void)
{
    benchmark(run_davi);
    return 0;
}


void* run_davi(void* v)
{
    clock_t start, end;

    long cmp[] = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880};

    for (long i = 0; i < 125000000; i++)
    {
        factorial(10);
        DAVI =  DAVI + 1;

    }

    return NULL;

}


void benchmark(void* (*runner) (void*))
{
    int size = 8;
    pthread_t threads[8];
    void* result;
    clock_t now = clock();


    for (short s = 0; s < size; s++)
    {
        pthread_create(&threads[s], NULL, runner, NULL);
    }

    for (short t = 0; t < size; t++)
    {
        pthread_join(threads[t], &result);
    }


    printf("%lf\n", (double) (clock()- now) / CLOCKS_PER_SEC);

}
