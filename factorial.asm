.data
text: .asciiz "\nentrer le factorial nombre : "
text1: .asciiz "\nla resultat : "
mzg_erreur: .asciiz "\nenter a positive number"
.text
#afficher le message
debut:
la $a0,text
li $v0,4
syscall
#entrer l'information
li $v0,5
syscall
#affecter la valeur au registre t1
move $t2,$v0 
move $t4,$t2
#boucle
#verification de la condition 
condition:
beq $t2,1,fin #t2 a la valeur de factorial
bgt $t2,1,factorial
beqz $t2,zerocas
bltz $t2,erreur
erreur:
la $a0,mzg_erreur
li $v0,4
syscall
j debut
factorial:
sub $t2,$t2,1
mul $t4,$t4,$t2
j condition
zerocas:
li $t4,1
#terminer le program
fin:
la $t0,text1
move $a0,$t0
li $v0,4
syscall
move $a0,$t4
li $v0,1
syscall
li $v0,10
syscall
