global main
extern puts

section	.data

msg	db	'testingmore',0
n1	dw	'2'

msg2	db	'sum:',0xa, 0xd

segment .bss

   num1 resb 2 
   num2 resb 2 
   res resb 1   

section	.text

main:
	mov	eax,num1
	;add	eax,num1
	mov	ecx,msg2
	call	puts
	mov	ecx,eax
	call 	puts
	ret

sum:
	mov	al,2
	mov	bl,2
	add	al,bl
