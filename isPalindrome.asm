.686
.model flat

.code

_isPalindrome PROC	;named _test because C automatically prepends an underscode, it is needed to interoperate

	push ebp
	mov ebp,esp		       ;stack pointer to ebp
	mov ebx, [ebp+8]       ;ebx = the address 1st element
	mov ebp,0              ; count from the begining of the array
	mov edi,0              ;count start from the end of the array
	mov eax,1			   ;initalize eax to true
	jmp getLength	       ;the size of the array is in edx

continue:
	
	mov edi,edx			   ;size of the array-1
	sub edi,1
	shr edx,1

compareNextChar:
	add ebp,1
	sub edi,1
	cmp edx,ebp
	jle allDone
	jmp compareChar

getLength:
	mov edx,0			   
	more:
		mov al,[ebx+edx]
		cmp al,0
		je continue
		add edx,1
		jmp more
	jmp continue
compareChar:
	mov al,[ebx+ebp]
	mov ah,[ebx+edi]

	or al,20h            ; make all character become lowercase
	or ah,20h            ;
	cmp al,ah
	                      
	je compareNextChar   ; if equal compare the next character
	mov eax,0             ;if not equal return false

allDone:
	pop ebp
	ret
_isPalindrome ENDP

END