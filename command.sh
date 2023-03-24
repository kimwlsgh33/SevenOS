# make object file
nasm -f bin boot.asm -o boot.bin

# run qemu ( emulator ) & start boot.bin
qemu-system-x86_64 boot.bin
