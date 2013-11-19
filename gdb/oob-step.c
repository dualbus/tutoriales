#include <stdio.h>

#define ARRAY_N 4

int main() {
  int i;
  char array[ARRAY_N] = {
    'A', 'B', 'C', 'D'
  };

  for(i = 0; i < 4; i++) {
    printf("%c\n", array[i]);
  }
}
