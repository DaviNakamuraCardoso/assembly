

section .text
    global factorial


factorial:
    mov     rax,rdi
    cmp     rax,1      ; if rax <= 1 then return 1
    jg      ELSE

    IF:
    mov     rax,1
    ret

    ELSE:
    push    rdi         ; save rdi on the stack
    dec     rdi         ; rdi--
    call    factorial   ; rax = factorial (rdi--)
    pop     rdi         ; rdi = old rdi
    mul     rdi         ; rax (that is, factorial(rdi--)) *= rdi
    ret
