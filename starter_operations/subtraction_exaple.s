Segment .data
    x db 2
    y db 4
    z db 6
    
Segment .text
global main
main:
    mov rax,0
    
    mov al,[x]
    mov bl,[y]
    mov cl,[z]
    

    add al,bl
    sub al,5
    mov bl,al
    
ret
