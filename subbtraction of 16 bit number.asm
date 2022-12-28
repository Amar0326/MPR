data segment
    a dw 1122h
    b dw 1010h
    c dw ?
    data ends
code segment
assume cs: code ds:data 
     start:
    mov ax,data
    mov ds,ax
    mov ax,a
    mov bx,b
    sub ax,bx
    mov cx,ax
    mov c,cx
    int 3 
    code ends
end start