SECTION .data
msg     db      'Hello Waldo', 0Ah

SECTION .text
global  _start

_start:

  mov   edx, 12
  mov   ecx, msg
  mov   ebx, 1
  mov   eax, 4
  int   80h
