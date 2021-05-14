
section .data
    text db "Hello, World!", 0x0a, 0x00
    hey db "Hey!", 0x0a, 0x00

section .text
    global _start

_start:
    mov rax, text
    call _print

    mov rax, hey
    call _print

    mov rax, 0x3c
    mov rdi, 0
    syscall

_print:
    push rax
    mov rbx, 0

_loop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0x00
    jne _loop

    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall
    ret
