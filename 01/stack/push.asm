global _start

section .text
_start:
    push 1          ; rax = 1
    pop rax
    push 42          ; rbx = 42 
    pop rbx
    int 0x80
