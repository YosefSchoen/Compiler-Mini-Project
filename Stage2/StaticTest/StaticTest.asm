//push constant to stack
@111
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@333
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@888
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//get the top of stack
@SP
A=M-1

D=M
@Location.8
M=D
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

D=M
@Location.3
M=D
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

D=M
@Location.1
M=D
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1


//push from static segment
@Location.3
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push from static segment
@Location.1
D=M
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


//push from static segment
@Location.8
D=M
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


//end of program infinite loop
(END)
@END
0;JMP

