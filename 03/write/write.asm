
section .data
    filename db "hello.txt", 0x00
    hello db "Hello, World", 0x0a
    len equ $ - hello

section .text
    global _start

_start:

    ;  Open a new file called hello
    mov     rax, 0x02
    mov     rdi, filename
    mov     rsi, 64+1
    mov     rdx, 0644o
    syscall

    ; Write "Hello, World" to the file
    mov     rdi, rax
    mov     rax, 0x01
    mov     rsi, hello
    mov     rdx, len
    syscall

    ; Close the file
    mov     rax, 0x03
    pop     rdi
    syscall

    ; Exit
    mov     rax, 0x3c
    mov     rsi, 0x00
    syscall
