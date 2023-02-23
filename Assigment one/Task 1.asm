.text

li 	$v0, 5 #v0=5 to read intger
syscall
add 	$a0,$0,$v0 #input number
jal Fib
add 	$s0,$0,$v0 #s0=v0
li 	$v0,1 #to dispaly intger
add 	$a0,$0,$s0
syscall
li 	$v0,10 # to terminate the program
syscall


Fib:
	bgt $a0,1, fib_rec
	move $v0,$a0
	jr $ra
fib_rec:
	sub	$sp,$sp,12
	sw	$ra,0($sp)
	sw	$a0,4($sp)
	add	$a0,$a0,-1 #n-1
	jal	Fib	# fib(n-1)
	lw	$a0,4($sp) #store n
	sw	$v0,8($sp)
	add	$a0,$a0,-2 #n-2
	jal	Fib	#Fib(n-2)
	lw	$t0,8($sp)
	add	$v0,$t0,$v0
	lw	$ra,0($sp)
	add	$sp,$sp,12
	jr	$ra
