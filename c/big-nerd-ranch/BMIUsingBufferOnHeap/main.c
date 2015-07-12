#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char *argv[]) {
    // allocate memory for 1 Person struct
    Person *mikey = (Person *)malloc(sizeof(Person));

    // update 2 members (properties) of struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;

    // print out BMI
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey as a BMI of %f\n", mikeyBMI);

    // let memory be recycled
    free(mikey);

    // forget where it was
    mikey = NULL;

    return 0;
}
