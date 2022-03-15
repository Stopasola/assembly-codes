; Sum of A,B,C and D only if the num is even

Segment .data
    a dd 1
    b dd 2
    c dd 3
    d dd 4
    comp dd 1
    resul dd 0
Segment .text
global main
main:
       
    mov eax,[a]
    mov ebx,[b]
    mov ecx,[c]
    mov edx,[d]
    mov esp,[resul]
    
    and eax,0x1
    cmp eax,[comp]
    je jump
        add esp,[a]
    jump:
    and ebx,0x1
    cmp ebx,[comp]
    je jump1
        add esp,[b]
    jump1:
    and ecx,0x1
    cmp ecx,[comp]
    je jump2
        add esp,[c]
    jump2:
    and edx,0x1
    cmp edx,[comp]
    je jump3
        add esp,[d]
    jump3:
         
      mov [resul],esp 
    ret

