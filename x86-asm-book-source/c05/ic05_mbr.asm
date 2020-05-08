mov ax,0xb800
mov es,ax

mov byte [es:0x00],'D'
mov byte [es:0x01],0x07
mov byte [es:0x02],'a'
mov byte [es:0x03],0x07
mov byte [es:0x04],'s'
mov byte [es:0x05],0x07
mov byte [es:0x06],'t'
mov byte [es:0x07],0x07
mov byte [es:0x08],'y'
mov byte [es:0x09],0x07
mov byte [es:0x0a],':'
mov byte [es:0x0b],0x07


mov ax,cs
mov ds,ax

mov dx,0
mov ax,0xa99

mov bx,0x0a

div bx 
mov [0x7c00+number],dl
xor dx,dx


div bx
mov [0x7c00+number+1],dl
xor dx,dx


div bx
mov [0x7c00+number+2],dl
xor dx,dx

div bx
mov [0x7c00+number+3],dl
xor dx,dx

div bx
mov [0x7c00+number+4],dl
xor dx,dx


mov al,[0x7c00+number+4]
add al,0x30
mov byte [es:0x0c],al
mov byte [es:0x0d],0x07

mov al,[0x7c00+number+3]
add al,0x30
mov [es:0x0e],al
mov byte [es:0x0f],0x07


mov al,[0x7c00+number+2]
add al,0x30
mov [es:0x10],al
mov byte [es:0x11],0x07


mov al,[0x7c00+number+1]
add al,0x30
mov [es:0x12],al
mov byte [es:0x13],0x07

mov al,[0x7c00+number]
add al,0x30
mov [es:0x14],al
mov byte [es:0x15],0x07

pause:
    jmp near pause
number db 'a','b','c','c','d'

times 510-($-$$) db 0
db 0x55,0xaa







