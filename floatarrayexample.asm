.data
    time:       .float 310, 393, 422, 494, 514 
    miles:      .float 0.0, 42.2, 78.8, 129.4, 133.0
.text  

    la $a1, time         # put address of list into $a1
    l.s $f12 ($a1)       
    li $v0, 2           
    syscall              # This will print 310.0

    l.s $f12 4($a1)
    syscall              # And this will print 393.0