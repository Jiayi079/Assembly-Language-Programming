#	
#    CSC 256
#    Name: Jiayi Gu
#    Date: 10/02/2021
#    Description: This programe does the flow chat and print out max value when it is bigger than i and smaller than two.

.text
main:		li $s0,100			# $s0, max
		li $s1,4			# $s1, num
		li $s2,0			# $s2, i
	
while_loop: 	ble $s0,42,out_of_while		# while loop --> max <= 42 ?, if yes --> jump to out_of_while label
		li $s2,1			# for loop --> i = 1
for_loop:	bge $s2,$s1,out_of_for_loop	# for loop --> i >= num, if yes --> jump to out_of_for_loop label
		div $s0,$s0,$s2			# max = max / i
		bgt $s0,$s2,if_loop		# if loop --> if max > i, if yes --> jump to if_loop
		bge $s0,2,out_of_if_loop	# or if max >= 2, if yes --> jumpt to out_of_if_loop
		
		
if_loop:	move $a0, $s0		# $a0 = max
		li $v0,1		# print max
		syscall
		

out_of_if_loop: 	add $s2,$s2,1	# i++
			j for_loop	

out_of_for_loop:	j while_loop

out_of_while:		li $v0,10
			syscall
	
