segment .data
    str1 db "%d",10,0

segment .bss
    V resd 10

segment .text
extern printf
global main
main:
    push rbp
    mov rbp, rsp
    xor edx, edx
    xor rax, rax
    mov ecx, 10 
    
    laco:
        mov dword [V+4*edx], eax
        inc edx
        inc eax
    loop laco
    
    mov rdi, V
    mov rsi, 10
    
    call imprime_vetor
        
    leave
    ret    

imprime_vetor:
    push rbp
    mov rbp, rsp
    push rbx

    push r12
    mov r12, rdi

    push r13
    mov r12, rsi

L1:
    xor rbx, rbx
    cmp rbx, r13
    je fim
        
    mov rdi, str1
    mov esi, [r12 + rbx*4]
    call printf
    inc rbx
    jmp L1

fim:
    pop r13
    pop r12
    pop rbx
    leave
    ret