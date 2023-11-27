.model small
.stack 100h
.data 
    enterNumber db 0Dh, 0Ah, "Enter a number : $"
    evenMsg db 0Dh, 0Ah, "The number is even$"
    oddMsg db 0Dh, 0Ah, "The number is odd$"
    enterAny db 0Dh, 0Ah, "Enter any key to continue or N to exit : $"
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        agin:
          mov ah,9
          lea dx, enterNumber
          int 21h
                 
          mov ah,1
          int 21h
          sub al,30h
          mov ah,0
          
          mov bx,2
          div bx
          
          cmp dx,0
          je even
               mov ah,9
               lea dx, oddMsg
               int 21h
                 
               lea dx, enterAny
               int 21h
                 
               mov ah,1
               int 21h
               cmp al, 'N'
               jne agin
               
               jmp exit
          even:
            mov ah,9
            lea dx, evenMsg
            int 21h
              
        lea dx, enterAny
        int 21h
        
        mov ah,1
        int 21h
        cmp al, 'N'
        jne agin
        
        exit:   
        mov ah, 4ch
        int 21h
    main endp
end main