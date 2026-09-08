section .text
        global _start

_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, msg
        mov rdx, len
        ; int 0x80 32-битный вид 
	syscall

        mov rax, 60
	mov rdi, 0
        ;int 0x80
	syscall

section .data
        msg db 'Hello, world!', 0xa
        len equ $ - msg
