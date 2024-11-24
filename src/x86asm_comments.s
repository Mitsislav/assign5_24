# -----------------------------------
# Program x86asm.s
# Compute and print the sum 0+...+N
# -----------------------------------


	.section .data	# Dhlwsi toy data segment akolouthoyn ta data 
	.equ N, 1000	# Dhlwsi kai arxikopoihsh mias statheras N me timh 1000
S:	.long 0		# Dhlwsi kai arxikopoihsh mias metablhths me timh 0 (tha apothikeusi to athroisma) 
Msg:	.ascii "The sum from 11 to %d is %d\n\0"


	.section .text	# Dhlwsi toy text segment akoloythoyn instructions
.globl main
main:	
	pushl %ebp	# apothikeuei ton deikti ebp sto stack
	movl %esp, %ebp	# bazei ston deiktei esp tin dieuthinsi poy exei o ebp

 	# initialize
        movl $N, %ebx	# register ebx pairnei tin timh toy N , dhladh 1000

 	# compute sum
L1:
	addl %ebx, S	# prosthetoyme stin metabliti S tin timh tou %ebx (S=S+ebx)
	decl %ebx       # meiwnoyme to ebx kata 1 monada (ebx=ebx-1)
	cmpl $10, %ebx  # sygkrisi toy ebx me tin timh 10 if(ebx<=10)
	jle  L2		# an isxuei h sinthikei tote phgainei sto L2
        movl $L1, %eax	# bazei to label adress toy L1 ston register eax
        jmp *%eax	# phgainei pisw ston L1

L2:
	# print result
	pushl S		# bazei tin timh toy S sto stack
	pushl $N	# bazei tin dieuthinsi tou N sto stack
	pushl $Msg	# topotheti tin dieuthinsi toy msg sto stack
	call printf	# prints Msg , N , S
	popl %eax	# afairei to msg apo to stack
	popl %eax	# afairei to N apo to stack
	popl %eax	# afairei to S apo to stack

	# exit
	movl $0, %eax  	# reset eax register , eax=0
        leave		# epanafora toy stack frame
 	ret		# kanei return apo tin main


