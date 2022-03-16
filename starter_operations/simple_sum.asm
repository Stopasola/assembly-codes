;sum two values
segment .text
global soma_dois
soma_dois:
    push rbp
    mov rbp rsp
    movl rax, rdi ;valor de a
    addl rax, rsi ;valor de b
    leave
    ret
