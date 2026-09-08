section .data
	name db "Xar", 0xA
	len equ $ - name

section .text
	global _start

_start:
	mov edx, len
	mov ecx, name
	mov ebx, 1
	mov eax, 4
	int 80h

	mov [name], dword 0x000A4E6E

	mov edx, len
	mov ecx, name
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
