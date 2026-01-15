section .data 
num1 dd 25
num2 dd 15
num3 dd 30
max_val dd 0
section .text
  global _start

_start:
 mov eax, [num1]
 push rax
 mov ebx, [num2]
 cmp eax,ebx 
 jge check_third

 pop rax
 push rbx
jmp check_third

 check_third:
 mov ecx, [num3]
 pop rax
 cmp eax, ecx
 jge found_max
 mov eax, ecx

 found_max:
 mov [max_val], eax
 mov rdi, rax
 mov rax, 60
 syscall
