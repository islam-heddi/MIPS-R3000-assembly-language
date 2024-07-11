.data
msgP: .asciiz "\n Calculator :"
msgV1: .asciiz "\n val1 : "
msgV2: .asciiz "\n val2 :"
msgCH: .asciiz "\n enter 0 for end program 1 to do addtion 2 for multiplication 3 for division 4 for substraction : "
.text
debut:
la $a0,msgP
li $v0,4
syscall
la $a0,msgV1
li $v0,4
syscall
li $v0,5
syscall
move $t1,$v0

la $a0,msgV2
li $v0,4
syscall
li $v0,5
syscall
move $t2,$v0

la $a0,msgCH
li $v0,4
syscall
li $v0,5
syscall
move $t0,$v0

beq $t0,1,addition
beq $t0,0,End
beq $t0,2,multiplication
beq $t0,3,division
beq $t0,4,substraction

addition:
add $t3,$t2,$t1
move $a0,$t3
li $v0,1
syscall

j debut

fin:
li $v0,10
syscall

multiplication:
mul  $t3,$t2,$t1
move $a0,$t3
li $v0,1
syscall

j debut

division:
div   $t3,$t1,$t2
move $a0,$t3
li $v0,1
syscall

j debut

substraction:
sub $t3,$t1,$t2
move $a0,$t3
li $v0,1
syscall

j debut

End:
li $v0,10
syscall