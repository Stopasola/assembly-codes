;Calcule a media de 4 valores a,b,c,d de 32 bits sinalizado
; A) Armazene em uma variavel S a soma dos valores menores que a media
; B) Armazene em uma variavel S1 a soma dos valeres maiores que a media


;Calculate the average of 4 signed 32-bit a,b,c,d values

; A) Store in a variable S the sum of values ​​smaller than the mean
; B) Store in a variable S1 the sum of values ​​greater than the mean

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
