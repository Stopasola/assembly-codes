Segment .data
    a dd 2
    b dd 1
    MAIOR dd 0
    MENOR dd 0 
Segment .text
global main
main:
       
    mov eax,[a]
    mov ebx,[b]
    cmp eax,ebx
    jg B_Menor
        mov [MAIOR],ebx
        mov [MENOR],eax
        jmp saida
    B_Menor:
        mov [MAIOR],eax
        mov [MENOR],ebx
saida:        
    ret