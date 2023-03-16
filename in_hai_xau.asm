; In hai chuoi Tieng Viet va Tieng Anh
.model small   ;chuong trinh nay chon bo nho small
.stack 100     ; kich thuoc ngan xep la 100bytes
.data          ; cac dong duoi data la khai bao bien
    ; CR- quay ve dau dong Cariage Return
    ; LF- xuong dong moi   Line Feed    
    ; DB- double, khai bao chuoi
    crlf DB 13, 10, '$'; ki tu xuong dong 
    Eng DB 'hello!$'
    Vie DB 'xinchao!$'
.code
main proc ;thu tuc chinh
          ;khoi tao DS **
     mov ax, @data ;khoi dau thanh ghi DS
     mov ds, ax;tro thanh ghi ds vao dau doan data      
       
     ;lenh goi ham 9 cua ngat21
     ;co tac dung in ra mot xau ki tu
     mov ah, 9
     ;LEA: Load Effective Address
     ;gan dia chi cua bien Eng vao thanh ghi dx
     lea dx, Eng
     int 21h; in ra bien Eng (hello!)
     ;gan dia chi cua bien crlf vao thanh ghi dx
     lea dx, crlf
     int 21h; in ra bien crlf (xuong dong+ thut dau dong)
     ;gan dia chi cua bien Vie vao thanh ghi dx       
     lea dx, Vie
     int 21h;in ra bien Vie (xinchao!)
     
     ;tro ve DOS, dung ham 4CH cua ngat21
     mov ah, 4ch
     int 21h
main endp
END
