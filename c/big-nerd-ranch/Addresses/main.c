#include <stdio.h>

int main(int charc, const char *argv[]) {
    int i = 17;
    int *addressOfI = &i;
    // %p for memory address
    printf("i stores its value at %p\n", addressOfI);
    printf("the int stored at addressOfI is %d\n", *addressOfI);

    *addressOfI = 89;
    printf("Now i is %d\n", i);

    printf("An int is %zu bytes\n", sizeof(i));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));

    // used to explicitly say nothing is stored
    float *myPointer = NULL;
    printf("%d\n", myPointer == 0);


    // Challenge
    printf("A float consumes %zu bytes\n", sizeof(float));

    return 0;
}
