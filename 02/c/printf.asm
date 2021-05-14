
global main
extern printf

section .data
    msg db "Testing %i, %i...", 0x0a, 0x00

section .text

main:
    push rbp
    mov rdi, msg
    mov rsi, 0x09
    mov rax, 0x00
    call printf

    pop rbp

    mov rax, 0x00
    ret
