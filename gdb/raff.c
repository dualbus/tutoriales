#include <stdio.h>
#include <string.h>

char *raff()
{
    char array[25];
    strncpy(array, "Hola, ¿qué hace?", sizeof(array));
    return array;
}

int main() {
  char *p;

  p = raff();
  puts(p);

  return 0;
}
