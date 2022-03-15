segment .text
global main
main:
    push rbp
    mov rbp, rsp
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx    
L0:
    cmp eax, 50000
    je fim
    cmp ebx, 50000
    je incre
    add ecx, eax
    sub ecx, ebx
    inc ebx
    jmp L0
incre:    
    inc eax
    mov ebx, 0
    jmp L0
fim:
    leave
    ret
