  .model small
  .stack 100h
  .data
    c dw 256
    f dw ?
  
  .code
  main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, c
    mov bx, 9
    mul bx
    
    mov bx,5
    div bx;
    
    add ax, 32
    
    mov f,ax
       
         
    main endp
  end main
  