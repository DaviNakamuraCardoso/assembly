
section .data
    hello db "Hi", 0x0a
    len equ $ - hello

section .text
    global hi

hi:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, len
    syscall
    ret
