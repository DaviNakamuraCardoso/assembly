global _start

section .data
    msg db "Hello, World!", 0x0a    ; Stores the string
    len equ $ - msg                 ; Subracts the current location to get the string length

section .text
_start:
    mov eax, 4              ; Sys call to write
    mov ebx, 1              ; Standard Output
    mov ecx, msg            ; bytes to write
    mov edx, len            ; number of bytes
    int 0x80
    mov eax, 1              ; Sys exit status
    mov ebx, 0              ; Return status is 0
    int 0x80
