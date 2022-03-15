Segment .data
    a dd 0
    b dd 1
    c dd 2
    d dd 3
    Segment .text
global main
main:
       
    mov eax,[a]
    mov ebx,[b]
    mov ecx,[c]
    mov edx,[d]
   
    cmp eax,ebx
    je jump
        mov eax,3
        mov ebx,3
        mov ecx,3
        mov edx,3
     jump:
        cmp ecx,edx
        je jump1
            cmp ecx,edx
            jg jump2
                mov eax,2
                mov ebx,2
                mov ecx,2
                mov edx,2
            jump2:
                mov eax,0
                mov ebx,0
                mov ecx,0
                mov edx,0
          jump1:
          mov eax,1
          mov ebx,1
          mov ecx,1
          mov edx,1  
  
        
    ret

    ; Translate de C code above
    ;int a,b,c,d;
    ;int main(){
    ;   a=0,b=1,c=2,d=3;
    ;   if(a==b){
    ;         if(c==d)
    ;             a=1,b=1,c=1,d=1
    ;         else if(c>d)
    ;             a=0,b=0,c=0,d=0
    ;         else
    ;          a=2,b=2,c=2,d=2
    ;   }
    ;        else
    ;        a=3,b=3,c=3,d=3
