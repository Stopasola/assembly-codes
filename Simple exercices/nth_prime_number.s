Segment .data
    N dd 5 
    resul dd 0
    
Segment .text
global main
    main:
    mov r8d,0 ;count
    mov r9d,0 ;N
    mov r12d,0 ;aux
       inicio:
    cmp   r8d,r9d
     je acabou
    mov r10d,2 ;n
    mov r11d,1 ;c
    volta0:
          cmp r10d,r11d
            je continua 
              mov eax,r10d ;n
              xor edx,edx
              mov ecx,r11d;c
              div ecx 
               cmp edx,0
                 je incre
                    jmp nada
                 incre:
                   inc r12d
                   inc r11d
                 nada:
                jmp volta0 
            continua:
                cmp r12d,2
                 je incre2
                    jmp nada2
                 incre:
                   inc r8d
                 nada2:
       jmp inicio           
    
    acabou:
     mov  [resul],r10d    
    ret