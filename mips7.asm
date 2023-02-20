
.text

main: 
li $v0, 1
li $s1, 7
li $s2, 9

# store value into stack
addi $sp, $sp, -4
sw $s1, 0($sp)

addi $sp, $sp, -4
sw $s2, 0($sp)

# pop value from stack
lw $t1, 0($sp)
addi $sp, $sp, 4

lw $t2, 0($sp)
addi $sp, $sp, 4

# print values
move $a0, $t1
syscall
move $a0, $t2
syscall
