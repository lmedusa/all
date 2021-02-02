section .text
		global _ft_read
		extern ___error

; fd (1st arg) = rdi, buf (2nd arg) = rsi, num (3rd arg) = rdx

_ft_read:
	mov			rax, 0x2000003	; read syscall number
	syscall						; system call read
	jc			_error			; call error function
	ret

_error:
	push		rbx				; save rbx on stack
	mov			rbx, rax		; rbx = rax
	call		___error		; errno
	mov			[rax], rbx		; dereferenced rax = rbx
	mov			rax, -1			; rax = -1
	pop			rbx				; extract old rbx from stack
	ret
