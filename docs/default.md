# Default Usage

## print "Hello World!" on the screen to stdout

```asm
.global _start  // _start is the entry point of the program, Provide the entry point to the linker (address of the entry point)
section .text  // separate the code from the data

_start:
    mov eax, 4  //system call number 4 is write
    mov ebx, 1 //file descriptor 1 is stdout
    mov ecx, msg
    mov edx, 13 //length of msg
    int 0x80     //call kernel

    //Exit
    mov eax, 1
    mov ebx, 0
    int 0x80

section .data

msg db "Hello World!", 0x0a
```

## build with nasm

```sh
nasm -f elf hello.asm -o hello.o
ld -m elf_i386 -s -o hello hello.o
./hello
```
