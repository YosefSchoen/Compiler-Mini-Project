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



//end of program infinite loop
(END)
@END
0;JMP

