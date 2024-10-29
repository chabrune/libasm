global ft_strcmp

ft_strcmp:
    xor rcx, rcx

.loop:
    mov al, [rdi + rcx]
    mov ah, [rsi + rcx]
    cmp al, ah
    ja .above
    jb .below
    cmp al, 0
    je .equal
    inc rcx
    jmp .loop

.above:
    mov rax, 1
    ret

.below:
    mov rax, -1
    ret

.equal:
    mov rax, 0
    ret