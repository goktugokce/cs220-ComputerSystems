#include <execinfo.h>
#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

void printStackFrame(void * frameTop,void *frameBot,char * desc); // Helper function

void printStackInfo() {
	int j,nptrs;
	void *buffer[MAXFRAMES];
	char **strings;
	/* ------------------------------------------------------------------------------------------------------
		There are system (gnu) library functions called backtrace and
		backtrace_symbols which trace the call stack and find information
		about the function, and if the -rdynamic parameter is included at
		compile time allow you to get the function name and offset.
		See http://man7.org/linux/man-pages/man3/backtrace.3.html
	-------------------------------------------------------------------------------------------------------*/

	nptrs=backtrace(buffer,MAXFRAMES); // One return address is stored in buffers for each stack frame
	// Goes up to main, and then two library functions which invoke main... but we don't care about those

	strings = backtrace_symbols(buffer,nptrs); // Get the text description of each address
	if (strings==NULL) { // Did the backtrace_symbols function work?
		perror("backtrace_symbols()"); // If not, print the error generated by backtrace_symbols and...
		exit(EXIT_FAILURE);
	}

	register void * rbp asm ("rbp"); // Access the value of the %rbp register with a C variable!
	
	// Follow the rbp chain up to main's frame.
	void * frameTop=rbp; // Start the chain with the current value of %rbp, which is the printStackInfo frame
	void * rbpList[MAXFRAMES]; // This is an array of %rbp values - one for each frame, with 0 being this frame
	for(j=0;j<nptrs-2; j++) {
		rbpList[j]=frameTop;
		frameTop=(*(void **)frameTop); // set a new frameTop address equal to the value in memory at frameTop
		// Note... we need to cast frameTop to a pointer to the type of value we expect
	}
	
	// Now print the stack chain, starting at main's frame, down to (but not including) the printStackInfo frame
	for(j=nptrs-3;j>0; j--) {
		printStackFrame(rbpList[j],rbpList[j-1]+8,strings[j]);
	}
	free(strings); // The backtrace_symbols function malloced what strings points to
}

void printStackFrame(void * frameTop,void *frameBot,char * desc) {
	void * sptr;
	union qword_u {
		unsigned long v8;
		unsigned int v4[2];
	} qword;
	printf(" --------------- Frame size=%ld %s\n",8+frameTop-frameBot,desc);
	if (frameTop<frameBot) {
		printf("  Invalid stack frame. Either top of frame=%p or bottom=%p is corrupted\n",frameTop,frameBot);
	} else if (frameTop-frameBot > MAXFRAMESIZE ) {
		printf("  Stack frame is too large to print\n");
	} else {
		// Print individual 8 byte chunks of the stack frame
		for(sptr=frameTop; sptr>=frameBot; sptr=sptr-8) {
			qword.v8=(*(long *)sptr);
			printf(" %p -> %016lx = %08x %08x\n",sptr,qword.v8,qword.v4[0],qword.v4[1]);
		}
	}
}
