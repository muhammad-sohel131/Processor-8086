.model small
.stack 100h
.data
    sum dw ?
    
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov cx, 99
    mov bx, 1
    mov ax, 0
    
    addition:
        add ax,bx
        inc bl
        loop addition
        
    mov sum,ax
    ;The sum of 1 to 99 is 4950.
    ;The hexadecimal value of 4950 is 1356h.
    
    mov ah,4ch
    int 21h
main endp
end main
    