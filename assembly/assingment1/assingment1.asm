section .data 
  dividend dq 99
  divisor dq 3

section .text
    global _start

_start:
  mov rax, [dividend]
  mov rbx, [divisor]
  mov rcx, 0
  mov rdx, rax

loop_start:
    ; Keep looping while remainder > divisor
    cmp rdx, rbx          ; compare remainder and divisor
    jae subtract_step      ; if remainder >= divisor, go do subtraction

    mov rax, rcx
    mov rdi, rax
    mov rax, 60
    syscall

subtract_step:
    sub rdx, rbx          ; remainder -= divisor
    inc rcx               ; quotient++
    jmp loop_start        ; repeat
