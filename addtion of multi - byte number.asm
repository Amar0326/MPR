 data segment 
    a dw 2010h
    b dw 0311h
    c dw 002Ah
    d dw 001Bh
    e dw 014Dh
    t dw ?
    data ends
code segment
    assume cs:code ds:data
    start:
    mov ax,data
    mov ds,ax
    mov ax,a
    mov bx,b
    mov cx,c
    mov dx,d
    mov cl,5
    add ax,bx
    adc ax,cx
    adc ax,dx
    mov dx,e
    adc ax,dx
    mov t,ax
    int 3 
    code ends
 end start