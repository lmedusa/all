section .text						; section text mean CODE IS HERE
		global _ft_strlen			; start point for core

_ft_strlen:
	mov				rax, 0				; rax = 0
	_start_while:
		cmp			byte[rdi + rax], 0	; if (*str == 0)
		jz			_end_while			; if zero -> break
		inc			rax					; rax++
		jmp			_start_while		; looooop
	_end_while:
	ret
