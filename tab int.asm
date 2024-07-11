.data 
tab_int: .word 12, 13, 14
.text
la $t2,tab_int
lw $t1,1(tab_int)
la $a0,$t1
li $v0,4
syscall