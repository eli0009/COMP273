# if $t1 == $t2 : $t3 + $t4 else $t3 - $t4 
.data
nl: .asciiz "\n"

.text
main:
li $t1, 14
li $t2, 13

li $t3, 7
li $t4, 4

beq $t1, $t2, equal
sub $t0, $t3, $t4
j exit

equal:
add $t0, $t3, $t4

exit:
li $v0, 1
move $a0, $t0
syscall 
