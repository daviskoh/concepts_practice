#include <stdio.h>

int square(int n) {
    return n * n;
}

int main(int charc, const char *argv[]) {
    int n = 2;
    printf("\"%d\" squared is \"%d\"\n", n, square(n));
}

