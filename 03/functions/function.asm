
global sqrt

section .text


add1:
    ret

hello:
    mov     rax, 0x01
    mov     rdi, 0x02
    call    add1
    add     rax, rdi
    ret
