#	
#    CSC 256
#    Name: Jiayi Gu
#    Date: 09/17/2021
#    Description: This programe does compare two variable and get the larger one.

.data

str1:	.asciiz "Please input the value of variable a: "
str2:	.asciiz "Please input the value of variable b: "
str3:	.asciiz "The larger value of a,b is: "

.text


main:	la	$a0, str1	# load address of data whose label is str1
	li	$v0, 4		# print_string
	syscall
	
	li	$v0, 5		# reat_int
	syscall
	move	$s0,$v0		# move the input integer to $s0
	
	
	la	$a0, str2	# load address of data whose label is str2
	li	$v0, 4		# print_string
	syscall
	
	li	$v0, 5		# reat_int
	syscall
	move	$s1,$v0		# move the input integer to $s1
	
	
	la	$a0,str3	# load address of data whose label is str3
	li	$v0, 4		# print_string
	syscall
	
	bgt $s0,$s1,label	# compare $s0, $s1 by using brach, if $s0 > $s1, go to label
	move $a0, $s1		# $a0 = $s1
	li	$v0,1		# print_int
	
	syscall
	j exit_if		# jump to exit_if label
	
label:	move $a0, $s0		# $a0 = $s0
	li	$v0,1		# print_int
	syscall

	
exit_if:	li	$v0,10	#finish running