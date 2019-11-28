//push constant to stack
@17
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@17
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if equal
//JEQ comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation2
D;JEQ
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd2
0;JMP
//start of jump
(jumpLocation2)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd2
0;JMP

//end of jump
(locationEnd2)



//push constant to stack
@17
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@16
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if equal
//JEQ comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation5
D;JEQ
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd5
0;JMP
//start of jump
(jumpLocation5)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd5
0;JMP

//end of jump
(locationEnd5)



//push constant to stack
@16
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@17
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if equal
//JEQ comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation8
D;JEQ
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd8
0;JMP
//start of jump
(jumpLocation8)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd8
0;JMP

//end of jump
(locationEnd8)



//push constant to stack
@892
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@891
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if less than
//JLT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation11
D;JLT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd11
0;JMP
//start of jump
(jumpLocation11)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd11
0;JMP

//end of jump
(locationEnd11)



//push constant to stack
@891
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@892
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if less than
//JLT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation14
D;JLT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd14
0;JMP
//start of jump
(jumpLocation14)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd14
0;JMP

//end of jump
(locationEnd14)



//push constant to stack
@891
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@891
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if less than
//JLT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation17
D;JLT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd17
0;JMP
//start of jump
(jumpLocation17)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd17
0;JMP

//end of jump
(locationEnd17)



//push constant to stack
@32767
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@32766
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if greater than
//JGT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation20
D;JGT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd20
0;JMP
//start of jump
(jumpLocation20)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd20
0;JMP

//end of jump
(locationEnd20)



//push constant to stack
@32766
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@32767
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if greater than
//JGT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation23
D;JGT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd23
0;JMP
//start of jump
(jumpLocation23)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd23
0;JMP

//end of jump
(locationEnd23)



//push constant to stack
@32766
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@32766
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//check if greater than
//JGT comparison
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

D=M-D
@jumpLocation26
D;JGT
//decrement the stack pointer
@SP
M=M-1

D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//get comparison ops jump
@locationEnd26
0;JMP
//start of jump
(jumpLocation26)
//decrement the stack pointer
@SP
M=M-1

D=-1
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@locationEnd26
0;JMP

//end of jump
(locationEnd26)



//push constant to stack
@57
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@53
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//add
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M+D


//push constant to stack
@112
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//subtract
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M-D


//negate
//get the top of stack
@SP
A=M-1

M=-M

//bit wise and
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M&D


//push constant to stack
@82
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//bit wise or
//get the top two from stack
//get the top of stack
@SP
A=M-1

D=M
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M|D


//bit wise not
//get the top of stack
@SP
A=M-1

M=!M

//end of program infinite loop
(END)
@END
0;JMP

