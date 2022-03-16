segment .bss
M resd 9
segment .data
soma dd 0
segment .text
global main
main:
    xor r8d,r8d ; i
    xor r9d,r9d ; j
    xor r10d,r10d ; soma
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
            mov DWORD[M+eax*4],1
            add r10d,DWORD[M+eax*4] 
            inc r9d
        jmp l3
        fimJ:
            inc r8d
            xor r9d,r9d
        jmp l2
        fimI:
        mov [soma],r10d
ret         
