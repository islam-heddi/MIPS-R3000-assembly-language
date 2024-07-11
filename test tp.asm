.data
msg_text: .asciiz "\nentrer un nombre : "
msg_pair: .asciiz "\nCette nombre est pair"
msg_impair: .asciiz "\nCette nombre est impair"
.text
la $a0,msg_text
li $v0,4
syscall
li $v0,5
syscall
move $t0,$v0
bltz $t0,boucle_negative
beq $t0,0,Nulle
boucle_positive:
beqz $t0,pair
bltz $t0,impair
sub $t0,$t0,2
j boucle_positve
boucle_negative:
beqz $t0,pair
beq $t0,-1,impair
add $t0,$t0,2
j boucle_negative
impair:
la $a0,msg_impair
li $v0,4
syscall
j fin
pair:
la $a0,msg_pair
li $v0,4
syscall
fin:
li $v0,10
syscall