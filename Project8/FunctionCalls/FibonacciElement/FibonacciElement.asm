@256
D=A
@SP
M=D
@300
D=A
@LCL
M=D
@400
D=A
@ARG
M=D
@3000
D=A
@THIS
M=D
@3010
D=A
@THAT
M=D

//create function
(Sys.init)
D=0

//push constant to stack
@4
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@jumpLocation2
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(jumpLocation2)

(WHILE)

@WHILE
0;JMP

//create function
(Main.fibonacci)
D=0

//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//push constant to stack
@2
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


@IF_TRUE
D;JNE

@IF_FALSE
0;JMP

(IF_TRUE)

//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//return function
@LCL
D=M
@R13
M=D
//return segment pointer
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
//get the top of stack
@SP
A=M-1

D=M
@ARG
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

@ARG
D=M
@1
D=D+A
@SP
M=D
//return segment pointer
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
//return segment pointer
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
//return segment pointer
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
//return segment pointer
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M

0;JMP

(IF_FALSE)

//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//push constant to stack
@2
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


//call function
@jumpLocation18
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(jumpLocation18)

//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//push constant to stack
@1
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


//call function
@jumpLocation22
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(jumpLocation22)

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


//return function
@LCL
D=M
@R13
M=D
//return segment pointer
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
//get the top of stack
@SP
A=M-1

D=M
@ARG
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

@ARG
D=M
@1
D=D+A
@SP
M=D
//return segment pointer
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
//return segment pointer
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
//return segment pointer
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
//return segment pointer
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M

0;JMP

//end of program infinite loop
(END)
@END
0;JMP
