#include "packInt.h"
#include <assert.h>

union ovl {
	long vl;
	int vi[2];
} val;

void putInt(int value,long store[]) {
	val.vl=store[0];
	int nUsed=val.vi[0];
	assert(nUsed>=0); // Error if called after getInt
	nUsed++;
	assert(nUsed<=4096);
	val.vi[0]=nUsed;
	store[0]=val.vl;
	int ndx=nUsed/2;
	val.vl=store[ndx];
	int ndi=nUsed%2;
	val.vi[ndi]=value;
	store[ndx]=val.vl;
}

int storeUsed(long store[]) {
	val.vl=store[0];
	int nUsed=val.vi[0];
	assert(nUsed>0); // Error if called after getInt
	return 1+nUsed/2;
}

int getInt(long store[]) {
	val.vl=store[0];
	int nUsed=val.vi[0];
	assert(nUsed!=0);
	if (nUsed>0) { nUsed=-1; } // Special case for first time!
	val.vi[0]=nUsed-1; // Set up for next time
	store[0]=val.vl;
	nUsed=-nUsed;
	int ndx=nUsed/2;
	val.vl=store[ndx];
	int ndi=nUsed%2;
	return val.vi[ndi]; // C will automatically expand this to int
}
