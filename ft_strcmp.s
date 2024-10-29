global ft_strcmp

;int ft_strcmp(const char *s1, const char *s2);
;                         rdi,            rsi
;                         al,              ah,
ft_strcmp:
    xor rcx, rcx

.loop:
    mov al, [rdi + rcx]
    mov ah, [rsi + rcx]
    cmp al, ah
    ja .greater ;
    jb .bellow ;
    cmp al, 0
    je .equal
    inc rcx
    jmp .loop

.greater:
    mov rax, 1
    ret

.bellow:
    mov rax, -1
    ret

.equal:
    mov rax, 0
    ret