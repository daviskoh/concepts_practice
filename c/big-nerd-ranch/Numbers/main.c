#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char *argv[]) {
    //int x = 255;
    long x = 255;

    // NOTE: "l" is added after "%" to signifiy long
    // "ll" for long long

    // %d is int as base-10 (decimal number)
    // %u for unsigned decimal number
    printf("x is %ld.\n", x);

    // %o is base-8 (octal)
    printf("In octal, x is %lo.\n", x);

    //%x is base-16 (hexidecimal)
    printf("In hexidecimal, x is %lx.\n", x);

    printf("11 / 3 = %d remainder of %d \n", 11 / 3, 11 % 3);

    // cast operator
    printf("11 / 3.0 = %f\n", 11 / (float)3); // int 3 is cast into float
    // NOTE: "/" uses int division only if BOTH numerator & denominator are int types

    printf("The absolute value of -5 is %d\n", abs(-5));

    double y = 12345.6789;

    // NOTE: .2 below is used to limit to 2 digits

    // %f is decimal notation
    printf("y is %.2f\n", y);
    // %e is scientific notation
    printf("y is %.2e\n", y);

    return 0;
}
