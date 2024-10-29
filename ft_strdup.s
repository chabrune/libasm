global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

ft_strdup:
    mov rsi, rdi ;s1 saved in rsi
    call ft_strlen
    inc rax ;+1 malloc for \0
    mov rdi, rax; rax -> rdi pour param de malloc 
    call malloc
    test rax, rax
    je .error

.error: