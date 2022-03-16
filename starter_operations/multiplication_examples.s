Segment .data
    a dw 120
    b dw -2
    c dw 10
    c1 dw 0
    c2  dw 0
    c3 dw 0
    
Segment .text
global main
main:
    mov rax,0
    
    mov ax,[a]
    mov bx,[b]
    mov cx,[c]
    
    imul ax 
    mov [c1],eax ;c1 = a*a
    
    mov ax,[a]
    imul bl
    mov [c2],eax ;c2 = a*b
    
    imul cx
    mov [c3],eax  ;c3 = a*b*c
   
    
ret
