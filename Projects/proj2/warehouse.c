#include "bench.h"
#include "order.h"
#include <stdio.h>
int main(int argc, char ** argv) {
	if (argc<2) {
		printf("Please invoke as %s <order_file>\n",argv[0]);
		return 1;
	}
	if (!openOrder(argv[1])) {
		printf("Unable to open order file %s\n",argv[1]);
		return 1;
	}
	int binArray[100]={0};
	do {
		int pn=nextPartNumber();
		int bin=pn/10;
		int empty=0;
		for(int i=0;i<NUMSLOTS;i++){
			if(binInSlot(i)==-1){
				empty++;
			}
		}
		if (empty!=0){	
			int counter=0;
			for(int i=0;i<NUMSLOTS;i++){
				if(binInSlot(i) == bin){
					counter++; 
					binArray[bin]++; 
					break;
				}
			}
			if(counter==0){
				for(int i=0;i<NUMSLOTS;i++){
					if(binInSlot(i)==-1){
						fetchBin(bin,i); 
						binArray[binInSlot(i)]++; 
						break;
					}
				}
			}
		}
		else{ 
			int counter = 0;
			for(int i=0; i<NUMSLOTS; i++){ 
				if(binInSlot(i) == bin){ 
					counter++; 
					binArray[bin]++;
					break;
				}
			}
			if(counter==0){
				int index;
				int firstBin=binArray[binInSlot(0)]; 
				for(int i=0;i<NUMSLOTS;i++){
					if(binArray[binInSlot(i)]>=firstBin){
						firstBin=binArray[binInSlot(i)]; 
						index=binInSlot(i);
					}
				}	
				for(int i=0;i<NUMSLOTS;i++){
					if(binInSlot(i)==index){
						fetchBin(bin,i);
					}
				}
			}
		}
	} while(fetchNextPart());
	closeOrder();
	return 0;
}