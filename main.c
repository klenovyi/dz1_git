#include <stdio.h>
#include "factorial.h"

int main() {
    int number;
    number = 1;
    // NEW INFORMATION IN FILE
    printf("Input number to find factorial of this number: ");
    scanf("%d", &number);

    unsigned long long result = factorial(number);
    
    if (result == 0 && number < 0) {
        printf("Факториал отрицательного числа не определен\n");
    } else {

        printf("Факториал %d равен %llu\n", number, result);
    }
    printf("DEV1 \n");
    return 0;
}
