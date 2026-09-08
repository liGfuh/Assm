section .data
    msg db 'Displaying 9 stars', 0xa
    len equ $ - msg
    s2 times 9 db '*'
       db 0xa

section .text
    global _start

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 9
    mov ecx, s2
    mov ebx, 1
    mov eax, 4
    int 0x80

    xor ebx, ebx
    mov eax, 1
    int 0x80
