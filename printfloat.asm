.data
PI: .float 3.14

.text   
li $v0, 2
# printed float goes to $f12
lwc1 $f12, PI
syscall