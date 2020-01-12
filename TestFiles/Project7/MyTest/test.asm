//call function
@test$ret.0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

@SP
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@bar
0;JMP
(test$ret.0)

//end of program infinite loop
(END)
@END
0;JMP

