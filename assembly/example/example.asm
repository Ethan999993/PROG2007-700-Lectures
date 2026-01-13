section .data

  num1 dq 15
  num2 dq 4
  result dq 0

section .text
  global _start

_start:
  ; load first number
  mov rax , [num1] 

  add rax , [num2]

  mov rbx, 2

  mul rbx

  mov[result], rax

  mov rax, 60 
  mov rdi, [result]
  syscall
