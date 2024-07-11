.data
msg_t: .asciiz "\ntableau : "
msg_s: .asciiz "\nsize: "
tab_a: .word 200
msg_ins: .asciiz "\ninsert :"
.text
#message t
lw $t0,tab_a
la $a0,msg_t
li $v0,4
syscall
#message size
la $a0,msg_s
li $v0,4
syscall
li $v0,5
syscall
move $t1,$v0
li $t2,1
boucle:
beq $t2,$t1,fin_boucle
la $a0,msg_ins
li $v0,4
syscall
li $v0,5
syscall
sw $v0,($t0)
addi $t2,$t2,1
addi $t0,$t0,4
j boucle
fin_boucle:
li $v0,10
syscall
