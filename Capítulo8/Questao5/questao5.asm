        .686
        .model  flat, c 
        .stack  100h 

printf  PROTO arg1:Ptr Byte, printlist:VARARG
scanf   PROTO arg2:Ptr Byte, inputlist:VARARG

        .data
        
msg1fmt byte "%s",0
msg2fmt byte "%d",0 

msg1    byte "Digite os 20 numeros para adicionar no arry 1",0Ah,0
msg2    byte "Numero"
msg3    byte 0Ah,"Elementos do array 2:",0Ah,0
msg4    byte ": ",0

count   sdword 0

in1fmt  sdword "%d",0

;arry1    sdword 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,17, 18, 19
arry1    sdword 20 dup(?)
arry2    sdword 20 dup(?)

            .code
main        proc

            INVOKE printf, ADDR msg1fmt, ADDR msg1
            mov ebx, 0
            .while cout < 20
            INVOKE printf, ADDR msg1fmt, ADDR msg2, ADDR msg2fmt, ADDR count, ADDR msg1fmt, ADDR msg4
            INVOKE scanf, ADDR in1fmt, ADDR arry1[ebx]
            add ebx, 4
            inc count
            .endw

            mov count, 0 
            lea esi, arry1
            lea edi, arry2
            .while count < 20 
            mov eax, arry1[esi]
            mov arry2[edi], eax 
            add esi, 4
            add edi, 4
            inc count
            .endw

            mov count, 0
            INVOKE printf, ADDR msg1fmt, ADDR msg3
            lea edi, arry2
            .while count < 20
            mov eax, arry2[edi]
            INVOKE printf, ADDR msg2fmt, eax
            add edi, 4
            inc count
            .endw
            

            ret
main        endp
            end
