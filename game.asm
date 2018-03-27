.model tiny
.data
     playerpos db 40,20   ;player position [dl,dh]
	 bulletpos db 40,20
.code
   org 0100h

main:
		   ;  set display mode to text mode
			mov   ah, 0h
			mov   al, 3h
			int   10h

			; set initial value for cursor position
			mov   dh,00h  ; row variable
			mov   dl,00h   ; column variable
			mov   bh, 0h
;--------------------------------------------player control part ---------------------------------------------------------
printplayer:
        
		;move cursor to player's position
		mov dl ,playerpos
		mov dh ,playerpos+1

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
        
		;move cursor to player's position
		mov dl ,playerpos
		mov dh ,playerpos+1

	    mov ah,02h
		int 10h

		mov ah,00h
		int 16h

		push ax
		mov   ah, 9h   ; set to write character mode
        mov   cx, 1    ; print 1 character
        mov   bl, 0h   ; set attribute for character
        mov   al, 'A'  ; set desired character to 'O'
        int   10h
		pop ax

		cmp al,'a'            ; if press 'a' then move left
		jz checkboundleft 

		cmp al ,'d'            ; if press 'a' then move left
		jz checkboundright

		cmp al,20h
		jz shoot


		jmp printplayer

checkboundleft : 
        
		cmp dl,0
		jg moveleft
		jmp printplayer

checkboundright : 
        
		cmp dl,79
		jl moveright
		jmp printplayer

moveleft :
        dec dl
		mov playerpos,dl
		jmp printplayer

moveright :
      
	    inc dl
		mov playerpos,dl
		jmp printplayer

shoot : 
        jmp printbullet



;----------------------------------------------------bullet control part --------------------------------------------------------------------------
printbullet :
        
		;move cursor to bullet's position
		mov dl ,bulletpos
		mov dh ,bulletpos+1

	    mov ah,02h
		int 10h

		mov   ah, 9h   ; set to write character mode
        mov   cx, 1    ; print 1 character
        mov   bl, 5h   ; set attribute for character
        mov   al, '|'  ; set desired character to 'O'
        int   10h

movebullet :
        
		push dx
        mov bx,5
		call waiting
		pop dx

		mov ah,02h
		int 10h

		mov   ah, 9h   ; set to write character mode
        mov   cx, 1    ; print 1 character
        mov   bl, 0h   ; set attribute for character
        mov   al, '|'  ; set desired character to 'O'
        int   10h

		dec dh
		mov bulletpos+1 , dh
		cmp dh,0
		jnz printbullet

		mov cl,playerpos+1
		mov ch,playerpos
		dec ch
		mov bulletpos+1,cl
		mov bulletpos,ch

		jmp printplayer

;-------------------------------------------------------------------------------------------------------------------------------------



waiting :
    
        mov   ah, 86h
        mov   cx, 0000h
        mov   dx, 2710h
        int   15h

		dec bx

		cmp bx,0
		jg waiting
		
		ret





ret 
end main