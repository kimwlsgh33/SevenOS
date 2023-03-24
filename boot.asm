; print "Hello World!" on the screen
mov ah, 0x0e ; move 0x0e to ah
mov al, 'H' ; move 'H' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'e' ; move 'e' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'o' ; move 'o' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, ' ' ; move ' ' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'W' ; move 'W' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'o' ; move 'o' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'r' ; move 'r' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'l' ; move 'l' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, 'd' ; move 'd' to al
int 0x10 ; interrupt 0x10
mov ah, 0x0e ; move 0x0e to ah
mov al, '!' ; move '!' to al
int 0x10 ; interrupt 0x10



; the whole binary file needs to be 512 bytes long to be bootable
jmp $ ; e9 fd ff

; db : define byte
times 510-($-$$) db 0
; times : repeat the following command n times
; $ : current location
; $$ : start location
; 510-($-$$) : 510 - (current location - start location)
; if current location is 0x7c00, then 510 - (0x7c00 - 0x7c00) = 510
; define 510 bytes of 0x00
; if current location is 0x7c01, then 510 - (0x7c01 - 0x7c00) = 509
; define 509 bytes of 0x00

db 0x55, 0xaa 
; last two bytes of the file must be 0x55 and 0xaa (boot signature)
