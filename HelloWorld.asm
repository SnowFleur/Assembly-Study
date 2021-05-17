%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    PRINT_STRING msg  ;SASM Tool
    
    xor rax, rax
    ret
    
section .data
    msg db 'Hello World', 0x00