.MODEL SMALL
.STACK 100H

.DATA
    C DW 25
    F DW ?

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, C
    MOV BX, 9
    MUL BX          

    MOV BX, 5
    DIV BX          

    ADD AX, 32      
    MOV F, AX       

 
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
