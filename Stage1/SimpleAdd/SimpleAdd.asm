//push constant to stack
@7
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//push constant to stack
@8
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

M=D+M


//end of program infinite loop
(END)
@END
0;JMP

