## Assignment 5: C and Assembly Code Tutorial: Computing Sums

## My ID
Ioannis Chatziantoniou csd5193

## 1) My answers about x86asm.s
(a) The sum from 11 to 1000 is 500445 						<br />
										<br />
(b) H antigrafi kai h symplirwsi sxoliwn egine sto arxeio x86asm_comments.s	<br />
										<br />
(c) gdb trexei kanonika to ektelesimo kai emfanizetai oti kai sto (a) 		<br />
										<br />
(d) O arithmos entolwn stin main einai 19 . 					<br />
   Afairoyme tin duo dieuthinsis . Tin arxi tis main (0x8049162) 		<br />
   kai to telos tis poy kanei return (0x804919b)				<br />
	804919b-8049162=57  +1 logw tis main ara 58 Bytes			<br />
   To breakpoint to bazw me offset 27 (line 33) (stin prwti entoli stin L2) 	<br />
										<br />
(e) p(int)S       -> Output: $1=500445 						<br />
    p(int*) &S    -> Output: $2=(int*)0x804c01c 				<br />
    p(char*) &Msg -> Output: $3=0x804c020 "The sum from 11 to %d is %d\n"	<br />
										<br />
    To programma ektypwnei : The sum from 11 to 1000 is 99			<br />

## 2) My answers about sum.c
(a) The sum from 11 to 1000 is 500445						<br />
										<br />
(b) O arithmos entolwn stin main einai 28					<br />
										<br />
(c) Compile to sum.c me arguments kai ektipwnetai oti kai sto (a)		<br />
										<br />
(d) O arithmos entolwn einai 29 kai o arithmos twn Byte einai			<br />
    0x80490b1-0x8049050 = 97 +1 logw tis main ara 98 Bytes			<br />
    To breakpoints to bazw se offset = 13 (line 15) ekei opoy teleiwnei		<br />
    h while tis main								<br />
										<br />	
(e) p Sum  -> Output: $1= 500445						<br />	
    p &Sum -> Output: $2= (int*)0x804c024 < Sum >				<br />	
    p n    -> Output: $3= 10							<br />
    p &n   -> Output: $4= (int*)0x804c01c < n >					<br />
										<br />
    To programma ksana typwnei : The sum from 11 to 1000 is 500445		<br />
										<br />
(f) The sum from 11 to 1000 is 495450						<br />
					
## 3) My answers about x86sum.c
(a) to programma typwnei : The sum from 11 to 1000 is 500445			<br />
										<br />
(b) o arithmos entolwn tis main sto .s arxeio einai 25				<br />
										<br />
(c) to programma ektypwnei : The sum from 11 to 1000 is 500445			<br />
										<br />

## Make Repository Private and Add TAs as Members
You can make the repo private and add TAs as members by hand or using
the private.py script

### By Hand
1. Go to Project Settings -> General
2. Visibility
3. Change Project Visibility to Private

Also add the TA in your project
1. Go to ProjectSettings -> Members
2. Add Iacovos Kolokasis as a Developer

### Using the Script

The private.py script is written in [Python 3](https://www.python.org/). 
To run private.py script, please have 
**Python 3.4 or higher**, **Git 1.8 or higher** and **python-gitlab** installed.

* Install gitlab lib
```
pip3 install --upgrade python-gitlab --user
```

* Run the script
```
python3 private.py -t <personal token> -p <project_ id>
```
## Submission
* You should submit the source files of each assignment. Do not submit the object or executable file
* Commit all files (not executables or object files!)

```
git add file1.c file2.c file3.c
git commit -m "Commit message"
git push
```
