global _start

section .data
    addr db "yellow"

section .text
_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4          ; Sys write call
    mov ebx, 1          ; Stdout file descriptor
    mov ecx, addr       ; bytes to write
    mov edx, 6          ; Number of bytes to write
    int 0x80

    ; Interrupt the program
    mov eax, 1
    mov ebx, 4
    int 0x80
