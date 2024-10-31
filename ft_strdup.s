global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy
extern __errno_location

ft_strdup:
    xor rcx, rcx ; init 0
    push rdi    ; save rdi (char *) in stack
    call ft_strlen ; call strlen
    inc rax ; +1 null char for malloc
    mov rdi, rax ; rax -> rdi == param malloc (size)
    call malloc wrt ..plt
    test rax, rax ; check return malloc == NULL
    je .error ; jump if equal 0
    pop rsi ; recover value saved in stack (rsi will be source string for copy)
    mov rdi, rax ; rax -> rdi (rax was return vallue of malloc / rdi will be dest string for copy)
    call ft_strcpy
    ret ; return rax (string of copy)

.error:
    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi
    mov rax, 0
    ret
