segment .bss
M resd 9
M1 resd 9
segment .data
aux dd 0
segment .text
global main
main:
    xor r8d,r8d ; i
    xor r9d,r9d ; j
    xor r10d,r10d ; M
    xor r11d,r11d ; M1
    xor r12d,r12d ; aux
    l2:
        cmp r8d,3
        je fimI
        l3:
            cmp r9d,3
            je fimJ
            xor edx,edx
            mov eax,r8d
            mov ebx,3
            mul ebx
            add eax,r9d
            mov DWORD[M+eax*4],2
            mov DWORD[M1+eax*4],1
                mov r10d,DWORD[M+eax*4]
                mov r11d,DWORD[M1+eax*4]
                cmp r10d,r11d
                  je sai
                    inc r12d
                  sai:  
            inc r9d
        jmp l3
        fimJ:
            inc r8d
            xor r9d,r9d
        jmp l2
        fimI:
        mov [aux],r12d ; se for igual a 0 é igual
ret         
