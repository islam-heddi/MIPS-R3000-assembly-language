.data 
msg: .asciiz "\n"
tab_int: .word 1, 2, 3, 4
.text 
lw $t0,tab_int
li $t1,1
debut:
bge $t1,4,fin
lw $t4,($t0)
move $a0,$t4
addi $t0,$t0,4
addi $t1,$t1,1
li $v0,1
syscall
la $a0,msg
li $v0,4
syscall
j debut
fin:
li $v0,10
syscall
