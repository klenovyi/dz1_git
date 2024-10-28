#include <stdio.h>
#include <assert.h>
#include "factorial.h" 

int main() {
  assert(factorial(0) == 1);
  assert(factorial(1) == 1);
  assert(factorial(5) == 120);
  assert(factorial(10) == 3628800);

  printf("Все тесты пройдены!\n");
  return 0;
}
