.model small
.stack 100h
.data
    msg db "Enter a digit : $"
    divisibleMsg db 0Dh,0Ah,"This is divisible by 5.$"
    notDivisibleMsg db 0Dh,0Ah, "This is not divisible by 5.$"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h
        
        sub al,30h        
        mov ah,0
        mov bx,5
        
        div bx
        
        cmp dx,0
            je divisible
                
        mov ah,9
        lea dx, notDivisibleMsg
        int 21h
        jmp exit
            
        divisible:
              mov ah,9
              lea dx, divisibleMsg
              int 21h
              jmp exit
              
        exit:
            mov ah,4ch
            int 21h
            
    main endp
end main