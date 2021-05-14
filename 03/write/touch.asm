
section .bss
    filename resb 0x10


section .text
    global _start


_start:
    pop     rax     ; rax = argc

    cmp     rax, 1
    je      end
    pop     rbx
    pop     rdi
    mov     [filename], rdi
    call    _create

    end:
    mov     rax, 0x3c
    mov     rsi, 0x00
    syscall


_create:                ; Creates a new file
    mov     rax, 0x02
    mov     rdi, [filename]
    mov     rsi, 64+1
    mov     rdx, 0644o
    syscall

    push    rax
    mov     rax, 0x03
    pop     rdi
    syscall

    ret
