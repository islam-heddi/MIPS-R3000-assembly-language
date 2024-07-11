.data
text: .asciiz "entrer un nombre : "
text1: .asciiz "entrer la puissance : "
text2: .asciiz "la resultat : "
.text
la $t0,text
move $a0,$t0
li $v0,4
syscall
li $v0,5
syscall
move $t2,$v0
la $t1,text1
move $a0,$t1
li $v0,4
syscall
li $v0,5
syscall
move $t3,$v0
# t3 = puissance / t2 = nombre
li $t4,1
condition:
bgtz $t3,pow
beqz $t3,fin
pow:
sub $t3,$t3,1
mul $t4,$t4,$t2
j condition
fin:
la $t0,text2
move $a0,$t0
li $v0,4
syscall
move $a0,$t4
li $v0,1
syscall
li $v0,10
syscall