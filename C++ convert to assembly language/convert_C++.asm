#	
#    CSC 256
#    Name: Jiayi Gu
#    Date: 11/02/2021
#    Description: This programe is using jal and jr to do the return code.


.data
str:	.asciiz "\n"

.text

main:	li $t0,3	# x = 3
	li $t1,4	# p = 4
	li $t2,5	# y = 5
	li $t3,6	# q = 6
	
	move $a0,$t0	# $a0 --> x
	move $a1,$t1	# $a1 --> p
	
	jal pow		# jump and link to pow
	move $a2,$v0	# resualt = $a2
	li $v0,1	# print out int
	move $a0,$a2
	syscall
	li $v0,4
	la $a0,str	# end line
	syscall
	
	move $a0,$t2	# $a0 --> y
	move $a1,$t3	# $a1 --> q
	
	jal pow		#jump and link to pow
	move $a2,$v0	# resualt = $a2
	li $v0,1	# print out int
	move $a0,$a2
	syscall
	li $v0,4
	la $a0,str	# end line
	syscall
	
	li $v0,10	# exit
	syscall
	
	
pow:	li $t4,1	# product = 1
	li $t5,0	# i = 0

for:	bge $t5,$a1,label	# if i >= arg1, jump to label (out of for loop)
	mul $t4,$t4,$a0	# product *= arg0
	addi $t5,$t5,1	# i++
	j for		# iteration
	
label:	move $v0,$t4
	jr $ra		# jump to $ra(1. line 22   2. line 34)
	
