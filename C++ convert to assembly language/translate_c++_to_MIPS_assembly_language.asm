#	
#    CSC 256
#    Name: Jiayi Gu
#    Date: 09/08/2021
#    Description: This programe does translate the C++ code to MIPS assembly language in Mars.

	li $s0,0    # $s0,v
	li $s1,1    # $s1,w
	li $s2,2    # $s2,x
	li $s3,3    # $s3,y
	li $s4,5    # $s4,z
 
 main:	move    $s1,$s4		# w = z
 	add	$s0,$s1,$s2	# y = w + x
 	sub	$s3,$s1,$s2	# y = w - x
 	addi	$s4,$s4,-1	# z = z - 1