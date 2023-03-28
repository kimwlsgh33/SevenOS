;; boot.asm
;; this is a simple boot loader
;; using NASM (Netwide Assembler)

mov ah, 0x0e    ; ah : integer, IO / 0x0e : print character
mov al, 65      ; al : integer, IO / 65 : ASCII code for 'A'
int 0x10        ; int : interrupt / 0x10 : video interrupt - excute BIOS

;; mov bx, 4       ; bx : address / 4 : number of times to print
;; cmp bx, 5       ; cmp : compare / bx : address / 5 : number to compare to
;; je label       ; jne : jump if not equal / loop : label

loop:
    inc al      ; inc : increment address / al : integer, IO
    cmp al, 90  ; cmp : compare / al : integer, IO / 90 : ASCII code for 'Z'
    ;; mov ah, 0x0e
    ;; mov al, 'X'
    int 0x10
    jne loop    ; jne : jump if not equal / loop : label
jmp $

; the whole binary file needs to be 512 bytes long to be bootable
; so we need to pad the rest of the file with 0s

; jmp $ : jump to current($) location
; jmp $ ;
times 510-($-$$) db 0  ; db : define byte
; times : repeat the following command n times
; $$ : start location
; 510-($-$$) : 510 - (current location - start location)

db 0x55, 0xaa 
; last two bytes of the file must be 0x55 and 0xaa (boot signature)
