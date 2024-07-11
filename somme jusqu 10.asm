.data
text: .asciiz "la resultat : "
.text
li $t0,9
li $t1,10
condition:
bgt $t0,0,somme
beqz $t0,fin
somme:
add $t1,$t1,$t0
sub $t0,$t0,1
j condition
fin:
la $t2,text
move $a0,$t2
li $v0,4
syscall
move $a0,$t1
li $v0,1
syscall