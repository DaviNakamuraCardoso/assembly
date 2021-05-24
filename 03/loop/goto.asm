
section .data
    hello db "Hello, World", 0x0a
    len equ $ - hello

section .text 
    global _start 

_start: 
    mov     rdi, 0x0a
    call    hi 
    mov     rax, 0x3c
    mov     rdi, 0x00
    syscall
    
        
hi: 
    mov     rbx, rdi 
    mov     rcx, 0x00
    
    SALUTE: 
    cmp     rcx, rbx 
    je      END
    mov     rax, 0x01
    mov     rdi, 0x01
    mov     rsi, hello
    mov     rdx, len 
    syscall
    inc     rcx
    jmp     SALUTE
    END: 
    ret

