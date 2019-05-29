test : grades solution.txt
	setarch linux64 -R ./grades <solution.txt
	
gdb : grades solution.txt
	gdb -x gdb_cmds.txt --args grades	
	
showhex : solution.txt
	od -Ax -tx1z solution.txt
	
solution.txt : mix mix_in.txt
	./mix <mix_in.txt >solution.txt
	
grades.s : grades
	objdump -dSl grades >grades.s	

grades: grades.c
	gcc -Wall -O0 -g -o grades grades.c
	
mix : mix.c
	gcc -Wall -g -o mix mix.c	
	
clean:  
	-rm grades grades.s mix solution.txt 
