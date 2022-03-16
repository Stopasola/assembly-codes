Segment .data
    F dd 5 
    resul dd 0
    r1 dd 0
    r2 dd 0
    
Segment .text
global main
    main:
    mov eax,[F]  
    mov ecx,eax
    mov r8d,0
    mov r9d,1 
    fim:
       add r8d,r9d
       mov r9d,r8d
       mov [r1],r8d
       mov [r2],r9d    
    loop fim
    ;mov [resul],eax
    ret


