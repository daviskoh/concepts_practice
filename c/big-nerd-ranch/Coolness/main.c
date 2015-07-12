#include <stdio.h>

int main(int argc, const char *argv[]) {
    int i = 0;
    
    // run until condition is FALSE
    while (i < 12) {
        printf("Davis is Cool\n");
        i++;
    }

    for (int i = 0; i < 12; i++) {
        printf("Davis is CoolER than before\n");
    }

    // Challenge
    for (int i = 99; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) printf("Found one!\n");
    }

    return 0;
}
