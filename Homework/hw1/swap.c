#include <stdio.h>
#include <stdlib.h>
#include <limits.h>


void flipBit(int *aptr,int i);
void swap_simple(int *aptr,int *bptr);
void swap_xorbit(int *aptr,int *bptr);
void swap_xorword(int *aptr,int *bptr);
int getBit(int *aptr,int i);


int main(int argc, char **argv) {
	if (argc<3) {
		printf("Invoke as %s <a> <b>\n",argv[0]);
		return 1;
	}
	int a=atoi(argv[1]);
	int b=atoi(argv[2]);
	printf("A=%d B=%d\n",a,b);
	swap_simple(&a,&b);
	printf("After simple swap, A=%d B=%d\n",a,b);
	swap_xorbit(&a,&b);
	printf("After xor bit swap, A=%d B=%d\n",a,b);
	swap_xorword(&a,&b);
	printf("After xor word swap, A=%d B=%d\n",a,b);
	return 0;
}

void flipBit(int *aptr,int i){
	(*aptr) ^= 1<<i;
}

void swap_simple(int *aptr,int *bptr) {
	/* Your code goes here */
	int temp = *aptr;
	*aptr = *bptr;
	*bptr = temp;
	
}

int getBit(int *aptr,int i){
	return (*aptr >> i) & 1;
}

void swap_xorbit(int *aptr,int *bptr) {
	/* Your code goes here */
	for(int i = (sizeof(int) * CHAR_BIT) - 1; i >= 0; i--)
    {
		if(getBit(aptr,i) != getBit(bptr,i)){
			flipBit(aptr,i);
			flipBit(bptr,i);
		}
    }
}

void swap_xorword(int *aptr,int *bptr) {
	/* Your code goes here */
	int temp = (*aptr)^(*bptr);
	for(int i=(sizeof(int) * CHAR_BIT) - 1; i >= 0; i--){
		if(getBit(&temp,i) == 1){
			flipBit(aptr,i);
			flipBit(bptr,i);
		}
	}
}