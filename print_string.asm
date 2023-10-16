.model small
.stack 100h
.data
msg db "hello world $"
msg2 db "Thank you $"
.code

main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h  
    
    lea dx, msg2
    mov ah,9
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main



