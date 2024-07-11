.data
prompt: .asciiz "\nEnter l'heur : "
minute: .asciiz " minutes\n"
seconde: .asciiz " secondes"
.text
#afficher le text
la $t0,prompt
move $a0,$t0
li $v0,4
syscall
#lire les données
li $v0,5
syscall
#mettre la valeur en registre t1
move $t1,$v0
li $t3,60
#au minute
mul $t2,$t1,$t3
#au seconde
mul $t4,$t2,$t3
#afficher en minutes
la $t5,minute
move $a0,$t2
li $v0,1
syscall
move $a0,$t5
li $v0,4
syscall
#afficher en secondes
la $t5,seconde
move $a0,$t4
li $v0,1
syscall
move $a0,$t5
li $v0,4
syscall
li $v0,10
syscall