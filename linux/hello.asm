	global    _start

section   .data
	
	msg	db	"helloworld", 10	;msg = "helloworld\n"

section   .text

	hello:				;hello function
		mov       rax, 1	;call write
		mov       rdi, 1	;to stdout
		mov       rsi, msg	;text inside msg
		mov       rdx, 11	;size of text
		syscall			;invoke kernel to execute operation
		
		ret			;return

	exit:				;exit function
		mov       rax, 60	;call exit
		mov       rdi, 0	;exit code 0
		syscall			;invoke kernel to execute operation
		
		ret			;return

	_start:				;executable entry point
		call	hello		;execute hello function
		call	exit		;execute exit function

