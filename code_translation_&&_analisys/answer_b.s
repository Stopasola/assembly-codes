segment .data
    x dd 0
    y dd 0
    z dd 0
segment .text
global main
main:
    push rbp 
    mov rbp, rsp
    mov eax, [x]
    mov ebx, [y]
L0:
    cmp eax, 50000
    jg fim
    cmp ebx, 50000
    jg incre
    add [z], eax
    sub [z], ebx
    inc ebx
    jmp L0
incre:    
    inc eax
    mov ebx, 0
    jmp L0
fim:
    leave
    ret
