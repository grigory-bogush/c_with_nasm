; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -f elf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------

global    _nasm_greeting

section   .text

_nasm_greeting:
    mov       rax, 1                  ; system call for write
    mov       rdi, 1                  ; file handle 1 is stdout
    mov       rsi, msg                ; address of string to output
    mov       rdx, msg.len            ; number of bytes
    syscall                           ; invoke operating system to do the write
    mov       rax, 60                 ; system call for exit
    xor       rdi, rdi                ; exit code 0
    syscall                           ; invoke operating system to exit

section   .data
msg:    db      "Hello from x64 NASM!", 10
.len:   equ     $ - msg
