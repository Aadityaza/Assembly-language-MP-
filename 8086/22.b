.data
str db 'equal$'
str1 db 'not-equal$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    ;taking 2 charecter input
    mov ah,01h
    int 21h
    mov bl,al
    mov ah,01h
    int 21h
    mov ah,02h
    mov bh,00
    mov dh,01h
    mov dl,00h
    int 10h
    cmp al,bl
    je down
    mov ah,09h
    lea dx,str 1
    int 21h
    jmp exit
    down: mov ah,09h
    lea dx,str
    int 21h
    exit:mov ax,4c00h
    int 21h
    main endp
end main
