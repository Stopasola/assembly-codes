segment .data
    fmt db "%f",0
    fmt2 db "soma: %f",10,0
    fmt3 db "sub: %f",10,0
    fmt4 db "mult: %f",10,0
    fmt5 db "div: %f",10,0
    var dd 0

segment .text
global main
extern printf
extern scanf
main:
    push rbp
    mov rbp, rsp
    xor rax, rax
    mov rdi, fmt
    mov rsi, var
    call scanf
    movss xmm1, [var]
    
    mov rdi, fmt
    mov rsi, var
    call scanf
    movss xmm2, [var]
    
    movss xmm0, xmm2
    addss xmm0, xmm1
    
    mov rax, 1
    mov rdi, fmt2
    cvtss2sd xmm0, xmm0
    call printf
    
    movss xmm0, xmm2
    subss xmm0, xmm1
    
    mov rax, 1
    mov rdi, fmt3
    cvtss2sd xmm0, xmm1
    call printf
    
    movss xmm0, xmm2
    mulss xmm0, xmm1
    
    mov rax, 1
    mov rdi, fmt4
    cvtss2sd xmm0, xmm0
    call printf
    
    movss xmm0, xmm2
    divss xmm0, xmm1
    
    mov rax, 1
    mov rdi, fmt5
    cvtss2sd xmm0, xmm0
    call printf
    
    leave
    ret
