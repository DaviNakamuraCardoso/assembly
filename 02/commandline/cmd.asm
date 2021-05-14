

section .text
global _start


_start:
    pop rax
    mov rcx, rax
    mov rax, 0x3c
    mov rdi, rcx 
    syscall

print_int:
