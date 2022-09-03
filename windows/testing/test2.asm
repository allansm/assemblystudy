global	main
extern	puts

;variables
section .data

msg	db	'testing again',0
n1	equ	122
n2	db	$n1
msg2	db	'ecx diferent edx',0
msg3	db	'ecx equal edx',0
msg4	db	'result:',0xa
;output
section .text

main:
	call testing
removed:
	mov ecx, msg
	call puts
	ret

removed2:
	mov	ecx, n2
	mov	edx, n1
	cmp	ecx, edx
	jne	removed
	call	puts
	ret

testingIf:
	mov	ecx,1		;ecx equal 1
	mov	edx,2		;edx equal 2
	cmp	ecx,edx		;compare ecx with edx
	jne	diferent	;if not equal
	call equal
	
diferent:	
	mov	ecx, msg2 
	call puts
	ret
equal:
	mov	ecx, msg3 
	call puts
	ret

testing:
	mov	ecx,n1	;store in ecx n1
	add	ecx,01	;add to ecx +1
	mov	edx,n1	;store in edx n1
	sub	ecx,01	;subtract from ecx
	cmp 	ecx,edx	;compare ecx with edx
	je	equal	;if equal
	call	diferent
