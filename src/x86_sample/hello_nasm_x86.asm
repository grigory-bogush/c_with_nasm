; Does not appear to work on x64 bit processors

; Separate compilation:
; nasm hello_nasm_x86.asm -f elf32
; ld -m elf_i386 hello_nasm_x86.o -o hello

global _start

section .text
_start:
    push    dword msg.len
    push    dword msg
    push    dword 1
    mov     eax, 4
    sub     esp, 4
    int     0x80
    add     esp, 16

    push    dword 0
    mov     eax, 1
    sub     esp, 12
    int     0x80

section .data

msg:    db      "Hello, from x86 NASM!", 10
.len:   equ     $ - msg