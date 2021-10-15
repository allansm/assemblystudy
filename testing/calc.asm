global main

extern puts
extern printf

section .data
	txt db '%f',0xA,0x0
	n1 dd 0
	n2 dd 0
	res dd 0

section .text

init:
	mov	[txt],dword '%i'	;change txt text

	mov	eax,271			;store 271 in eax
	mov	[n1],eax		;store eax in n1

	mov	eax,125			;store 125 in eax
	mov	[n2],eax		;store eax in n2
	ret

main:	
	call	init			;store variables

	mov	edx,[n1]		;store in edx n1 value
	mov	ecx,txt			;point to ecx txt
	call	printf			;show n1 value
	
	mov	[txt],dword ' + '	;change txt text
	mov	ecx,txt			;point txt
	call	printf			;show txt
	
	mov	[txt],dword '%i'	;change txt text

	mov	edx,[n2]		;store in edx n2 value
	mov	ecx,txt			;point to ecx txt
	call	printf			;show n2 value
	
	mov	[txt],dword ' = '	;change txt text
	mov	ecx,txt			;point txt
	call	printf			;show txt

	mov	eax,[n1]		;store in eax n1 value
	add	eax,[n2]		;add to eax n2 value
	mov 	[res],eax		;store in res eax value	
	mov	edx,[res]		;store in edx res value
	mov	[txt],dword '%i'	;change txt text
	mov	ecx,txt			;point txt
	call	printf			;show res value
