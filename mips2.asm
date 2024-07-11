.text
li $t0,10
li $t1,65
add $t2,$t1,$t0
li $v0,1
move $a0,$t2
syscall

li $t0,50
li $t1,23
sub $t2,$t0,$t1
li $v0,1
move $a0,$t2
syscall