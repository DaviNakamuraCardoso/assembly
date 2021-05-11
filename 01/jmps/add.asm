global _start

section .text
_start:
    mov ebx, 0      ; ebx = 2
    mov ecx, 4      ; ecx = 4
    mov edx, 2    ; edx = 2
WHILE:
    add ebx, 2      ; ebx += edx
    dec ecx         ; ecx--
    cmp ecx, 0      ; ecx == 0?
    jg WHILE
    mov eax, 1      ; Interrupt
    int 0x80
