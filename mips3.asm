#code of the first app
.text
li $t0 12
li $t1 10

add $t3,$t0,$t0

li $v0 1
move $a0,$t3
syscall