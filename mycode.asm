include "EMU8086.INC" ;for new line
.model small
.stack 100h
.data

main proc
    ;takin input
    mov ah,1
    int 21h
    mov bl,al
    
    ;print new line
    mov ah,2
    mov dl,0Ah
    int 21h 
    mov dl,13
    int 21h
    
    ;another way to print new line     
    printn ""
    
    ;print output
    mov ah,2
    mov dl,bl
    int 21h
    
    
    ;end the program
    mov ah, 4ch
    int 21h
    main endp
end main