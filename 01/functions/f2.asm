global _start

section .text
_start:
    call fun
    mov rax, 60
    mov rdi, 0
    syscall

fun:
    push rbp
    mov rbp, rsp
    sub rsp, 2
    mov [rsp], byte 'H'
    mov [rsp+1], byte 'i'
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 2
    syscall
    mov rbx, 0 
    pop rbp
    ret
