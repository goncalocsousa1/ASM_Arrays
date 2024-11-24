global _start

%define SYS_exit 60
%define EXIT_SUCCESS 0
%define CAPACITY 3

section .bss
array: resb CAPACITY + 1

section .data
pointer: db 0

section .text
_start:
    mov rdi, 1
    call .append

    mov rdi, 2
    call .append

    mov rdi, 3
    call .append

    mov rdi, 4
    call .append
.exit:
    mov rdi, EXIT_SUCCESS
    mov rax, SYS_exit
    syscall
.append:
    cmp byte [pointer], CAPACITY ; verifica se o array está cheio
    je .done

    mov al, byte [pointer]
    mov byte [array + rax], dil
    inc byte [pointer]
.done:
    ret

