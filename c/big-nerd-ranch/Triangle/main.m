#include <stdio.h>

float remainingAngle(angleA, angleB) {
    // hacky error handling
    if ((angleA + angleB) > 180) return 0;

    return 180 - angleA - angleB;
}

int main(int argc, char *argv[]) {
    float angleC = remainingAngle(30.0, 60.0);

    printf("The third angle is %.2f\n", angleC);

    return 0;
}
