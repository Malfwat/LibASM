global _ft_strcpy

section .text

_ft_strcpy:
	mov r9, rdi
	cmp rdi, 0
	je _done
	cmp rsi, 0
	je _done

_loop:
	cmp byte [rsi], 0
	je _done
	mov r8, [rsi]
	mov [rdi], r8
	inc rdi
	inc rsi
	jmp _loop
	mov rdi, 0

_done:
	mov rax, r9
	ret
