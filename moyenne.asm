.data
moyenne: .asciiz "entrer le N : "
.text
la $t1,moyenne
move $a0,$t1
li $v0,4
syscall
li $v0,5
syscall
move $t2,$v0
condition:
bgtz $t2,somme
beqz $t2,
somme:
add $t4,$t4,$t2
sub $t2,$t2,1
j condition
moyenne:
