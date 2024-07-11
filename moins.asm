.data
prompt: .asciiz "entrer le mois : "
jan: .asciiz "c'est janvier"
fev: .asciiz "c'est février"
mar: .asciiz "c'est mars"
apr: .asciiz "c'est avril"
may: .asciiz "c'est mai"
jun: .asciiz "c'est juin"
july: .asciiz "c'est juillet"
augest: .asciiz "c'est auot"
sept: .asciiz "c'est septembre"
oct: .asciiz "c'est octobre"
nov: .asciiz "c'est novembre"
dec: .asciiz "c'est decembre"

.text
la $t0,prompt
move $a0,$t0
li $v0,4
syscall

li $v0,5
syscall

move $t1,$v0

beq $t1,1,janvier
beq $t1,2,fevrier
beq $t1,3,mars
beq $t1,4,avril
beq $t1,5,mai
beq $t1,6,june
beq $t1,7,juil
beq $t1,8,aout
beq $t1,9,septembre
beq $t1,10,octobre
beq $t1,11,novembre
beq $t1,12,decembre

janvier:
la $t2,jan
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

fevrier:
la $t2,fev
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

mars:
la $t2,mar
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

avril:
la $t2,apr
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

mai:
la $t2,may
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

june:
la $t2,jun
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

juil:
la $t2,july
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

aout:
la $t2,augest
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

septembre:
la $t2,sept
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

octobre:
la $t2,oct
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

novembre:
la $t2,nov
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall

decembre:
la $t2,dec
move $a0,$t2
li $v0,4
syscall
li $v0,10
syscall
