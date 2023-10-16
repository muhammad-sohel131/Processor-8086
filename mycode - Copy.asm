.MODEL SMALL
.STACK 100H
.DATA
    FIRST DB ?
    SECOND DB ?
    FMSG DB "1st Number : $"
    SMSG DB "2nd Number : $"
    
    SUM DB "Sumation : $"
    SUBT DB "Subtraction : $" 
    MULT DB "Multipltication : $"
    DIVI DB "Divition : $"

.CODE
MAIN PROC
    ; data segment
	MOV AX, @DATA
	MOV DS, AX   
	;take first number
	MOV AH,9
	LEA DX, FMSG
	INT 21H
	
	MOV AH,1
	INT 21H 
	SUB AL,30H    
	MOV FIRST,AL
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	
	;take second number
	MOV AH,9
	LEA DX, SMSG
	INT 21H
	
	MOV AH,1
	INT 21H
	SUB AL,30H     
	MOV SECOND,AL
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	
	;addition
	MOV BH,FIRST
	MOV BL, SECOND
	ADD BH,BL
	ADD BH,30H 
	
	MOV AH,9
	LEA DX, SUM
	INT 21H
	
	MOV AH,2
	MOV DL,BH
	INT 21H 
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	
	;subtruction
	MOV BH,FIRST
	MOV BL, SECOND
	SUB BH,BL
	ADD BH,30H 
	
	MOV AH,9
	LEA DX, SUBT
	INT 21H
	
	MOV AH,2
	MOV DL,BH
	INT 21H 
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	
	;multiplication 
	
	MOV AH,9
	LEA DX, MULT
	INT 21H
	      
	      
	MOV AH, 0H      
	MOV AL, FIRST
	MOV BL, SECOND
	MUL BL
	ADD AL,30H
	
	MOV AH,2
	MOV DL,AL
	INT 21H 
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	
	;division 
	
	MOV AH,9
	LEA DX, DIVI
	INT 21H
	      
	      
	MOV AH, 0H      
	MOV AL, FIRST
	MOV BL, SECOND
	DIV BL
	ADD AL,30H
	
	MOV AH,2
	MOV DL,AL
	INT 21H 
	
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H

    ; exit
	MOV AH, 4CH
	INT 21H
MAIN ENDP
END MAIN