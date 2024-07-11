.data
tab_int: .word 12, 13, 52
msg: .asciiz "\n"
.text
li $t1,3
la $t0,tab_int
li $t2,0
boucle:
bge $t2,$t1,fin_boucle
lw $a0,($t0)
li $v0,1
syscall
addi $t0,$t0,4
addi $t2,$t2,1
j boucle
fin_boucle:
li $v0,10
syscall
