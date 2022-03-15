;Calculate the nth term of the Fibonacci sequence.
;(Unsigned version for 64-bit and 32-bit integers).
segment .data
 result dd 0
 N dd 10
 result2 dq 0
 N2 dq 10
 segment .text
 global main
 main:
 ;;;;;;;;;;   Caso 32 bits   ;;;;;;;;;;
     
     mov eax,0 ;ant
     mov ebx,1 ;atual
     xor ecx,ecx; prox
     mov edx,1; cont 
     volta:
     cmp edx,[N]
        je saida
          inc edx
          add ecx , eax
          add ecx , ebx
          mov eax,ebx
          mov ebx, ecx
          xor ecx,ecx;
     jmp volta
        saida:
     mov [result],ebx 
;;;;;;;;;;   Caso 64 bits   ;;;;;;;;;;
     mov rax,0 ;ant
     mov rbx,1 ;atual
     xor rcx,rcx; prox
     mov rdx,1; cont
     volta2:
     cmp rdx,[N2]
        je saida2
          inc rdx
          add rcx , rax
          add rcx , rbx
          mov rax,rbx
          mov rbx, rcx
          xor rcx,rcx;
     jmp volta2
        saida2:   
     mov [result2],rbx
     
    
ret


