#    CSC 256
#    Name: Jiayi Gu
#    Date: 09/26/2021
#    Description: This programe does a for loop.

# input an integer and output the sum from 1 to integer
#	for(int i = 1; i <= input; i++)
#	 {
#		 sum = sum + i;
#		}
#input: $s0
#i    : $t0
#sum  : $t1
.data
out_1: .asciiz "Please input the integer: "
out_2: .asciiz "the sum of the integer is:" 
.text:
	 li   $v0,4
	 la   $a0,out_1
	 syscall
	 li   $v0,5
	 syscall
	 move $s0,$v0
	 
	   
for:    bgt $t0,$s0,out_for	# if $t0 > $s0, yes --> go to label out_for
	add $t1,$t1,$t0		# $t1 = $t1 + $t0 
	addi $t0,$t0,1		# $t0 = $t0++
	j for
        
            
out_for:li   $v0,4
        la   $a0,out_2
        syscall
        li   $v0,1
        move $a0,$t1
        syscall
