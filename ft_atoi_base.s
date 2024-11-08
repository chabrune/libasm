global ft_atoi_base
extern ft_strlen


ft_atoi_base:
    xor r8, r8  ; r8 = i
    xor r9, r9  ; r9 = sign
    xor r10, r10; r10 = baselen
    xor r11, r11; r11 = j
                ; nb = rax
    push rdi
    push rsi
    mov rdi, rsi
    call ft_check_error

ft_check_error:
    xor rcx, rcx; i = rcx
    ; j = r8
    push rdi
    call ft_strlen
    pop rdi  

.outer_loop:
    cmp BYTE [rdi + rcx], 0
    je .return_zero
    cmp BYTE [rdi + rcx], '-'
    je .return_one
    cmp BYTE [rdi + rcx], '+'
    je .return_one
    cmp BYTE [rdi + rcx], 9
    je .return_one
    cmp BYTE [rdi + rcx], 10
    je .return_one
    cmp BYTE [rdi + rcx], 11
    je .return_one
    cmp BYTE [rdi + rcx], 12
    je .return_one
    cmp BYTE [rdi + rcx], 13
    je .return_one
    cmp BYTE [rdi + rcx], 32
    je .return_one
    mov r8, rcx
    inc r8
    jmp .inner_loop

.inner_loop:
    cmp BYTE [rdi + r8], 0
    je .end_inner_loop
    mov al, [rdi + r8]
    cmp al, [rdi + rcx]
    je .return_one
    inc r8
    jmp .inner_loop

.end_inner_loop:
    inc rcx
    jmp .outer_loop

.return_one:
    mov rax, 1
    ret

.return_zero:
    mov rax, 0
    ret

ft_whitespaces:
    xor rcx, rcx
    mov rax, 1

.loop:
    movzx r8d, BYTE [rdi + rcx]
    cmp r8b, 9
    je .inc
    cmp r8b, 10
    je .inc
    cmp r8b, 11
    je .inc
    cmp r8b, 12
    je .inc
    cmp r8b, 13
    je .inc
    cmp r8b, 32
    je .inc
    jmp .sign_loop

.inc:
    inc rcx
    jmp .loop

.sign_loop:
    cmp r8b, '-'
    je .sign
    cmp r8b, '+'
    je .sign
    inc rcx
    jmp sign_loop

.sign:
    cmp r8b, '-'
    je .neg

.neg:
    neg rax
    jmp sign_loop

; int	ft_atoi_base(char *str, char *base)
; {
; 	int	i;
; 	int	sign;
; 	int baselen;
; 	int nb;
; 	int j;

; 	nb = 0;
; 	j = 0;
; 	if (check_error(base) == 1)
; 		return (0);
; 	baselen = ft_strlen(base);
; 	sign = ft_whitespaces(str, &i);
; 	printf("%d\n", i);
; 	while (j < baselen)
; 	{
; 		nb = (nb * baselen) + j;
; 		j = ft_base(str[i++], base);
; 	}
; 	return (nb * sign);
; }

; int	check_error(char *str)
; {
; 	int	i;
; 	int	j;

; 	i = 0;
; 	if (ft_strlen(str) == 1 || ft_strlen(str) == 0)
; 		return (1);
; 	while (str[i])
; 	{
; 		if ((str[i] == '-' || str[i] == '+') || (str[i] >= 9 && str[i] <= 13) || str[i] == 32)
; 			return (1);
; 		j = i + 1;
; 		while (str[j])
; 		{
; 			if (str[i] == str[j])
; 				return (1);
; 			j++;
; 		}
; 		i++;
; 	}
; 	return (0);
; }

; int	ft_whitespaces(char *str, int *ptri)
; {
; 	int	i;
; 	int	ret;

; 	i = 0;
; 	ret = 1;
; 	while ((str[i] >= 9 && str[i] <= 13) || str[i] == 32)
; 		i++;
; 	while (str[i] == '-' || str[i] == '+')
; 	{
; 		if (str[i] == '-')
; 			ret *= -1;
; 		i++;
; 	}
; 	*ptri = i;
; 	return (ret);
; }

; int	ft_base(char str, char *base)
; { 
; 	int i;

; 	i = 0;
; 	while (base[i])
; 	{
; 		if (str == base[i])
; 			return (i);
; 		i++;
; 	}
; 	return (i);
; }

; int main(void)
; {
; 	printf("%d", ft_atoi_base(" ", "01"));

; }


ft_atoi_base:
;     push rbx ; i
;     push r12 ; sign
;     push r13 ; baselen
;     ; nb will be rax for mul
;     push r15 ; j

;     xor r15, r15 ; init j a 0
;     push rdi ; save *str in stack
;     push rsi ; save *base in stack 
;     mov rdi, rsi ; rsi -> rdi = *base argument for strlen (baselen)
;     call ft_strlen 
;     mov r13, rax ; r13 saved baselen
;     pop rsi ; recover rsi value (*base)
;     pop rdi ; recover rdi value (*str)
;     call check_error ; int	check_error(char *str)
;     cmp rax, 1 ; if check_error return 1 == error
;     je .end ; jump to end
;     call ft_whitespaces ; int ft_whitespaces(char *str, int *ptri) / ptri might be useless cause register are global
;     mov r12, rax ; sign is return and saved in r12 (1 or -1)
;     mov rbx, rcx ; rcx get the value ptri here and saved in rbx
;     xor rax, rax ; init rax 0 for nb
    
; .convert_loop:
;     cmp r15, r13 ; if j >= baselen
;     jge .end ; end boucle
;     mul r13 ; mul r13 by rax (rax is nb)
;     add rax, r15 ; nb + j
;     movzx rdi, BYTE [rbx + rdi] ; sending one char to ft_base str[i++]
;     test dil, dil
;     je .end
;     call ft_base ; 
;     mov r15, rax ; j takes return value of ft_base
;     inc rbx ; i++
;     jmp .convert_loop

; .end:
;     pop r15
;     pop r13
;     pop r12
;     pop rbx
;     ret

; check_error:
;     xor r10, r10 ; j
;     xor rcx, rcx ; i
;     mov rdi, rsi
;     call ft_strlen
;     cmp rax, 1
;     jle .return_one

; .outer_loop:
;     cmp BYTE [rcx + rdi], 0
;     je .return_one
;     cmp BYTE [rcx + rdi], '-'
;     je .return_one
;     cmp BYTE [rcx + rdi], '+'
;     je .return_one
;     cmp BYTE [rcx + rdi], 9
;     jl .not_whitespace
;     cmp BYTE [rcx + rdi], 13
;     jle .return_one
;     cmp BYTE [rcx + rdi], 32
;     je .return_one

; .not_whitespace:
;     mov r10, rcx
;     inc r10

; .inner_loop:
;     cmp BYTE [r10 + rdi], 0
;     je .end_inner_loop
;     mov al, [rcx + rdi]
;     cmp BYTE al, [r10 + rdi]
;     je .return_one

; .end_inner_loop:
;     inc rcx
;     jmp .outer_loop

; .return_one:
;     mov rax, 1
;     ret

; ft_whitespaces:
;     xor rcx, rcx
;     mov rax, 1

; .loop_whitespaces:
;     cmp BYTE [rcx + rdi], 9
;     je .inc
;     cmp BYTE [rcx + rdi], 10
;     je .inc
;     cmp BYTE [rcx + rdi], 11
;     je .inc
;     cmp BYTE [rcx + rdi], 12
;     je .inc
;     cmp BYTE [rcx + rdi], 13
;     je .inc
;     cmp BYTE [rcx + rdi], 32
;     je .inc
;     jmp .check_sign

; .inc:
;     inc rcx
;     jmp .loop_whitespaces

; .check_sign:
;     cmp BYTE [rcx + rdi], '-'
;     je .neg
;     cmp BYTE [rcx + rdi], '+'
;     jne .end
;     inc rcx
;     jmp .check_sign

; .neg:
;     neg rax
;     inc rcx
;     jmp .check_sign

; .end:
;     ret


; ft_base:
;     xor rcx, rcx

; .loop:
;     cmp BYTE [rsi + rcx], 0
;     je .end
;     cmp BYTE [rsi + rcx], dil
;     je .end
;     inc rcx
;     jmp .loop

; .end:
;     mov rax, rcx
;     ret
    