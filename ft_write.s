global ft_write
extern __errno_location
ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    js .error
    ret

.error:
    neg rax ; syscall return negative nb --> neg = 0 - (-nb) = + nb
    mov rdi, rax ; saving rax in rdi for errno call (which is the value of errno)
    call __errno_location wrt ..plt ; return the adress of the errno variable // liaison dynamique "With Respect To" "Procedure Linkage Table"
    mov [rax], rdi ; set errno
    mov rax, -1 ; set rax -1 for return
    ret