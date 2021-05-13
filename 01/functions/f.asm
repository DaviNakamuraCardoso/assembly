global _start

section .text
_start:
    call func
    mov rax, 1
    int 0x80

func:
    mov rbx, 42
    pop rax
    jmp rax
