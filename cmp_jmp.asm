section .data
	msg_cmp: 		db `comparision equal\n`
	msg_cmp_len: 		equ $-msg_cmp
	msg: 			db `Jin Feng\n`
	msg_len: 		equ $-msg

section .text
	global _start
_start:
	mov ax, 100
	mov bx, 50
	add ax, bx
	cmp ax, 150
	je cmp_equal
	jmp exit

cmp_equal:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg_cmp
	mov edx, msg_cmp_len
	int 0x80
	jmp exit

exit:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_len
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
