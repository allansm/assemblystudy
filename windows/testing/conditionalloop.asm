global main

extern puts
extern printf

section .data

	msg	db	'*',0
	n1	dd	1
	n2	dd	0
	n3 	dd	5
	endmsg 	db 	'this is the end',0	

section .text

;*************************************************************
	main:	
		mov	ecx,msg		;point msg in ecx
		call	puts		;print ecx
		
		call 	addton2		;add n1 to n2

		call 	ifnot		
		call 	if
		
;*************************************************************

addton2:
	mov	eax,[n2]	;store in eax n2 value
	add	eax,[n1]	;add n1 to eax
	mov	[n2],eax	;store in n2 eax
	ret
ifnot:
	mov	ebx,[n3]	;ebx = n3
	cmp	eax,ebx		;compare eax to ebx
	jne	main		;if not repeat
	ret

end:
	mov	ecx,endmsg	;point end msg
	call	puts		;show end msg
	mov	[msg],dword ':D';change msg value
	mov 	ecx,msg		;store msg in ecx
	call	puts		;show ecx
	ret
if:
	mov	ebx,[n3]	;ebx = n3
	cmp	eax,ebx		;if eax == ebx
	je	end		;call end
