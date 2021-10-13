global main

extern puts

section .data

msg db 'helloworld',0

section .text

main:
	mov ecx,msg
	call puts
	
	mov ecx,dword 'o.O'
	mov [msg],ecx
	
	mov ecx,msg
	call puts
	
	mov ecx,dword 'O.o'
	mov [msg],ecx
	mov ecx,msg

	call puts

	mov ecx,dword ':D'
	mov [msg],ecx

	mov ecx,msg
	call puts
