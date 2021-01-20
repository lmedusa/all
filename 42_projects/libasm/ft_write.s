section .text
		global _ft_write
		extern ___error

; fd (1st arg) = rdi, buf (2nd arg) = rsi, num (3rd arg) = rdx

_ft_write:
	mov			rax, 0x2000004	; write syscall number
	syscall						; system call write
	jc			_error			; call error function
	ret

_error
	push		rbx				; save rbx on stack
	mov			rbx, rax		; rbx = rax
	call		___error		; errno
	mov			[rax], rbx		; dereferenced rax = rbx
	mov			rax, -1			; rax = -1
	pop			rbx				; extract old rbx from stack
	ret