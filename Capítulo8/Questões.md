# Resolução das questões

## Questão 1: Given the following assembly language statements, indicate whether they are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement

> Correçã0: 0,5

* A. Resposta: Correto.

    ```asm
    x sdword ?,?,?
    ```

* B. Resposta: Correto.

    ```asm
    y sdword 3 dup(0)
    ```

* C. Resposta: Correto.

    ```asm
    mov eax,x+8
    ```

* D. Resposta: Correto

    ```asm
    mov eax,y[ebx]
    ```

* E. Resposta: Correto

    ```asm
    mov esi,edi
    ```

* F. Resposta:  Incorreto, não pode realizar dois acessos a memória.

    ```asm
    mov [esi],[edi]
    ```

---

## Questão 2: Given the contents of the following memory location, what is stored in the eax register at the end of each segment?

> Correçã0: 0,5

* A. Resposta: 5

    ```asm
     mov eax, temp 
    ```

* B. Resposta: 200

    ```asm
    mov eax, offset temp 
    ```

* C. Resposta: 200

    ```asm
    lea eax, temp
    ```

* D. Resposta: 204

    ```asm
    mov eax, offset temp+4
    ```

* E. Resposta: 200

     ```asm
    mov esi, offset temp 
    mov eax, esi
    ```

* F. Resposta: 5

    ```asm
    mov edi, offset temp
    mov eax, [edi]
    ```

* G. Resposta: 12

    ```asm
    lea esi,temp
    lea edi,temp+4
    mov eax,[esi]
    add eax,[edi]
    ```

* H. Resposta: 14

    ```asm
    mov esi,offset temp+4
    mov eax,2
    imul [esi]
    ```

---

## Questão 3: Implement the following C instructions using assembly language. Assume all variables are declared as sdword

> Correçã0: 0,5

* A. num[0] = 1;

    ```asm
    mov num+0,1 
    ```

* B. x[1] = x[2];

    ```asm
    lea esi, x + 8
    mov eax, [esi]
    sub esi, 4
    mov [esi], eax
    ```

* C. y[i+1] = y[i];

    ```asm
    mov esi, offset y
    mov edx, i
    sal edx, 2 ; edx = 4*i
    add esi, edx ; esi = offset y + 4*i
    mov eax, [esi]
    add esi, 4 ; esi = y[i+1]
    mov [esi], eax
    ```

* D. z[i] = z[j];

    ```asm
    mov esi, j
    sal esi, 2 ; esi = 4*j
    add esi, offset z ; esi = offset z + 4*j

    mov edi, i
    sal edi, 2 ; edi = 4*i
    add edi, offset z ; edi = offset z + 4*i

    mov eax, [esi]
    mov [edi], eax ; z[i] = z[j] 
    ```

---

## Questão 4: Given the declarations below, indicate what would be stored in the eax register for each of the following instructions. Note that oarray is of type sword, not sdword (hint: see Chap. 1)

> Correçã0: 0,5

```c
    narray sdword 1,2,3,4,5
    marray sdword 10 dup(?)
    oarray sword 15,20,25
```

* A. Resposta: 5

    ```asm
    mov eax, lengthof narray
    ```

* B. Resposta: 20

    ```asm
    mov eax, sizeof narray
    ```

* C. Resposta: 10

    ```asm
    mov eax, lengthof marray
    ```

* D.  Resposta: 40

    ```asm
    mov eax, sizeof marray
    ```

* E.  Resposta: 3

    ```asm
    mov eax, lengthof oarray
    ```

* F. Resposta: 6

    ```asm
    mov eax, sizeof oarray
    ```

---

## Questão 5: Write both the C code and the assembly code to transfer the contents of a 20-element array of integers to a second 20-element array of integers

* Resposta: código à parte

---

## Questão 6: Just as there is a simple and modified version of the selection sort, so is there both a simple version and a modified version of the bubble sort. The simple version in C is the same length as the simplified version of the selection sort presented in Sect. 8.6

---

### a. Write both the C code and the assembly code to implement the simplified version of the bubble sort which compares every element of every pass through the array whether there was a swap on the previous pass or not

---

### b. First write the C code for the modified version of the bubble sort and thenwrite the modified version in assembly language. With the modified version,if there is not a swap on the previous pass through the array, the array is in order and there is no need to make any subsequent passes through the array

---

Resposta: Código à parte

---
