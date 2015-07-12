#include <stdio.h>
#include <time.h>

// typedef allows alias for type declaration for re-use
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int charc, const char *argv[]) {
    Person mikey;
    mikey.weightInKilos = 96;
    mikey.heightInMeters = 1.7;

    Person aaron;
    aaron.weightInKilos = 84;
    aaron.heightInMeters = 1.97;

    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey has a BMI of %.2f\n", bodyMassIndex(mikey));

    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron has a BMI of %.2f\n", bodyMassIndex(aaron));

    // Challenge
    // get seconds from 1970 += 4m seconds
    long secondsSince1970Plus4Million = time(NULL) + 4000000;
    // feed into localtime_r
    struct tm then;
    localtime_r(&secondsSince1970Plus4Million, &then);
    // printf
    printf("%d-%d-%d\n", then.tm_mon, then.tm_mday, then.tm_year + 1900);

    return 0;
}
