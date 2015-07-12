#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays) {
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char *argv[]) {
    congratulateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);

    return 0;
}
