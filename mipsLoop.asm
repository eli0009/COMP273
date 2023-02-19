.data
str1: .asciiz "one\n"
str2: .asciiz "two\n"
str3: .asciiz "three\n"

array: .word str1,str2,str3

.text
main:
li $v0, 4
li $t1, 0

loop:
lw $a0, array($t1)
syscall 

addi $t1, $t1, 4
ble $t1, 8, loop
