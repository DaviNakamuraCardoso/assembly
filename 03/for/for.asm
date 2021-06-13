
section .data
    hello db "Hello, World!", 0x0a
    len equ $ - hello

section .text
    global _start



_start:

    pop     rdi
    call    _prints

    mov     rax, 0x3c
    mov     rdi, 0x00
    syscall


; Prints hello a certain number of times
_prints:
    ; rbx = param1
    mov     rbx, rdi

    ; rcx = 0
    mov     rcx, 0x00

    ; for rcx < rbx
    FOR:
    cmp     rcx, rbx
    jg      ENDFOR

    ; prints
    push    rcx
    mov     rax, 0x01
    mov     rdi, 0x01
    mov     rsi, hello
    mov     rdx, len
    syscall

    ; rcx++
    pop     rcx
    inc     rcx
    jmp     FOR

    ENDFOR:
    mov     rax, 0x00
    ret
