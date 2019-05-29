rps player_igokce1(int round,rps *myhist,rps *opphist) {
	int opRock = 0;
	int opPaper = 0;
	int opScissors = 0;
	int i;
	if(round == 0){
		return Rock;
	}
	else{
		for(i=0;i<round;i++){
			if(opphist[i]==Rock){
				opRock++;
			}
			else if(opphist[i]==Paper){
				opPaper++;
			}
			else if(opphist[i]==Scissors){
				opScissors++;
			}
		}
		if(opRock>opPaper){
			if(opRock>opScissors){
				return Paper;
			}
			else{
				return Rock;			
			}
		}
		else{
			if(opPaper>opScissors){
				return Scissors;
			}
			else{
				return Rock;			
			}
		}
	}
}

register_player(player_igokce1,"igokce1");
