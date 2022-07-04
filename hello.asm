global _start



section .text

_start:
	mov rax, 1 	; write
	mov rdi, 1 	; STDOUT
	mov rsi, msg 	; the message
	mov rdx, msglen ; size of message
	syscall 	; excute system call

	mov rax, 60 	; exit
	mov rdi, 0 	; return 0
	syscall

section .rodata
	msg: db "Hello World!", 0xa
	msglen: equ $ - msg


; compile $ nasm -f elf64 -o hello.o hello.asm
; ld -o hello hello.o
