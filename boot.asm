;; boot.asm
;; this is a simple boot loader
;; using NASM (Netwide Assembler)
[org 0x7c00] ; org : origin / 0x7c00 : start location for preventing conflict with BIOS
mov ah, 0x0e
mov bx, variableName            ; save address of variableName

loop:
    mov al, [bx]                    ; move value at address bx to al
    cmp al, 0x00                    ; compare al to 0x00
    je end                          ; jump to end if equal
    int 0x10
    inc bx                          ; increment bx
    jmp loop

variableName:
    db "[Input Any String] : ", 0

end:

;; save character
char:
    db 0

input:
    mov ah, 0                       ; keyboard interrupt
    int 0x16                        ; interrupt 0x16

    mov ah, 0x0e                    ; video interrupt
    int 0x10                        ;
    mov al, [char]                  ; move value at address char to al
    jmp input

;; save string
;; buffer:
;;     times 10 db 0               ; db : define byte
;;     mov bx, buffer              ; save address of buffer
;;     mov [bx], al                ; move value at address al to [bx]
;;     inc bx                      ; increment bx


times 510-($-$$) db 0  ; db : define byte

db 0x55, 0xaa
