#my new app here
.data

str: .asciiz "hello world"

.text
li $v0,4
la $a0,str
syscall