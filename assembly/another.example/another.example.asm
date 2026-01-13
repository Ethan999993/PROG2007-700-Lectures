section .data 
numbers dd 10, 20, 30, 40
result dd 0

section .text
  global _start

_start:

  mov eax, [numbers]

  mov ebx, [numbers + 4]
  add eax, ebx

  mov[result], eax 

  mov edi, eax
  mov rax, 60
  syscall

