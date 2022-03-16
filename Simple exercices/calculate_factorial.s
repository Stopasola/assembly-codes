Segment .data
    N dd 3 
    resul dd 0
    
Segment .text
global main
    main:
    mov eax,[N]
    mov ecx,eax
    dec ecx
    fim:
       xor edx,edx
       mul ecx
       add [resul],eax 
           
    loop fim
    mov [resul],eax
    ret


