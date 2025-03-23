[org 0x7c00]
 
start:
    mov bp, 0x8000
    mov sp, bp
    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0
    mov dx, 0x184f
    int 0x10
    mov ah, 0x02
    xor bh, bh
    mov dh, 0
    mov dl, 0
    int 0x10
.print:
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'w'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, 0x0D
    int 0x10
    mov al, 0x0A
    int 0x10

times 510-($-$$) db 0
dw 0xAA55
