global _start 

section .text

_start:
    ; Get the given string
    pop     rcx
    pop     rcx             ; Program name
    pop     rsi             ; String to print 
    pop     rdx             ; Second commmand line argument
    sub     rdx, rsi        ; Bytes to write


    FOR: 

    mov     rax, 0x01       ; Write syscall
    mov     rdi, 0x01       ; stdout
    syscall 

    jmp     FOR
    mov     rax, 0x3c
    mov     rdi, rdx
    syscall

