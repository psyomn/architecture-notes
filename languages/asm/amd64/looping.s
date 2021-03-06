	%define sys_write 1
	%define stdout 1
	%define exit 60
	%define exit_success 0

        section .data

        dot     db      "."
	dot_len equ 	$-dot

	section .bss

        section .text
        global _start

_start:
	xor rax, rax
	mov rbx, 10

loop:	
	call print_dot
	inc rax

	cmp rax, rbx
	jle loop

	jmp halt

halt:
        mov rax, exit
        mov rdi, exit_success
        syscall

print_dot:
	push rax
	push rdi 
	push rsi
	push rdx 

	mov rax, sys_write
	mov rdi, stdout
	mov rsi, dot
	mov rdx, dot_len
	syscall

	pop rdx
	pop rsi
	pop rdi 
	pop rax

	ret


