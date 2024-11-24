global _start

%define SYS_exit 60
%define EXIT_SUCCESS 0

section .data
array: db 1, 2, 3, 0

section .text
_start:
    mov al, [array]        ; array[0]
    mov bl, [array + 1]    ; array[1]
    mov cl, [array + 2]    ; array[2]
    mov sil, [array + 3]   ; array[3]
.exit:
    mov rdi, EXIT_SUCCESS
    mov rax, SYS_exit
    syscall



