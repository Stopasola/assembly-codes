; A square matrix of integers is called a “magic square” if the
; sum of the elements of each row, column, major diagonal and minor diagonal
; were equal. Write an Assembler program that checks if an NxN matrix is
; a magic square (assume that the dimension N is defined in a variable in the
; data section). If the matrix is ​​a magic square, print the value 1, if
; otherwise print the value zero.

segment .bss
m resd 9
segment .data
tam dd 3
 p0 dd 8
 p1 dd 1
 p2 dd 6
 p3 dd 3
 p4 dd 5
 p5 dd 7
 p6 dd 4
 p7 dd 9
 p8 dd 2
 return dd 0
segment .text
global main
main:

     ;//////Preenchendo a matriz////////
    xor eax,eax
    mov r10d,[p0]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p1]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p2]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p3]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p4]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p5]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p6]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p7]
    mov DWORD[m+eax*4],r10d
    inc eax
    mov r10d,[p8]
    mov DWORD[m+eax*4],r10d
    xor eax,eax
    
    
    
    
    xor r9d,r9d ;somaLinhas
    xor r10d,r10d ;somaColunas
    xor r11d,r11d ;somaDP
    xor r12d,r12d ;somaDS
    xor r14d,r14d; validade
   
   ;////////Confereindo val//////////////
    mov ecx,[tam]
    mov r13d,[tam]
    xor eax,eax
       l0:
       cmp r13d,eax
       ja calc0
         jmp Sai
        calc0:
          add r14d,DWORD[m+eax*4]
          inc eax
          jmp l0
         Sai:
         
   ;////////Confereindo Linhas//////////////
   mov ecx,[tam]
   mov r13d,[tam]
   xor eax,eax
   Linhas:
     mov r9d,0
     
       l1:
       cmp r13d,eax
       ja calc1
         jmp Sai1
        calc1:
          add r9d,DWORD[m+eax*4]
          inc eax
          jmp l1
         Sai1:
         cmp r14d,r9d
         jne incre
         jmp fim0
         incre: 
         jmp acabou                           
         fim0:
         add r13d,[tam]
   loop Linhas
   ;////////Confereindo Colunas//////////////
   mov ecx,[tam]
   mov r13d,[tam]
   xor eax,eax
   xor ebx,ebx
   xor edx,edx
   LinhasC:
     mov r10d,0
     add eax,edx
       l2:
       cmp r13d,ebx
       ja calc2
         jmp Sai2
        calc2:
          add r10d,DWORD[m+eax*4]
          add eax,3
          inc ebx
          jmp l2
         Sai2:
         cmp r14d,r10d
         jne incre2
         jmp fim2
         incre2: 
         jmp acabou                           
         fim2:
         xor ebx,ebx
         xor eax,eax
         inc edx
    
   loop LinhasC
 
 ;////////Confereindo Dp//////////////
   mov  r13d,[tam]
   xor eax,eax
   xor ebx,ebx
    L3:
      cmp  r13d,ebx
        ja calc3
        jmp fimm3
        calc3:
         add r11d,DWORD[m+eax*4]
         add eax,[tam]
         inc eax
         inc ebx
         jmp L3
        fimm3:
        cmp r14d,r11d
         jne incre3
         jmp fim3
         incre3: 
         jmp acabou                           
         fim3:
   ;////////Confereindo Ds//////////////
   mov r13d,[tam]
   xor eax,eax
   xor ebx,ebx
    L4:
      cmp  r13d,ebx
        ja calc4
        jmp fimm4
        calc4:
         add eax,[tam]
         dec eax
         inc ebx
         add r12d,DWORD[m+eax*4]
         jmp L4
        fimm4:
        cmp r14d,r12d
         jne incre4
         jmp fim4
         incre4: 
         jmp acabou                           
         fim4: 
   mov eax,1 
   jmp pula              
   acabou: 
   mov eax,0
   pula:      
   mov [return],eax
   leave
ret         
