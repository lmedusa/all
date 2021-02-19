section .text							; section text mean CODE IS HERE
		global _ft_strcmp				; start point for core

; s1 (1st arg) = rdi, s2 (2nd arg) = rsi

_ft_strcmp:
	mov			rax, 0						; rax = 0
	mov			rbx, 0						; rbx = 0
	mov			r10, 0						; counter = 0
	_cmploop:
		cmp		byte[rsi + r10], 0			; if (rsi[counter] == 0)
		je		_endcmploop					; if zero -> break
		cmp		byte[rdi + r10], 0			; if (rdi[counter] == 0)
		je		_endcmploop					; if zero -> break
		mov		bl, byte[rsi + r10]			; rbx's lowest 8 bits = lowest 8 bits from rsi
		mov		al, byte[rdi + r10]			; rax's lowest 8 bits = lowest 8 bits from rdi
		cmp		rax, rbx					; compare rax and rbx
		jne		_endcmploop					; if rax != rbx -> endloop
		inc		r10							; counter++
		jmp		_cmploop
	_endcmploop:
	mov			bl, byte[rsi + r10]			; same as in _cmploop
	mov			al, byte[rdi + r10]			; same
	sub 		rax, rbx					; rax = rax - rbx
	ret
