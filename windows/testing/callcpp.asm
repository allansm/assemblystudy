global main
	extern hello
	extern showNumber
	extern lnprintln

section .data
	txt	db	'show me',0

section .text

main:
	mov ecx,127
	call showNumber
	call hello
	mov ecx,txt
	call lnprintln
	ret
