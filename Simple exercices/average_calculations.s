Segment .data
    soma dd 0
    A dd -10
    B dd 10
    C dd 20
    D dd -20
    S dd 0
    S1 dd 0
   
Segment .text
global main
    main:
        mov eax, [A]
        mov ebx, [B]
        mov ecx, [C]
        mov edx, [D]
         
        add eax,ebx
        add eax,ecx
        add eax,edx
        mov ecx,4
        mov edx,0
        idiv ecx
        mov esp,eax
        ;---A
        mov eax,[A]
        cmp eax,esp
          jg maiorA
            add [S],eax
            jmp saiA
          maiorA:
            add [S1],eax
          saiA:
        ;---B
        cmp ebx,esp
          jg maiorB
            add [S],ebx
            jmp saiB
          maiorB:
            add [S1],ebx
          saiB:
        ;---C
        mov ecx,[C]
        cmp ecx,esp
          jg maiorC
            add [S],ecx
            jmp saiC
          maiorC:
            add [S1],ecx
          saiC:
        ;---D
        mov edx,[D]
        cmp edx,esp
          jg maiorD
            add [S],edx
            jmp saiD
          maiorD:
            add [S1],edx
          saiD:              
            ret
