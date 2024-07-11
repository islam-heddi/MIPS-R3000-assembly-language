.data
f1: .float 54.1
msg: .asciiz "\nenter a float number : "
.text
lwc1 $f1,f1
lwc1 $f12,f1
li $v0,2
syscall
la $a0,msg
li $v0,4
syscall
li $v0,6
syscall
add.s $f12,$f0,$f1
li $v0,2
syscall
li $v0,10
syscall