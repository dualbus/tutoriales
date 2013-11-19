void foo() {
  char c = *(char *)(0xffffffff);
}
void bar() {
  foo();
}
void baz() {
  bar();
}
void quux() {
  baz();
}
void f1() {
  quux();
}
void f2() {
  f1();
}

int main() {
  f2();
}
