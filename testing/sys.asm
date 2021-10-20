global main	

extern system

section .data
	command		db	'notepad',0

section .text

main:
	mov ecx,command
	push 0
	call system
