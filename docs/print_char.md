# print char

## print "Hello World!" on the screen

```asm
mov ah, 0x0e ; move 0x0e to ah
mov al, 'H' ; move 'H' to al
int 0x10 ; interrupt  0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'e' ; move 'e' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'o' ; move 'o' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, ' ' ; move ' ' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'W' ; move 'W' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'o' ; move 'o' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'r' ; move 'r' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, 'd' ; move 'd' to al
int 0x10

mov ah, 0x0e ; move 0x0e to ah
mov al, '!' ; move '!' to al
int 0x10
```

## print with int, oct, hex

```asm
mov ah, 0x0e
mov al, 65
int 0x10

mov ah, 0x0e
mov al, 0x41
int 0x10

mov ah, 0x0e
mov al, 0b1000001
int 0x10
```

## print use inc (current + 1)

```asm
mov ah, 0x0e
mov al, 65
int 0x10

inc al
int 0x10

inc al
int 0x10

inc al
int 0x10
```

## using loop

```asm
mov ah, 0x0e
mov al, 65
int 0x10

loop:
  inc al
  int 0x10
```
