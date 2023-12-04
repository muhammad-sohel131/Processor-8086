.model small
.stack 100h
.data
    msg db "Enter a character : $"
    alphabetMsg db 0Dh,0Ah,"This is Alphabet.$"
    digitMsg db 0Dh,0Ah, "This is Digit.$"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al,'0'
            jle alphabet
        
        cmp al,'9'
            jge alphabet
                
        mov ah,9
        lea dx, digitMsg
        int 21h
        jmp exit
            
        alphabet:
              mov ah,9
              lea dx, alphabetMsg
              int 21h
              jmp exit
              
        exit:
            mov ah,4ch
            int 21h
            
    main endp
end main