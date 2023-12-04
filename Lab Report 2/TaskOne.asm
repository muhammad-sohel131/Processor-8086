.model small
.stack 100h
.data
    msg db "Enter a character : $"
    consonantMsg db 0Dh,0Ah,"This is consonant.$"
    vowelMsg db 0Dh,0Ah, "This is vowel.$"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al,'a'
            je vowel
        cmp al,'e'
            je vowel
        cmp al, 'i'
            je vowel
        cmp al,'o'
            je vowel
        cmp al, 'u'
            je vowel
            
        mov ah,9
        lea dx, consonantMsg
        int 21h
        jmp exit
        
        vowel:
              mov ah,9
              lea dx, vowelMsg
              int 21h
              jmp exit
              
        exit:
            mov ah,4ch
            int 21h
            
    main endp
end main