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



@3
D=A
@0
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
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


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



@3
D=A
@1
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
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


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
D=M
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
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
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
D=M
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
//remove to stack
//get the top of stack
@SP
A=M-1

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


@3
D=A
@0
D=D+A
A=D
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



@3
D=A
@1
D=D+A
A=D
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

M=D+M


//push from this segment
@THIS
D=M
@2
D=D+A
A=D
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


//push from that segment
@THAT
D=M
@6
D=D+A
A=D
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

M=D+M


//end of program infinite loop
(END)
@END
0;JMP

