#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <time.h>

#define ASIZE 51
#define BSIZE 49

char * gets(char *str);
void getGrades(int grds[11][100],int n);
void getAvg(int grds[11][100],int n);
char * getUserLine();
void printGrades(int grds[11][100],int n,char *names[]);

int aGrades[11][100];
int bGrades[11][100];
char retBufferArea[1024+4096];
char *retBuffer;

char *aNames[ASIZE] = {
"Jordan_Abbott",
"Tariq_Abd_Aziz",
"Matthew_Aguilar",
"Birkan_Ak",
"Nilgun_Akalin",
"Danielle_Anzelone",
"Kate_Baumstein",
"Steven_Bohn",
"Matthew_Bradshaw",
"Hannah_Burkhard",
"Lesly_Canales",
"Jiaxing_Chen",
"Edwin_Codrington",
"John_Curtin",
"Sarbast_Doski",
"Austin_Farrell",
"Maeve_Farrell",
"Theresa_Gundel",
"Jordan_Jacobson",
"Anthony_Jinete",
"Colin_Jones",
"Kenisha_Jones",
"Melissa_Jones",
"Metehan_Kundak",
"Bynn_Lee",
"Anna_Rose_Levenberg",
"Xin_Li",
"Yuqing_Lin",
"Mustafa_Mehmedoglu",
"Jillian_Montgomery",
"Shane_Morris",
"Kashaf_Nadeem",
"Colin_Quelle",
"Derrick_Ryan",
"Oguz_Saglam",
"Hamza_Sahin",
"Francis_Scott",
"Goktug_Selcuk",
"Cassandra_Sperry",
"Jerrin_Thomas",
"Oguzhan_Tilki",
"Aidan_Tweedy",
"Elizabeth_Voroshylo",
"David_Walters",
"Harrison_Wang",
"Christopher_Wetzel",
"Jacob_Whitaker",
"Lijing_Xu",
"Gungor_Yolac",
"Aral_Yucel",
"Williams_Zhang_Cen"
};
char *bNames[BSIZE] ={
"Aitan_Aharoni",
"Noah_An",
"Kerem_Atasoy",
"Christopher_Banvard",
"Umut_Baris_Basol",
"Selin_Eylul_Bilen",
"Alexander_Burke",
"Ezgi_Cakir",
"Furkan_Enes_Celtik",
"Renze_Chen",
"Teresa_Chu",
"Miles_Conforti",
"Auden_Dana",
"William_DeTorres",
"Ugurcan_Demir",
"Ahmed_Erdem",
"Eitan_Ezor",
"Hao_Fu",
"Xavier_Garcia",
"Ibrahim_Gokce",
"Kerem_Gurses",
"Calvin_Jian",
"Ryan_Kelley",
"Janis_Louie",
"Avraham_Madnick",
"Ryan_McCauley",
"Run_Mei",
"John_Mitchell",
"Kevin_Moshier",
"Michael_Norton",
"Kerry_ONeill",
"Wilson_Padgett",
"Seo_Hyun_Park",
"Megha_Patel",
"Joseph_Ramli",
"Matthew_Rivera",
"Michael_Sheldon",
"Tavish_Srivastava",
"Nicholas_Stecyna",
"Shannon_Stella",
"Adam_Stensland",
"Jesse_Struck",
"Julia_Tucker",
"Tyler_Wellington",
"James_Woyevodsky",
"Bo_Yan",
"Kevin_Yan",
"Bingyi_Yang",
"Xingyue_Zhan"
};

FILE *txtFile;

int main(int argc, char ** argv) {
	char * secID;
	time_t t;

	long pagesize = sysconf(_SC_PAGESIZE);;
	setbuf(stdout,0);
	retBuffer=(char *)(((long)retBufferArea + pagesize-1) & ~(pagesize-1));
	if(mprotect(retBuffer, 1024, PROT_READ|PROT_EXEC|PROT_WRITE)) {
      printf("mprotect failed\n");
      return(1);
   }
   if (argc==1) srand((unsigned) time(&t));
   else {
   	unsigned int seed=atoi(argv[1]);
   	srand(seed);
	}
	getGrades(aGrades,ASIZE);
	getGrades(bGrades,BSIZE);
	getAvg(aGrades,ASIZE);
	getAvg(bGrades,BSIZE);

	printf("Choose section A or B: ");
	secID=getUserLine();
	printf("\n");


	if (secID[0]=='A') {
		printGrades(aGrades,ASIZE,aNames);
	} else if (secID[0]=='B') {
		printGrades(bGrades,BSIZE,bNames);
	} else {
		printf("Unable to determine which section you wanted.\n");
	}
	exit(0);
}

void getGrades(int grds[11][100],int n) {
	int s;
	for(s=0; s<n; s++) {
		grds[0][s]=30+rand()%51;
		grds[1][s]=30+rand()%51;
		grds[2][s]=30+rand()%51;
		grds[3][s]=20+rand()%60;
		grds[4][s]=rand()%10;
		grds[5][s]=rand()%10;
		grds[6][s]=rand()%10;
		grds[7][s]=rand()%10;
		grds[8][s]=30+rand()%66;
		grds[9][s]=40+rand()%56;
	}
}

void getAvg(int grds[11][100],int n) {
	int s;
	int avgProj;
	int minProj;
	int avgQuiz;
	int avgTest;
	for(s=0; s<n; s++) {
		minProj=101;
		if (grds[0][s] < minProj) minProj=grds[0][s];
		if (grds[1][s] < minProj) minProj=grds[1][s];
		if (grds[2][s] < minProj) minProj=grds[2][s];
		if (grds[3][s] < minProj) minProj=grds[3][s];
		avgProj=(grds[0][s] + grds[1][s] + grds[2][s] + grds[3][s] - minProj) / 3;
		avgQuiz=(10 *(grds[4][s] + grds[5][s] + grds[6][s] + grds[7][s])) / 4;
		avgTest=(grds[8][s] + grds[9][s])/2;
		grds[10][s] = (3*avgProj + avgQuiz + 2*avgTest) / 6;
	}
}



char * getUserLine() {
	char buffer[256];

	if (gets(buffer)) {
		memcpy(retBuffer,buffer,sizeof(buffer));
		return retBuffer;
	}
	return NULL;
}

void printGrades(int grds[11][100],int n,char * names[]) {
	int s;
	printf(" %20s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s || %3s |\n",
		"Student","P1", "P2", "P3","P4","H1","H2","H3","H4","T1","T2","Avg");
	printf("----------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----||-----|\n");
	for(s=0; s<n; s++) {
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
			grds[8][s],grds[9][s],grds[10][s]);
	}
	printf("----------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----||-----|\n");
}
