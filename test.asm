//push constant to stack
@5
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//push constant to stack
@6
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



@5
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


@5
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


//push from temp segment
@5
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



//push from temp segment
@5
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



//end of program infinite loop
(END)
@END
0;JMP

