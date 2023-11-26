.model small
.stack 100h
.data
    sum dw ?
    n dw 99
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        ;n(n+1)/2
        
        ;n+1
        mov bx,1
        add bx, n  
        
        ;n(n+1)
        mov ax,n
        mul bx
        
        ;n(n+1)/2
        mov bx,2
        div bx
        
        mov sum, ax
        
    mov ah,4ch
    int 21h
        
    main endp
end main
    
    
 