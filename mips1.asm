	.data

x:	.word 9, 8,7,6,5,4
y: 	.space 4
str: .asciiz "testing\n"
nl: .asciiz "\n"
	.text

main:

la $t1,x
li $s1, 2

lw $s2, 8($t1)
add $t2, $s1, $s2
sw $t2, 12($t1)

lw $t0, 12($t1)

move $a0, $t0
li $v0, 1
syscall