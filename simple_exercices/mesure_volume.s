Segment .data
    Volume dd 0
    h dd 3
    base dd 2
    Abase dd 0
    
    
Segment .text
global main
    main:
        mov eax,[base]
        mov edx,[base]
        mul edx
        ;mov [Abase],eax
        mov edx,[h]
        mul edx
        mov edx,0
        mov ecx,3
        div ecx
        mov [Volume],eax
    ret
    ;AX /RESUL
    ;AL/RESTO
