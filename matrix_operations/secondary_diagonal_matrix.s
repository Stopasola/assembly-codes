segment .bss
M resd 9
segment .text
global main
main:
    xor r8d,r8d ; i
    xor r9d,r9d ; j
    xor r10d,r10d ; j
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
            add r10d,r8d
            add r10d,r9d
            mov DWORD[M+eax*4],r10d
            xor r10d,r10d
            inc r9d
        jmp l3
        fimJ:
            inc r8d
            xor r9d,r9d
        jmp l2
        fimI:
ret         
