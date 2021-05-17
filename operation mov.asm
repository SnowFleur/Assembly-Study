%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ; mov reg1, cst   (Right->Left)
    ; mov reg1, reg2  Copy reg2 to Reg1
    
    mov eax, 0x1234         ;32bit used
    mov rbx, 0x12345678     ;64bit used
    mov cl,  0xff           ;8bit  used
    
    mov al, 0x00
    mov rax, rdx
            
    xor rax, rax
    ret
    
;section .data
 