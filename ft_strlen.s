global ft_strlen

ft_strlen:
    xor rcx, rcx

.loop:
    cmp BYTE [rdi + rcx], 0
    je .end
    inc rcx
    jmp .loop

.end:
    mov rax, rcx
    ret