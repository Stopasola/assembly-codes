segment .data
    a dq 10
    b dq 20

segment .text
global main
main:

    ;xor rax, rax
    ;xor rbx, rbx

    ;mov rax, [a]
    ;mov rbx, [b]
    ;mov rcx, rax
    ;mov rax, rbx
    ;mov rbx, rcx

    push qword[a]
    push qword[b]
    
    pop qword[a]
    pop qword[b]

ret
