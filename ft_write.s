global ft_write
extern __errno_location
ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    js .error
    ret

.error:
