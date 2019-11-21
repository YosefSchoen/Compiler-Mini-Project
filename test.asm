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
@12
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//pop to local segment
@LCL
A=M
D=A
@2
D=D+A
@R13
M=D//get the top of stack
@SP
A=M-1

D=M
@R13
A=M
M=D


//end of program infinite loop
(END)
@END
0;JMP

