.data
spaceString:
 .asciiz " "
newlineString:
 .asciiz "\n"
array: .float 0.0938, 0.79043, 1, 0

.text
main:
    # array length
    li $s0, 4
    # current index
    li $s1, 0
    # address location
    li $s2, 0

printArray:
    lwc1 $f12, array($s2)
    jal printFloat
    jal printSpace

foriCheck:
    addi $s1, $s1, 1
    addi $s2, $s2, 4
    blt $s1, $s0, printArray

    # exit
    li $v0, 10
    syscall

printSpace:
    li $v0, 4
    la $a0, spaceString
    syscall
    jr $ra

printNewLine:
    li $v0, 4
    la $a0, newlineString
    syscall
    jr $ra

printFloat: # in $f12
    li $v0, 2
    syscall
    jr $ra