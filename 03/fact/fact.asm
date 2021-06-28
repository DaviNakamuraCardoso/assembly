
section .text
    global fact

fact:
    mov     rbx, rdi
    mov     rcx, 1
    mov     rax, 1
    ;; for (int i = 0; i < a; i++)
    FOR:
    cmp     rcx, rbx
    jle     MULT
    ret

    MULT:
    mul     rcx
    inc     rcx
    jmp     FOR
