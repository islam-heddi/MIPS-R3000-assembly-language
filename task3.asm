#task 3
.data
text: .asciiz "Hello world"
.text
main:

li $v0, 4
la $a0,text
syscall
