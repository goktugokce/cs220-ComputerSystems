#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include "floatInt.h"
#define MAX(a,b) ((a) > (b) ? a : b) // finding MAX
#ifdef NAN
/* NAN is supported */
#endif
#ifdef INFINITY
/* INFINITY is supported */
#endif

float floatSum(float a,float b);
void floatPrint(char * pref,float a);

int main(int argc,char **argv) {
	if (argc!=3) {
		printf("Please invoke as %s <a> <b>\n",argv[0]);
		printf("   where <a> and <b> are floating point numbers.\n");
		return 1;
	}
	float a=atof(argv[1]);
	floatPrint("a             :",a);
	float b=atof(argv[2]);
	floatPrint("b             :",b);
	floatPrint("floatSum(a,b) :",floatSum(a,b));
	floatPrint("a + b         :",a+b);
	return 0;
}

float floatSum(float a,float b) {
	/* Add your code to add a and b with doing a+b here */
	int signA = float2Sign(a);
	int signB =float2Sign(b);
	int signF;
	int expA = float2Exp(a);
	int expB = float2Exp(b);
	int expF = MAX(expA, expB);
	long fracA = float2Frac(a) >> (expF - float2Exp(a));
	long fracB = float2Frac(b) >> (expF - float2Exp(b));
	long fracF = pow(-1,signA) * fracA + pow(-1,signB) * fracB;
	if(__isnanf(a) || __isnanf(b)){
		return NAN;
	}
	else if(a == 0.0){
		return makeFloat(signB,expB,fracB);
	}
	else if(b == 0.0){
		return makeFloat(signA,expA,fracA);
	}
	else if(__isinff(a) || __isinff(b)){
		if(!__isinff(b) && a > 0){
			return INFINITY;
		}
		else if(!__isinff(b) && a < 0){
			return -INFINITY;
		}
		else if(!__isinff(a) && b < 0){
			return -INFINITY;
		}
		else if(!__isinff(a) && b > 0){
			return INFINITY;
		}
		else if(a > 0 && b > 0){
			return INFINITY;
		}
		else if(a < 0 && b < 0){
			return -INFINITY;
		}
	}
	else{
		if(fracF < 0){
			signF = 1;
			fracF = -1 * fracF;
		}
		else{
			signF = 0;
		}
		while(fracF > (1<<24) && expF < 129) {
			fracF = fracF >> 1;
			expF++;
		}
		while((fracF < (1<<23)) && (expF > -126)) {
			fracF = fracF << 1;
			expF--;
		}
		if (expF > 127) { 
			fracF = 1<<23;
			expF = 128; 
		}
		while(expF <= -127) {
			fracF = fracF >> 1;
			expF++;
			if (fracF == 0) return 0.0; 
		}
		if (expF == -127 && fracF > 0) {
			fracF &= ~(1<<23);
			expF = -126;
		}
		return makeFloat(signF,expF,fracF);
	}
	return 0.0;
}

void floatPrint(char * pref,float a) {
	int norm=isNormal(a);
	int frac=float2Frac(a);
	int exp=float2Exp(a);
	if (isNormal(a)) {
		frac &= ~(1<<23); // Turn of 1. for print
	} else exp=-126;
	printf("%s %g = -1^%d x %d.%06x x 2^%d\n",pref,a,
		float2Sign(a),norm,frac,exp);
}