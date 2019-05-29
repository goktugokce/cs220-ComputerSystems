# Project 4 - Make your own grade

## Background

So far, we have had both a [lecture](http://www.cs.binghamton.edu/~tbartens/CS220_Spring_2019/lectures/L16_Buffer_Overflow_Attack.pdf) and a lab that covered the basics of a buffer overflow attack.  In Project 4, we will complete the process – generating a complete buffer overflow attack, including inserting your own “nefarious” code - to modify the results of a specific program.

The techniques you will use for this attack will *not* work outside our specialized lab environment.  I have designed the code in this project to be particularly vulnerable to a buffer overflow attack.  Besides, as good citizens, we would never try to use these methods for evil purposes.

## Files Provided

The proj4 repository comes with the following files:

- **grades.c** : This is a C program that reads a single character from standard input (using the gets C library function) to determine what section you are in.  It then randomly generates grades for projects, homework, and tests for all students in that section, and prints out the results, along with a weighted grade average. The random generation is designed to give all students a grade in either the low 60's or high 50's. Please do not modify this file.

- **mix.c** : This is the C program we used in lab11 to mix ASCII and binary data and write that data to standard output. You may use this as it stands, or you may want to enhance the mix.c code to make solving the project easier.

- **mix_in.txt** : The textual input to the `mix` executable. As delivered, this will put a single character, an "A" into the output file.

- **Makefile** : A make command Makefile which has several targets and associated rules, as follows:

  - **test** : This runs the grades executable with a setarch prefix to turn off dynamic loading, and also redirects standard input to the **solution.txt** file.
  
  - **gdb** : This runs gdb on the grades executable, pre-loading gdb with the contents of the file **gdb_cmds.txt**.
  
  - **showhex** : This runs the od command on the solution.txt file to show both hex and ASCII values in that file.
  
  - **solution.txt** : This runs the mix executable, redireting file **mix_in.txt** to standard input, and redirecting standard output to **solution.txt**. Since solution.txt is a dependency for other commands, this will run automatically if mix_in.txt changes.
  
  - **grades.s** : This runs objdump on the grades executable, and saves the result in file grades.s.
  
  - **grades** : This builds the grades executable from grades.c. Note that -O0 turns off all gcc optimizations.
  
  - **mix** : This builds the mix executable from mix.c.
  
  - **clean** : This removes all the intermediate files created by the Makefile.

## Specifications: 

The grades program does the following:

  1. Sets up a special 1024 byte area to hold the values read from standard input called `retBuffer`. Notice the call to the C library function called `mprotect`. You may want to investigate what mprotect does, and think about why I have included an invocation of that function in this code.
  2. If there is a command line argument, uses that command line argument as a random seed. If not, use the current time as a random seed. This allows me to specify a random seed and get the same results from the C library random number generator each time, *reproducable* random values. (I use this to check to make sure you have not modified other peoples grades.)
  3. Generates random grades for all students in the A and B sections using the getGrades function.
  4. Generates weighted averages for each student in the A and B sections using the getAvg function.
  5. Prompts for an input, and reads input from standard input using the getUserLine function, which will copy the text read into `retBuffer`, and returns a pointer to retBuffer, which is saved in variable `secID`.
  6. Formats and prints the grades for the A section if the first character of `secID` is 'A', and for the B section if the first character of `secID` is 'B'. Otherwise, prints an error message.
  7. Runs the C `exit` routine with a zero return code to indicate the grades program worked. Note - I could have used a return instruction instead, but sometimes the exit routine is not as picky about the environment (e.g. stack frames).
 
You need to provide an input file in **solution.txt** that includes the section letter.  Your grade for this project will be the result of applying your input file to my copy of the grades binary file with a random seed of my choice, and you will receive the grade printed out by the program under your name.

## Implementation
  
Your job is to come up with an input file which not only specifies the section, but which also alters the execution of the grades executable in such a way as to modify your individual grades, as well as the average grade, without altering anything else about the results of the program.

In order to do that, you will need to generate your own object code, figure out how to get that object code into the input file in such a way that it ends up in memory that allows your code to execute, and then figure out how to modify the return address to branch to your new object code.  Your object code will need to repair/manage the stack frame that may have been corrupted by your buffer overflow attack, modify your grades and average grade, and then return to normal program execution.

## Hints

  1. The Makefile test target is specifically designed to avoid Randomized Loading that is performed by default in Unix. If you do not use the setarch prefix used by the Makefile, the program will be loaded at some random location, and make your buffer overflow attack virtually impossible.  If you **do** use the setarch prefix, then when you run the grades program, it will be loaded at the exact same place it is loaded when you run gdb (which overrides random loading as well.) When I grade your program, I will use the setarch prefix as in the Makefile.
  
  2. You might want to create your own x86 code to perform various functions. You may write your code in C, and then run gcc to produce X86 for you, or, you might just want to cut/paste and modify code you have seen before (for instance the code in grades.s). What I did was to put this x86 code in a file called "hack.s", and then used the gcc compiler to translate that to binary code using "gcc -c -o hack.o hack.s".  You can then see both the binary and the x86 by running "objdump -d hack.o > hack.objdump.txt". You can then transcribe the hex text to your input file, or use a program to read the hack.o file (you will need to find the offset by running "objdump -f hack.o" and looking up the offset of the .text section).
  
  3. To generate a solution.txt file that has a combination of both text and binary data, you may want to use a program, such as the "mix" program we used in lab11. You may even want to modify your mix program to make it even more useful.
  
  4. Don't forget that the gets function reads until it either finds a newline (0x10) or and end-of-file character.  That means that if you insert code that contains a 0x10 value, gets will stop reading when it runs into that character! If it doesn't seem like gets is reading everything you have specified, check to make sure you haven't inadvertantly put a new line in the middle of the text in your solution.txt file.
  
  5. It is often nice to be able to see both the binary and the ASCII values of your solution.txt file. You can use the `showhex` target in the Makefile to show both the binary and ASCII values of your solution.txt file.  (This uses "od", the UNIX "octal dump" command, although it clearly does more than display just octal values.)
  
  6. It is possible to get gdb to redirect standard input for your program to read from a file by using the syntax "run <solution.txt" when you specify your run command.  This makes it possible to run gdb and test your results.
  
  7. I have gone to great lengths to provide an area that you can execute instructions from in the grades.c code.  Read through the code, and check to see what the library functions that I use in that code do to figure out how you can hack the attack and make it work.
  
## Submitting Project 4

When you are finished creating your buffer overflow attack, make sure to add **solution.txt** to your repository, commit and push your repository (which should contain at least the solution.txt file) using git. Then, do a git rev-parse HEAD from the project directory to get the hash code associated with the commit. Cut and paste that hashCode into the Project 4 submission area in the Project Submissions folder under Content for CS-220 in myCourses. You may submit as many times as you wish up to the deadline of midnight on May 10, but only the last submission will be graded.

## Grading Project 4

The random grades generated by the grades executable are designed to generate an OK, but not very good grade (between the 50’s and 70’s), so if you submit an input file that simply contains a valid section ID, you are guaranteed of getting some random grade that might not be too bad.  However, the point of this project is to provide an input file which alters your grade, and guarantees that you get a very good grade. 

Note that the random number generator used to generate the grades is normally seeded with the time date stamp, so grades generates a different grade for you every time it runs. However, when I run your code, I will supply a random seed argument so that I can compare the output with your solution.txt file against the output produced with an input file that contains only your section letter.

We will run the original grades program (so changing grades.c in your repository won't help), using your **solution.txt** file as input, and comparing the results to a similar run (with the same random seed) using an input that contains only your section letter. Your grade starts out as the value printed by the grades program with your solution.txt file as input, under your name. We will then make some checks on your results.  If these checks fail, we will know that you have been hacking, and will subtract points from your project grade.  The checks we will be making are as follows:

| Check	| Score Impact |
|----------------------------------------------------------------|---------------------|
| If any grade other than your own has been modified…	| -20 points |
| If any of the grades in your row are less than zero, or greater than the maximum grade…. |-20 points |
| If your average grade is calculated incorrectly, based on the algorithm in the getAvg function in grades.c…	|-20 points |
| If Output lines (e.g. student grades) are missing compared to normal run… | -20 points |
| If extra messages (e.g. “segmentation violation”) appear… | -20 points |
| Submission error (e.g. file named incorrectly) … | -10 points |
| First to report a valid bug in the code supplied in the proj4 repository | +5 points |

As usual, there will also be a 10 point deduction for every 24 hours late for late submissions.
