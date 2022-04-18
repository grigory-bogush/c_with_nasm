# C with NASM

Basic snippet showing how to compile C and NASM together into one executable with CMAKE

# Dependencies
 - x64 processor (x86 support is WIP)
 - any C compiler
 - NASM assembler
 - gcc-multilib for 64bit machines (as 32bit headers are not supported by default)

# Known issues
  Running x86 assembly sample does not seem to work on x64 cpus (it runs but not output is there)
  I think it is due to syscall convention differences, but it is to be researched.
