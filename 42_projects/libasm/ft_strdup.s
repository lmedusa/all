section .text							; section text mean CODE IS HERE
		global _ft_strdup				; start point for core
		extern _ft_strlen
		extern _malloc
		extern _ft_strcpy

; *s = rdi

_ft_strdup:
	mov			rax, 0					; rax = 0
	push		rdi						; save *s on stack
	call		_ft_strlen				; ft_strlen(s)
	mov			rdi, rax				; rdi = len
	call		_malloc					; alloc memory
	cmp			rax, 0					; check !malloc?
	jz			_exit_null				; if malloc return NULL -> ret NULL
	mov			rdi, rax				; rdi = rax (pointer to allocated memory)
	pop			rsi						; extract rdi value from stack
	call		_ft_strcpy				; rax = ft_strcpy(rdi, rsi)
	ret									; rax (result)

_exit_null:
	ret									; return null