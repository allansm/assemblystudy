        global  main
        extern  puts
	;extern	hello
        section .text
;main is required just like this
main:	
	call test4
	ret
_var:
	db	'im writing in assembly',0
echo:
	sub	rsp, 28h
	mov	rcx, _var
	call	puts
	add	rsp, 28h
	ret
test:
	sub	rsp, len
	mov	rcx, msg
	call	puts
	add	rsp, len
	ret

test2:
	mov	ecx, msg2
	call	puts
	ret
test3:
	mov	edx, len
	mov	ecx, msg
	call	puts
	ret
test4:
	mov	rcx, n1
	call	puts
	ret
test5:
	db	'testing again',0xa
	db	'and again',0
test6:
	dq	10, 0
;test3:
;	mov	n1, 1
;	mov	n2, 2
;	cmp	n1, n2
;	jng	test4
;test4:
;	sub	len3
;	mov	rcx, different
;	call	puts
;	add	len3
;	ret
;variables
section	.data

msg	db	'Hello, world!',0 ;0xa break line? 
len	equ	$ - msg ;equ = a constant

msg2	db	'hell yeah',0
len2	equ	$ - msg

n1	dq	1
n2	dq	2
different	db	'n1 not n2',0
len3	equ	$ - different
