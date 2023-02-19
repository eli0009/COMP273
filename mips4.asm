.data
nl: .asciiz "\n"

.text
main:

li $t1, 10
li $t0, 0

loop:
# print number
li $v0, 1
move $a0, $t0
syscall 
# print line break
li $v0, 4
la $a0, nl
syscall


addi $t0, $t0, 1
ble $t0, $t1, loop