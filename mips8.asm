main:
li $t1, 0
nor $s0, $t1, $zero

li $v0, 1
move $a0, $s0
syscall