%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    
    mov rax,a   ; Copy a address to rax register
    mov rax,[a] ; Copy a value to rax register (8 Byte)
    mov al, [a] ; (1Byte)
    
    mov [a], byte 0x55      ; Copy a varaible to 0x55(Byte)
    mov [a], word 0x6666    ; Copy a variable to 0x6666(word)
    mov [a], cl             ; copy a variable to cl register
                       
    xor rax, rax
    ret

   
    ; 초기화 된 Data Section(DATA)
    ; 변수이름, 크기, 초기
    ; 크기: db(1Byte), dw(2Byte) dd(4Byte) dq(8Byte)
section .data
    a   db    0x11 ; [0x11]
    b   dw    0x2222
    c   dd    0x33333333
    d   dq    0x4444444444444444
    
    ; 초기화 하지 않은 Data Section(BSS)
    ; 변수이름, 크기, 개수
    ; 크기: resb(1Byte), resw(2Byte), resd(4Byte), resq(8Byte)
section .bss
    e resb  10
    