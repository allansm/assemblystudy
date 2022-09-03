global main

extern puts

section .data

msg db 'helloworld',0

section .text

main:
	mov ecx,msg
	call puts
	call loop

loop:
	call main
