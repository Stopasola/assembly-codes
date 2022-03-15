; Consider a vector of integers containing the representation of a binary number.
; Ex: Binary number = 1011
; Representation in a vector of integers:
; v[0]= 1
; v[1]= 1
; v[2]= 0
; v[3]= 1
; Decimal= 11
; Implement an Assembler program that given a vector representing a number
; binary, transform to decimal representation and display on screen.

segment .data
 resul dd 0
 p0 dd 0
 p1 dd 1
 p2 dd 1
 p3 dd 1
 tam dd 4
 str1 db "Decimal = ",0,10
segment .bss
 v1 resd 4
segment .text
extern printf
global main 
main:
    xor eax,eax
    mov r10d,[p0]
    mov DWORD[v1+eax*4],r10d
    inc eax
    mov r10d,[p1]
    mov DWORD[v1+eax*4],r10d
    inc eax
    mov r10d,[p2]
    mov DWORD[v1+eax*4],r10d
    inc eax
    mov r10d,[p3]
    mov DWORD[v1+eax*4],r10d
    xor eax,eax


xor r8d,r8d ; i
xor r9d,r9d ; x
xor r11d,r11d ; recebe
mov ecx,1
L0:
  cmp r8d,[tam]
  jb cont
    jmp fim
    cont:
      xor edx,edx
      mov eax,[v1+r8d*4]
      mul ecx
      add r11d,eax
      add ecx,ecx
      inc r8d
      jmp L0
     fim:
     ;xor rsi,rsi
     mov rdi,str1
     ;mov esi,r11d
     call printf
     mov [resul],r11d
 ret


