#include <stdio.h>
#include <string.h>

/* Non-NULL terminated string */

int main() {
  char packet[25];
  char *name = packet;
  char *version = &packet[8];

  strcpy(name, "programa");
  strcpy(version, "1.2.3");
  puts(name);
}
