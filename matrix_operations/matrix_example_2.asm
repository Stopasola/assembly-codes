Segment .data
    aux dd 3

Segment .bss
    M1 resd 9
    M2 resd 9
Segment .text
global main
main:
    xor r8d, r8d
    xor r9d, r9d
    xor r10d, r10d
    xor r11d, r11d
    xor eax, eax
    
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
        mov dword [M1+eax*4], 1
        inc r9d
        jmp L3
    fimj:
        inc r8d
        xor r9d, r9d
        jmp L2
    fimfor:
    
    xor r8d, r8d
    xor r9d, r9d
    L4:
        cmp r8d, 3
        je fimfor
    L5:
        cmp r9d, 3
        je fimL4
        xor edx, edx
        mov eax, r8d
        mov ebx, 3
        mul ebx
        mov dword [M2+eax*4], 1
        inc r9d
        jmp L4
    fimL4:
        inc r8d
        xor r9d, r9d
        jmp L2
    fimL5:
        
    xor r8d, r8d
    xor r9d, r9d 
    L6:
        cmp r8d, 3
        je fimfor
    L7:
        cmp r9d, 3
        je fimL6
        xor edx, edx
        mov eax, r8d
        mov ebx, 3
        mul ebx
        mov r10d, dword [M1+eax*4]
        mov r11d, dword [M2+eax*4]
        cmp r10d, r11d
        jb dif
        cmp r10d, r11d
        ja dif
        inc r9d
        jmp L4
    fimL6:
        inc r8d
        xor r9d, r9d
        jmp L2
    fimL7:   
        mov dword [aux], 0
        ret
        
    dif:
        mov dword [aux], 1
        ret                   
