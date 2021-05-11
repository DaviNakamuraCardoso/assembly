global _start


section .text
_start:
    mov ebx, 1          ; ebx = 1
    mov ecx, 4          ; number of iterations
label:
    add ebx, ebx        ; ebx *= 2
    dec ecx             ; ecx--;
    cmp ecx, 0          ; ecx == 0 ?
    jg label            ; jmp to label if greater than 0
    mov eax, 1          ; Exit syscall
    int 0x80
