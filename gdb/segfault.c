#include <stdio.h>

int main() {
  char *p;

  p = (char *)(0xffffffff);
  printf("%c\n", *p);
}
