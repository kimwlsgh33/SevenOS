# Operating Mode

## Real Mode

- 16 bit Mode
- assisted by BIOS

# BIOS

- Basic Input Ouput System
  - Simple tools to interact with the computer

## How to print a char

- Switch to teletype Mode

```asm
mov ah, 0x0e
mov al, 'C'
```

- Call BIOS Interupt

```asm
int 0x10
```
