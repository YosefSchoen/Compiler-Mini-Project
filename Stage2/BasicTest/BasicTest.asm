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
@10
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
//get the top of stack
@SP
A=M-1

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
@21
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//push constant to stack
@22
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//pop to argument segment
@ARG
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//pop to argument segment
@ARG
A=M
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
//get the top of stack
@SP
A=M-1

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
@36
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//push constant to stack
@42
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//push constant to stack
@45
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
@5
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//pop to that segment
@THAT
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//push constant to stack
@510
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

@R13
D=M
M=M-D


//push from local segment
@0
D=A
@LCL
A=D+M
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//push from that segment
@5
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=D+M


//push from argument segment
@1
D=A
@ARG
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

D=M
M=M-D
//decrement the stack pointer
@SP
M=M-1

//get the top of stack
@SP
A=M-1

M=M-D


//push from this segment
@6
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



//push from this segment
@6
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


//push from temp segment
@6
D=A
@5
A=A+D
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

