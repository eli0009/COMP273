main:
li $v0, 1
li $s1, 2
li $s2, 9
jal addSquare

# print result
move $a0, $t1
syscall

# terminate program
li $v0, 10
syscall 

#add 2 numbers then square the result
addSquare:
add $s0, $s1, $s2

# push to stack
addi $sp, $sp, -4
sw $ra, 0($sp)
# jump
jal square
# after square returns result, jump back to main
lw $ra, 0($sp)
addi $sp, $sp, 4
jr $ra

square:
mul $t1, $s0, $s0
jr $ra