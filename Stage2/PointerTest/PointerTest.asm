//initialize stack segment pointer
@256
D=A
@SP
M=D

//initialize local segment pointer
@300
D=A
@LCL
M=D

//initialize argument segment pointer
@400
D=A
@ARG
M=D

//initialize this segment pointer
@3000
D=A
@THIS
M=D

//initialize that segment pointer
@3010
D=A
@THAT
M=D


//push constant to stack
@3030
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1






//push constant to stack
@3040
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1






//push constant to stack
@32
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//pop to this segment
@THIS
A=M
D=A
@2
D=D+A
@R13
M=D
//get the top of stack
@SP
A=M-1

D=M
@R13
A=M
M=D
//get the top of stack
@SP
A=M-1

//remove to stack
//get the top of stack
@SP
A=M-1

M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//push constant to stack
@46
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//pop to that segment
@THAT
A=M
D=A
@6
D=D+A
@R13
M=D
//get the top of stack
@SP
A=M-1

D=M
@R13
A=M
M=D
//get the top of stack
@SP
A=M-1

//remove to stack
//get the top of stack
@SP
A=M-1

M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//push from pointer segment


//push from pointer segment


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

M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=D+M


//push from this segment
@2
D=A
@THIS
A=D+M
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

M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M-D


//push from that segment
@6
D=A
@THAT
A=D+M
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

