; Performs operations in Assembly x86

global _start
_start:
    mov eax, 123                  ; eax = 1
    mov eax, ebx                  ; eax = ebx
    add ebx, ecx                  ; ebx += ecx
    sub ebx, edx                  ; ebx -= edx
    mul ebx                       ; eax *= ebx
    div edx                       ; eax /= edx
    
