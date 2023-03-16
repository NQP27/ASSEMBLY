.model small
.stack 100
.data
    tbao1 db 'Hay nhap vao 1 ki tu: $'
    tbao2 db 13,10, 'Ki tu da nhap la: $'
    kitu db ?;khoi tao ki tu khong co gia tri ban dau
main proc
    mov ax,@data
    mov ds,ax
    
    ;in ra man hinh thong bao 1
    lea dx, tbao1
    mov ah,9
    int 21h 
    
    ;nhap vao 1 ki tu o ban phim
    mov ah,1 su dung ham ngat 1 cua ngat int21h
    int 21h
    ;gan gia tri vua nhap (duoc luu o al) vao kitu
    mov kitu, al
    
    ;in ra man hinh thong bao 2
    lea dx, tbao2
    mov ah,9
    int 21h
    
    ;in ra ki tu vua nhap
    mov ah,2 ;su dung ham ngat 2 cua ngat int21h
    mov dl,kitu ;hien thi ki tu da luu o dl
    int 21h
    
    ;ve DOS
    mov ah,4ch
    int 21h
main endp
end
