.data
nl:    .asciiz "\n"

.text
# $s0 = printint argument
main:

    li $t0, 128

    #print number
    move $s0, $t0
    jal printint

    #print shift left (mult 2)
    sll $t0, $t0, 1
    move $s0, $t0
    jal printint

    #print shift right (div 2)
    srl $t0, $t0, 2
    move $s0, $t0
    jal printint

    #print negative number
    li $t0, -128
    move $s0, $t0
    jal printint

    #print shift right arithmetic (div 2)
    sra $t0, $t0, 1
    move $s0, $t0
    jal printint

    #exit
    li $v0, 10
    syscall

printint:
    #print number
    li $v0, 1
    move $a0, $s0
    syscall

    #save return address to stack
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    #print line break
    jal linebreak

    #restore return address from stack
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

linebreak:
    li $v0, 4
    la $a0, nl
    syscall
    jr $ra
