global _ft_strlen

section .text

_ft_strlen:
    mov r9, 0          ; Initialize counter (r9) to 0
    cmp rdi, 0         ; Compare string pointer (rdi) to 0 (null check)
    je _done           ; If the string pointer is null, jump to _done

_loop:
    inc r9             ; Increment the counter (r9)
    inc rdi            ; Move to the next character in the string
    cmp byte [rdi], 0  ; Compare current byte at rdi with null byte
    jne _loop          ; If not null, continue looping

_done:
    mov rax, r9        ; Return the result in rax (length of the string)
    ret

