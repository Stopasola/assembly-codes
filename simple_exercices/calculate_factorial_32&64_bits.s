segment .data
 result dd 0
 N dd 5
 result2 dq 0
 N2 dq 5
 segment .text
 global main
 main:
 ;;;;;;;;;;  32 bits   ;;;;;;;;;;
     mov eax,[N]
     mov ebx,eax
     volta:
     cmp ebx,1
        je saida
          dec ebx
          mul ebx 
     jmp volta
        saida:   
     mov [result],eax
;;;;;;;;;;   64 bits   ;;;;;;;;;;
     mov rax,[N2]
     mov rbx,rax
     volta2:
     cmp rbx,1
        je saida2
          dec rbx
          mul rbx 
     jmp volta2
        saida2:   
     mov [result2],rax
    
ret