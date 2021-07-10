

section .text
    global sqroot
    global shift

sqroot:
    ;; for j=31..0 do
    ;;
    mov     rbx, 0x80000000 ; tmp
    mov     rcx, 0x00       ; y
    mov     rdx, 31 ; j
    mov     rsi, 0x00       ; tmp3

    for:
    cmp     rdx, 0x00
    jl      endfor

    mov     rax, rbx
    mul     rax
    push    rax             ; tmp2
    mov     rax, rcx
    mul     rbx
    shl     rax, 0x01
    push    rax
    mov     rax, rcx
    mul     rax
    mov     rsi, rdi
    sub     rsi, rax
    pop     rax
    sub     rsi, rax

    pop     rax
    cmp     rax, rsi
    jg      else
    add     rcx, rbx

    else:
    dec     rdx
    shr     rbx, 0x01
    jmp     for
    endfor:
    mov     rax, rcx
    ret


shift:
    mov     rbx, 0x80000000 ; tmp
    shr     rbx, 0x01
    mov     rax, rbx
    ret
