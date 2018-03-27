.model tiny
.data
.code
   org 0100h

main:
		   ;  set display mode to text mode
			mov   ah, 0h
			mov   al, 3h
			int   10h

			; set initial value for cursor position
			mov   dh, 20  ; row variable
			mov   dl, 40   ; column variable
			mov   bh, 0h

printplayer:
      
	    mov ah,02h
		int 10h

		mov   ah, 9h   ; set to write character mode
        mov   cx, 1    ; print 1 character
        mov   bl, 7h   ; set attribute for character
        mov   al, 'A'  ; set desired character to 'O'
        int   10h

		xor al,al
		mov ah,01h
		int 16h
		jz moveplayer
		jmp printplayer

moveplayer :     
        
		mov ah,00h
		int 16h

		push ax
		mov   ah, 9h   ; set to write character mode
        mov   cx, 1    ; print 1 character
        mov   bl, 0h   ; set attribute for character
        mov   al, 'A'  ; set desired character to 'O'
        int   10h
		pop ax

		cmp al,'a'
		jz moveleft

		cmp al ,'d'
		jz moveright

		jmp printplayer

moveleft :
        dec dl
		jmp printplayer

moveright :
      
	    inc dl
		jmp printplayer

ret 
end main