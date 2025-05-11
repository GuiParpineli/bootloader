org 0x7C00
bits 16

start:
  jmp main

puts:
  push si
  push ax

.loop:
  lodsb
  or al, al
  jz .done

.done:
  pop ax
  pop si
  ret

main:

   mov ax, 0
   mov ds, ax
   mov es, ax

   mov ss, ax
   mov sp, 0x7C00


   hlt

.halt:
    jmp .halt

times 510-($-$$) db 0
dw 0AA55h
