segment .data
    t dd 10
    st db "Teste",10,0
    str1 db "Teste %d",10,0

segment .text
extern printf
global main
main:
    push rbp
    mov rbp, rsp
    
    ;Impressao da string "Teste"    
    mov rdi, st
    call printf
    
    ;Impressao da string "Teste %d"
    xor rsi, rsi
    mov rdi, str1
    mov esi, [t] ;movo pra esi pq é um valor inteiro, de 32 bits
    call printf

    leave
    ret
    
