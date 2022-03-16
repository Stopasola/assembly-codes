# assembly-codes

### Simple exercises 

- Average Calculations
Calculate the average of 4 signed 32-bit a,b,c,d values
A) Store in a variable S the sum of values ​​smaller than the mean
B) Store in a variable S1 the sum of values ​​greater than the mean

- Bigger of two
Considering a and b, store the largest of them in a memory location called 
LARGER and SMALLEST in a memory location called SMALL.

- Bigger of Three
Considering A,B and C, store the largest of them in a memory location called
LARGER and SMALLEST in a memory location called SMALL

- Factorial
Calculate the factorial of a number N

- Factorial of 64-bit and 32-bit integers
Calculate the factorial of a number N. (Unsigned version for 64-bit and 32-bit integers)

- Hours Comparisons
Given two time values ​​in the format hh1:mm1:ss1 and hh2:mm2:ss2 store eax the value in seconds of the hour closest to 0.

- Pair Numbers
Sum of A,B,C and D only if the num is even.

- Mesure Volume
Following the basic formula for the area of a rectangular shape is length × width, the basic formula for volume is length × width × height.

- Nth term of the Fibonacci sequence for 64-bit and 32-bit integers
Calculate the nth term of the Fibonacci sequence. (Unsigned version for 64-bit and 32-bit integers).

- Nth term of the Fibonacci sequence
Calculate the nth term of the Fibonacci sequence.

- Nth term of Prime Numbers
Read a number N and print the Nth prime number informed.
Ex: N = 3. 
The program will have to print The third prime number, which is 5. 
Nth (2) = 3, Nth (5) = 11.

- C code translation
Translate de C code above
int a,b,c,d;
int main(){
  a=0,b=1,c=2,d=3;
  if(a==b){
    if(c==d)
      a=1,b=1,c=1,d=1
    else if(c>d)
      a=0,b=0,c=0,d=0
    else
      a=2,b=2,c=2,d=2
   }
   else
    a=3,b=3,c=3,d=3


### Base convertion

- Binary array to decimal value
Consider a vector of integers containing the representation of a binary number.
Ex: Binary number = 1011
Representation in a vector of integers:
v[0]= 1
v[1]= 1
v[2]= 0
v[3]= 1
Decimal= 11

Implement an Assembler program that given a vector representing a number
binary, transform to decimal representation and display on screen.

- Decimal to binary
Simple convertion of a decimal number to binary.

### Matrix Operations

- Compare Matrix
Comparisson of two matrix 3x3, checking if the two are equal.

- Diagonal Matrix
Sum all values of the diagonal matrix.

- Secondary Diagonal Matrix
Sum all values of the secondary diagonal matrix.

- Magic square
A square matrix of integers is called a “magic square” if the
sum of the elements of each row, column, major diagonal and minor diagonal
were equal. Write an Assembler program that checks if an NxN matrix is
a magic square (assume that the dimension N is defined in a variable in the
data section). If the matrix is ​​a magic square, print the value 1, if
otherwise print the value zero.

- Sum Matrix
Sum all elements of an 3x3 matrix and store in a variable.


### Code translation and analisys

Consider the following code snippet:

long z=0;
for (long i= 0; i < 50000; i++)
  for (long y=0; y < 50000; y++) 
    z+= i-y;

a) Implement the above code in C.

b) Implement the above snippet in assembler, seeking to use the smallest number
possible from registrars.

c) Implement the above snippet in assembler, seeking to reduce access to the
memory.



