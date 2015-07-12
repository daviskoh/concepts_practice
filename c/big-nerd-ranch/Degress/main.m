#include <stdio.h>
#include <stdlib.h>

// global - accessed anywhere
float lastTemperature = 0;

// static - accessed anywhere within file
static float currentTemp;

float fahrenheightFromCelsius(float cel) {
    return cel * 1.8 + 32.0;
}

int main(int argc, const char *argv[]) {
    float freezeInc = fahrenheightFromCelsius(0);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInc);
    return EXIT_SUCCESS;
}
