; Data section
section .data
	msg: 		db "First Assembly", 0xA
	msg_syscall: 	db "syscall print", 0xA
	msg_int:	db "interrupt print", 0xA

; Code section
section .text
	global _start
_start:
	;The differences between syscall and interrupt system call
	; syscall print
	mov rax, 1
	mov rdi, 1
	mov rsi, msg_syscall
	mov rdx, 14
	syscall

	; interrupt print
	mov eax, 4 
	mov ebx, 1,
	mov ecx, msg_int
	mov edx, 15
	int 0x80

	;mov rax, 60
	;mov rdi, 0
	;syscall
	
	mov eax, 1 
	mov ebx, 0
	int 0x80
