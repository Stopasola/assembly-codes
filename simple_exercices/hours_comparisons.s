Segment .data
    hh1 dd 1
    m1 dd 10
    ss1 dd 20
    f1  dd 0
    hh2 dd 2
    m2 dd 10
    ss2 dd 20
    f2 dd 0
   
Segment .text
global main
    main:

    ;------ First hour -------
        mov eax, [hh1]
        mov ebx,3600
        xor edx,edx
        mul ebx
        add [ss1],eax
        mov eax,[m1]
        mov ebx,60
        xor edx,edx
        mul ebx
        add [ss1],eax

    ;------ Second hour -------
        mov eax, [hh2]
        mov ebx,3600
        xor edx,edx
        mul ebx
        add [ss2],eax
        mov eax,[m2]
        mov ebx,60
        xor edx,edx
        mul ebx
        add [ss2],eax 

    ;--------SS1----------------------    

        mov eax,43200 ;12
        mov ebx,86400 ;24
        cmp [ss1],eax
          jg maior
            mov esp,[ss1]
            mov [f1],esp
            jmp sai
          maior:
            mov esp,[ss1]
            xor edx,edx
            mov ecx, -1
            sub esp,ebx
            mov eax,esp
            mul ecx
            mov [f1],eax
          sai:

   ;--------SS2----------------------    

        mov eax,43200 ;12
        mov ebx,86400 ;24
        cmp [ss2],eax
          jg maior2
            mov esp,[ss2]
            mov [f2],esp
            jmp sai2
          maior2:
            mov esp,[ss2]
            xor edx,edx
            mov ecx, -1
            sub esp,ebx
            mov eax,esp
            mul ecx
            mov [f2],eax
          sai2:    

   ;---------Compare-----------------
   
       mov eax,[f1]
       mov ebx,[f2]
       cmp eax,ebx
         jl E1Maior
          mov eax,[f2] 
         E1Maior:
        mov [hh1],eax   
ret
