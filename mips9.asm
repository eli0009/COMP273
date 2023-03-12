main:
li $s1, 5
li $s0, 7
slt $t0, $s1, $s0 
bne $t0, $0, Gteq 

li $v0, 10
syscall

Gteq:
li $v0, 1
li $a0, 9
syscall
mo