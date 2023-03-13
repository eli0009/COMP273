.data
spaceString:
 .asciiz " "
newlineString:
 .asciiz "\n"
array: .float 0.0938, 0.79043, 1, 0

.text
main:
    # put address of array into $s0
    la $s0, array

    # print array[0]
    l.s $f12, 0($s0)
    jal printFloat
    jal printSpace

    # print array[1]
    addi $s0, $s0, 4
    l.s $f12, 0($s0)
    jal printFloat
    jal printSpace

    # print array[2]
    addi $s0, $s0, 4
    l.s $f12, 0($s0)
    jal printFloat
    jal printSpace

    # print array[3]
    addi $s0, $s0, 4
    l.s $f12, 0($s0)
    jal printFloat
    jal printNewLine

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