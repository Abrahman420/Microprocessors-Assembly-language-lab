org 100h
 ;This code made by Abdur Rahman-002 
 ;Don't copy // Thank-you.
mov ah, 2
mov dl, '#'
int 21h

mov ah, 1
int 21h
mov bl, al         

mov ah, 2
mov dl, 0Dh         
int 21h
mov dl, 0Ah         
int 21h

mov dl, ' '
int 21h

cmp bl, 'A'
jl  display
cmp bl, 'Z'
jle to_lower
cmp bl, 'a'
jl  display
cmp bl, 'z'
jg  display

sub bl, 32
jmp display

to_lower:
add bl, 32

display:
mov ah, 2
mov dl, bl
int 21h

mov ah, 4Ch
int 21h

ret