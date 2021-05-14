
section .data
    line db 0x0a
section .bss
    val resb 0x10

section .text
    global _start


_start:
    pop     rax
    mov     rbx, 0x00

    while:
    cmp     rbx, rax
    jge      endwhile
    pop     rdi

    ; Save these two values
    push    rax
    push    rbx

    call    print
    call    println

    ; Recover
    pop     rbx
    pop     rax
    inc     rbx
    jmp     while

    endwhile:

    mov     rax, 0x3c
    mov     rdi, 0x00
    syscall


print:
    mov     [val], rdi
    mov     rbx, 0x00
    FOR:
    mov     cl, [rdi]
    cmp     cl, 0
    je      ENDFOR
    inc     rdi
    inc     rbx

    jmp     FOR
    ENDFOR:

    mov     rax, 0x01
    mov     rdi, 0x01
    mov     rsi, [val]
    mov     rdx, rbx
    syscall
    ret


println:
    mov     rax, 0x01
    mov     rdi, 0x01
    mov     rsi, line
    mov     rdx, 0x01
    syscall
    ret
