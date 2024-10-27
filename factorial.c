#include "factorial.h"

// Реализация функции для вычисления факториала
unsigned long long factorial(int n) {
    printf("DEV2 \n");
    if (n < 0) {
        return 0; // Факториал отрицательного числа не определен
    }
    if (n == 0 || n == 1) {
        return 1; // Факториал 0 и 1 равен 1

    }
    unsigned long long result = 1;

    for (int i = 2; i <= n; i++) {
        result *= i;

    }
    // NEW INFORMATION IN FILE
    printf("DEV2 \n");
    return result;
}

