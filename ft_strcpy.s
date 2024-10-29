global ft_strcpy

ft_strcpy:
    xor rcx, rcx

.loop:
    mov al, [rsi + rcx]
    cmp al, 0
    je .end
    mov [rdi + rcx], al
    inc rcx
    jmp .loop

.end:
    mov BYTE [rdi + rcx], 0
    mov rax, rdi
    ret