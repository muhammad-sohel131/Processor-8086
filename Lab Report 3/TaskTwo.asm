.model small
.stack 100h
.data
    n db ?
    result dw ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah,1
        int 21h
        sub al,30h
        mov n,al
        
        mov ch,0
        mov cl,n
        
        mov ax,1
        
        cmp n,0
        jle invalid
        
        factorial:
            mul cx
            loop factorial
        
        mov result, ax
           
        mov ah, 4ch
        int 21h
        
        invalid:
            mov ax, 1
        
        mov result, ax
           
        mov ah, 4ch
        int 21h
    main endp
end main