global main
;extern puts

section .data
msg	db	"message"
val	equ	"1"
section .text

main:
	mov	ecx,msg
	mov	edx,1
	call	puts
	ret	
puts:
	mov	ebx,1
	mov	eax,4
	int	0x21
	mov	eax,1
	int	0x21

sum:
	n1	equ	1
	mov	eax,n1
	ret	
