.data
    nl: .asciiz "\n"

.text
multiplication:
    li $t1, 9
    li $t2, 4
    mult $t1, $t2
    # mfhi gets the high order bits but we don't care about them most of the time
    mflo $a0
    li $v0, 1
    syscall
    jal newline

division:
    li $t1, 9
    li $t2, 4
    div $t1, $t2
    # quotient
    mflo $a0
    li $v0, 1
    syscall
    jal newline
    # remainder
    mfhi $a0
    li $v0, 1
    syscall
    
exit:
    li $v0, 10
    syscall

newline:
    la $a0, nl
    li $v0, 4
    syscall
    jr $ra