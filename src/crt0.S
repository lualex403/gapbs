	.extern main

	.global _start
_start:
	.extern heap_init
	call heap_init
	.extern printf_init
	call printf_init
	call main

	push %eax
loop:
	call exit
	jmp loop
