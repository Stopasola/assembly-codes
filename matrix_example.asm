Segment .bss
    M resd 9
Segment .text:
global main
main:
    xor r8d, r8d ;i
    xor r9d, r9d ;j
    xor r10d, r10d

    L2:
        cmp r8d, 3
        je fimfor
    L3:
        cmp r9d, 3
        je fimj        
        xor edx, edx
        mov eax, r8d
        mov ebx, 3    
        mul ebx
        add eax, r9d
        mov r10d, r9d
        add r10d, 1
        mov dword [M+eax*4], r10d
        inc r9d
        jmp L3
    fimj:
        inc r8d
        xor r9d, r9d
        jmp L2
    fimfor:
        ret
ret
