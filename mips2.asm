main:
#initialize constants
li $v0, 1
li $t1, 0 
li $t2, 1

#variables
li $t3, 3
li $t4, 7
#li $t5, 4

beq $t1, $t2, test
add $t5, $t4, $t3
j exit


test:
sub $t5, $t4, $t3

exit:
move $a0, $t5
syscall 