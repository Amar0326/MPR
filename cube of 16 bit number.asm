data segment
    a dw 0064h
    resultH dw ?
    resultL dw ?
data ends

code segment
    assume cs:code ds:data
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,a

mul bx
mul bx

mov resultH,dx
mov resultL,dx
int 3 
code ends
end start