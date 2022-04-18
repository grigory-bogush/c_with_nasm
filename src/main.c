#include<stdio.h>

extern void _nasm_greeting();

int main() {
  printf("Hello world\n");
  _nasm_greeting();
  return 0;
}