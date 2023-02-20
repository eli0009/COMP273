.text

main: 
li $t0, 3
li $t1, 6
jal sum


li $v0, 1
move $a0, $s0
syscall

li $v0, 10   		# System call code 10 (exit).
syscall

sum:
add $s0, $t0, $t1
jr $ra
