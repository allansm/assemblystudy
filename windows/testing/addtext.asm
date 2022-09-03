global main

extern puts

section .data
	txt	db	'',0

section .text

main:
	mov	[txt+0],dword 'alla'
	mov	[txt+4],dword 'nsm '
	mov	[txt+8],dword ':D'
	mov	ecx,txt
	call	puts	
