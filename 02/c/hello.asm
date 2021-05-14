

global main
extern puts

section .data
    message db "Hello, World!"

section .text

main:
    mov rdi, message
    call puts
    ret
 
