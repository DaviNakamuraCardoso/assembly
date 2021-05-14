
section .data
    question db "What is your name? "
    hello db "Hello, ",

section .bss
    name resb 0x10

section .text
    global _start

_start:

    call _question
    call _get_name
    call _print_hello
    call _print_name

    mov rax, 0x3c
    mov rdi, 0x00
    syscall

_question:
    mov rax, 1
    mov rdi, 1
    mov rsi, question
    mov rdx, 0x13
    syscall
    ret

_print_hello:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, 0x07
    syscall
    ret

_print_name:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 0x10
    syscall
    ret

_get_name:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 0x10
    syscall
    ret
