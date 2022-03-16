segment .bss
    v resd 10
    
segment .text
global main
main:
    
    xor eax, eax
    
    laco1:
        cmp eax, 10
        je sai1
        mov dword [v+eax*4], eax
        inc eax
        jmp laco1
    
    sai1:
    xor eax, eax
    
    laco2:
        cmp eax, 10
        je sai2
        push qword[v+eax*4]    
        inc eax
        jmp laco2
    
    sai2:
    xor eax, eax
    laco3:
        cmp eax, 10
        je final
        pop qword[v+eax*4]    
        inc eax
        jmp laco3
        
    final:    
        ret
