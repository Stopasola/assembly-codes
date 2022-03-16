Segment .data
    decimal dd 10
    binario dd 0
    var dd 1
Segment .text
global main
    main:
        xor r8d, r8d
        xor r9d, r9d
        volta:
        cmp dword [decimal],0
         je sai
        mov eax,[decimal]
        xor edx,edx
        mov ecx,2
        div ecx
        mov [binario],edx
        mov [decimal],eax
            ;jmp vari
            calc:
             laco:
                cmp r8d, 0
                je multiporum
                
                cmp r8d,0
                ja multi
                    multiporum:
                        xor edx, edx
                        mov eax,[binario]
                        mov ecx, 1
                        mul ecx
                        add [binario], eax
                        jmp move
                    
                    multi:
                        xor edx,edx
                        mov eax,[binario]
                        mov ecx, 10
                        mul ecx
                        add [binario],eax
                        inc r9d
                        cmp r9d, r8d
                        jb multi
                        jmp move
        move:
            inc r8d 
            xor r9d, r9d
            jmp volta
        
          ;vari:
            ;mov eax,[var]
            ;xor edx,edx
            ;mov ecx, 10
            ;mul ecx
            ;mov [var],eax
          ;jmp calc    
            
       sai:         
            ret
    ;AX /RESUL
    ;AL/RESTO
