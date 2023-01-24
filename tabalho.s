.data
msg1: .asciiz "\n digite um numero: "
msg2: .asciiz"\n"
.text
main:
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t2,$v0,0

li $t0,0
li $t1,0
li $t3,-1

enquanto:
blt $t1,$t2 faca
j fimEnquanto


faca:
add $t1,$t1,2 
add $t3,$t3,2

li $v0,4
la $a0,msg2
syscall

li $v0,1
add $a0,$t3,0
syscall

j enquanto 

fimEnquanto:

