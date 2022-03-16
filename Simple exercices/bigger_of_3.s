Segment .data
    a dd 1
    b dd 2
    c dd 3
    d dd 4
    maior dd 0
Segment .text
global main
main:
       
    mov eax,[a]
    mov ebx,[b]
    mov ecx,[c]
    cmp eax,ebx
    jg compAB
      mov [maior],ebx
      jmp C         
    compAB: 
      mov  [maior],eax
    C:
        cmp [maior],ecx
        jg saida
        mov [maior],ecx
    saida:           
    ret
