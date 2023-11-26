  .model small
  .stack 100h
  .data
    f dw 1000
    c dw ?
  
  .code
  main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, f
    mov bx, 32
    mul bx
    
    mov bx,5
    div bx;
    
    add ax, 32
    
    mov f,ax
       
         
    main endp
  end main
  