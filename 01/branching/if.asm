global _start

section .text
_start:
    mov rax, 0x01
    mov rbx, 0xa1
    ; if rbx > 0 then rbx = 23
    cmp rbx, 0x00
    jg IF
    jmp ENDIF
IF:
    mov rbx, 0x17
ENDIF:

    mov rax, 0x3c
    mov rdi, rbx
    syscall
