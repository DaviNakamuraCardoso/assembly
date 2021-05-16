
section .data
    text db "Hello, World", 0x0a, 0x00

section .text 
    extern printf
    global _start

_start: 
    push    rbp
    mov     rdi, 0x00
    mov     rsi, 0x09
    mov     rax, 0x00
    call printf 
    
    pop     rbp
    mov     rax, 0x00
    ret


