section .text

global _ft_strcmp

_ft_strcmp:
	cmp rdi, 0
	jne check_s2
	jmp check_null

check_null:
	cmp rsi, 0
	je zero_case
	mov bl, [rsi]
	movzx rax, bl
	ret

compare:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, 0
	je diff
	cmp bl, 0
	je diff
	cmp al, bl
	jne diff
	inc rdi
	inc rsi
	jmp compare

diff:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	ret

check_s2:
	cmp rsi, 0
	jne compare
	mov al, [rdi]
	movzx rax, al
	ret

zero_case:
	mov rax, 0
	ret
