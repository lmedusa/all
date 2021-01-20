section .text							; section text mean CODE IS HERE
		global _ft_strcpy				; start point for core

; dst (1st arg) = rdi, src (2nd arg) = rsi

_ft_strcpy:
	mov			rax, 0					; rax = 0
	_start_while:
		cmp		byte[rsi + rax], 0		; if (rsi[rax] == 0)
		jz		_end_while				; if zero -> break
		mov		r9b, byte[rsi + rax]	; buf r9b (1 byte) = rsi[rax]
		mov		byte[rdi + rax], r9b	; rdi[rax] = buf r9b (1 byte)
		inc		rax						; rax++
		jmp		_start_while			; looooop
	_end_while:
	mov			byte[rdi + rax], 0		; set \0
	mov			rax, rdi				; return value = dst
	ret