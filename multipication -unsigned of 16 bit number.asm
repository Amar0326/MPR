data segment 
    a dw 1000h
    b dw 2000h
    c dw ?
    d dw ?
    data ends
code segment
    assume cs:code ds:data 
    start:
    mov ax,data
    mov ds,ax
    mov ax,a
    mov bx,b
mul bx
    mov cx,ax
    mov c,dx
    mov b,cx
    code ends
end start
    