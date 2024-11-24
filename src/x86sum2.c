#include <stdio.h>
#include <stdlib.h>

#define N 1000

int i = N; /* changed n to i */
int S = 0; /* changed Sum to S*/

int main(void)
{
	/* while (i > 10) { S += i; i--;} */
	asm("movl i, %ebx\n"
	    "L1:\n\t"
	    "addl %ebx, S\n\t"
	    "decl %ebx;"
	    "cmpl $10, %ebx\n\t"
	    "jle  L2\n\t"
	    "movl $L1, %eax\n\t"
	    "jmp *%eax\n"
	    "L2:");

	printf("The sum from 11 to %d is %d\n", N, S);

	return 0;
}

