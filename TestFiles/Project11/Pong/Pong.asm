@256
D=A
@SP
M=D
//call function
@Sys
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
@Sys.init
0;JMP
(Sys)
//create function
(Array.new)
D=0

//create function
(Array.dispose)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(Ball.new)
D=0

//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Ball$ret.2
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
@Memory.alloc
0;JMP
(Ball$ret.2)

//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@10
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
@3
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
@6
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@11
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
@4
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@12
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
@5
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
@6
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@13
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@14
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Ball$ret.23
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
@Ball.show
0;JMP
(Ball$ret.23)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//return function
@LCL
D=M
//store to free register
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

//create function
(Ball.dispose)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Ball$ret.31
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
@Memory.deAlloc
0;JMP
(Ball$ret.31)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Ball.show)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Ball$ret.40
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
@Screen.setColor
0;JMP
(Ball$ret.40)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Ball$ret.43
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
@Ball.draw
0;JMP
(Ball$ret.43)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Ball.hide)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Ball$ret.51
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
@Screen.setColor
0;JMP
(Ball$ret.51)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Ball$ret.54
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
@Ball.draw
0;JMP
(Ball$ret.54)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Ball.draw)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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
@5
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

M=M+D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//call function
@Ball$ret.69
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Ball$ret.69)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Ball.getLeft)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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
//store to free register
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

//create function
(Ball.getRight)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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
@5
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

M=M+D


//return function
@LCL
D=M
//store to free register
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

//create function
(Ball.setDestination)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
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


//call function
@Ball$ret.97
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
@Math.abs
0;JMP
(Ball$ret.97)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//call function
@Ball$ret.100
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
@Math.abs
0;JMP
(Ball$ret.100)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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
@jumpLocation104
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
@locationEnd104
0;JMP
//start of jump
(jumpLocation104)
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

@locationEnd104
0;JMP

//end of jump
(locationEnd104)



//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@7
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@7
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.288
D;JNE

//push from local segment
//push from segment
//get segment position
@LCL
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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from argument segment
//push from segment
//get segment position
@ARG
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
@jumpLocation117
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
@locationEnd117
0;JMP
//start of jump
(jumpLocation117)
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

@locationEnd117
0;JMP

//end of jump
(locationEnd117)



//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@8
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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
@jumpLocation121
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
@locationEnd121
0;JMP
//start of jump
(jumpLocation121)
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

@locationEnd121
0;JMP

//end of jump
(locationEnd121)



//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@9
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.288
0;JMP

(ifFalse.288)

//push from this segment
//push from segment
//get segment position
@THIS
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


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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
@jumpLocation127
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
@locationEnd127
0;JMP
//start of jump
(jumpLocation127)
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

@locationEnd127
0;JMP

//end of jump
(locationEnd127)



//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@8
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from argument segment
//push from segment
//get segment position
@ARG
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
@jumpLocation131
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
@locationEnd131
0;JMP
//start of jump
(jumpLocation131)
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

@locationEnd131
0;JMP

//end of jump
(locationEnd131)



//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@9
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.288)

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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//call function
@Ball$ret.136
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.136)

//push from local segment
//push from segment
//get segment position
@LCL
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//call function
@Ball$ret.142
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.142)

//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@5
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
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
@Ball$ret.148
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.148)

//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@6
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Ball.move)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Ball$ret.156
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
@Ball.hide
0;JMP
(Ball$ret.156)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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
@0
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
@jumpLocation160
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
@locationEnd160
0;JMP
//start of jump
(jumpLocation160)
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

@locationEnd160
0;JMP

//end of jump
(locationEnd160)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.391
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@5
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

M=M+D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.391
0;JMP

(ifFalse.391)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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


//push from this segment
//push from segment
//get segment position
@THIS
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

M=M+D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@9
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.415
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@7
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.420
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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

M=M+D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.420
0;JMP

(ifFalse.420)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.420)

@endIf.415
0;JMP

(ifFalse.415)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@7
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.446
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.446
0;JMP

(ifFalse.446)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.446)

(endIf.415)

(endIf.391)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@8
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.471
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@7
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.476
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.476
0;JMP

(ifFalse.476)

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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

M=M+D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.476)

@endIf.471
0;JMP

(ifFalse.471)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@7
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.502
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.502
0;JMP

(ifFalse.502)

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.502)

(endIf.471)

//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@10
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
@jumpLocation244
D;JGT
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
@locationEnd244
0;JMP
//start of jump
(jumpLocation244)
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

@locationEnd244
0;JMP

//end of jump
(locationEnd244)



//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.526
D;JNE

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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@14
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@10
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.526
0;JMP

(ifFalse.526)

(endIf.526)

//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@11
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
@jumpLocation257
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
@locationEnd257
0;JMP
//start of jump
(jumpLocation257)
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

@locationEnd257
0;JMP

//end of jump
(locationEnd257)



//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.547
D;JNE

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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@14
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@11
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.547
0;JMP

(ifFalse.547)

(endIf.547)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@12
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
@jumpLocation270
D;JGT
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
@locationEnd270
0;JMP
//start of jump
(jumpLocation270)
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

@locationEnd270
0;JMP

//end of jump
(locationEnd270)



//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.568
D;JNE

//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@14
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@12
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.568
0;JMP

(ifFalse.568)

(endIf.568)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@13
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
@jumpLocation283
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
@locationEnd283
0;JMP
//start of jump
(jumpLocation283)
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

@locationEnd283
0;JMP

//end of jump
(locationEnd283)



//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.589
D;JNE

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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@14
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@13
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.589
0;JMP

(ifFalse.589)

(endIf.589)

//push from segment
//get segment position
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


//call function
@Ball$ret.295
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
@Ball.show
0;JMP
(Ball$ret.295)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@14
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
//store to free register
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

//create function
(Ball.bounce)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
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


//call function
@Ball$ret.304
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.304)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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
@10
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Ball$ret.308
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.308)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//push constant to stack
@0
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
@jumpLocation312
D;JEQ
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
@locationEnd312
0;JMP
//start of jump
(jumpLocation312)
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

@locationEnd312
0;JMP

//end of jump
(locationEnd312)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.653
D;JNE

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
//pop to segment
//get segment position
@LCL
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.653
0;JMP

(ifFalse.653)

//push from this segment
//push from segment
//get segment position
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


//push constant to stack
@0
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
@jumpLocation321
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
@locationEnd321
0;JMP
//start of jump
(jumpLocation321)
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

@locationEnd321
0;JMP

//end of jump
(locationEnd321)



//not
//get the top of stack
@SP
A=M-1

M=!M


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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
@jumpLocation325
D;JEQ
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
@locationEnd325
0;JMP
//start of jump
(jumpLocation325)
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

@locationEnd325
0;JMP

//end of jump
(locationEnd325)



//and
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

M=M&D


//push from this segment
//push from segment
//get segment position
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


//push constant to stack
@0
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
@jumpLocation329
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
@locationEnd329
0;JMP
//start of jump
(jumpLocation329)
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

@locationEnd329
0;JMP

//end of jump
(locationEnd329)



//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//negate
//get the top of stack
@SP
A=M-1

M=-M


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
@jumpLocation333
D;JEQ
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
@locationEnd333
0;JMP
//start of jump
(jumpLocation333)
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

@locationEnd333
0;JMP

//end of jump
(locationEnd333)



//and
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

M=M&D


//or
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

M=M|D


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.668
D;JNE

//push constant to stack
@20
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.668
0;JMP

(ifFalse.668)

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.668)

(endIf.653)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@14
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
@jumpLocation348
D;JEQ
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
@locationEnd348
0;JMP
//start of jump
(jumpLocation348)
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

@locationEnd348
0;JMP

//end of jump
(locationEnd348)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.720
D;JNE

//push constant to stack
@506
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Ball$ret.356
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.356)

//push from local segment
//push from segment
//get segment position
@LCL
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


//call function
@Ball$ret.358
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.358)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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


//call function
@Ball$ret.363
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.363)

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.720
0;JMP

(ifFalse.720)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@14
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
@jumpLocation370
D;JEQ
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
@locationEnd370
0;JMP
//start of jump
(jumpLocation370)
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

@locationEnd370
0;JMP

//end of jump
(locationEnd370)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.760
D;JNE

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Ball$ret.377
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.377)

//push from local segment
//push from segment
//get segment position
@LCL
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


//call function
@Ball$ret.379
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.379)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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


//call function
@Ball$ret.384
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.384)

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.760
0;JMP

(ifFalse.760)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@14
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
@3
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
@jumpLocation391
D;JEQ
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
@locationEnd391
0;JMP
//start of jump
(jumpLocation391)
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

@locationEnd391
0;JMP

//end of jump
(locationEnd391)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.797
D;JNE

//push constant to stack
@250
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//push constant to stack
@25
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Ball$ret.399
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.399)

//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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


//call function
@Ball$ret.401
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.401)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from local segment
//push from segment
//get segment position
@LCL
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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


//call function
@Ball$ret.406
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.406)

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.797
0;JMP

(ifFalse.797)

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//push constant to stack
@25
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Ball$ret.415
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.415)

//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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


//call function
@Ball$ret.417
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Ball$ret.417)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from local segment
//push from segment
//get segment position
@LCL
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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


//call function
@Ball$ret.422
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Ball$ret.422)

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.797)

(endIf.760)

(endIf.720)

//push from segment
//get segment position
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


//push from local segment
//push from segment
//get segment position
@LCL
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//call function
@Ball$ret.431
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Ball.setDestination
0;JMP
(Ball$ret.431)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.new)
D=0

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


//call function
@Bat$ret.2
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
@Memory.alloc
0;JMP
(Bat$ret.2)

//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
@3
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.15
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
@Bat.show
0;JMP
(Bat$ret.15)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//return function
@LCL
D=M
//store to free register
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

//create function
(Bat.dispose)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.23
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
@Memory.deAlloc
0;JMP
(Bat$ret.23)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.show)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Bat$ret.32
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
@Screen.setColor
0;JMP
(Bat$ret.32)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.35
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
@Bat.draw
0;JMP
(Bat$ret.35)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.hide)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Bat$ret.43
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
@Screen.setColor
0;JMP
(Bat$ret.43)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.46
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
@Bat.draw
0;JMP
(Bat$ret.46)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.draw)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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

M=M+D


//call function
@Bat$ret.61
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Bat$ret.61)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.setDirection)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.getLeft)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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
//store to free register
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

//create function
(Bat.getRight)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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
//store to free register
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

//create function
(Bat.setWidth)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.88
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
@Bat.hide
0;JMP
(Bat$ret.88)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from argument segment
//push from segment
//get segment position
@ARG
D=M
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@Bat$ret.93
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
@Bat.show
0;JMP
(Bat$ret.93)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Bat.move)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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
@jumpLocation102
D;JEQ
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
@locationEnd102
0;JMP
//start of jump
(jumpLocation102)
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

@locationEnd102
0;JMP

//end of jump
(locationEnd102)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.228
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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
@0
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
@jumpLocation111
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
@locationEnd111
0;JMP
//start of jump
(jumpLocation111)
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

@locationEnd111
0;JMP

//end of jump
(locationEnd111)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.242
D;JNE

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.242
0;JMP

(ifFalse.242)

(endIf.242)

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Bat$ret.120
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
@Screen.setColor
0;JMP
(Bat$ret.120)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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

M=M+D


//call function
@Bat$ret.136
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Bat$ret.136)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Bat$ret.140
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
@Screen.setColor
0;JMP
(Bat$ret.140)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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
@3
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

M=M+D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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

M=M+D


//call function
@Bat$ret.150
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Bat$ret.150)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.228
0;JMP

(ifFalse.228)

//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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

M=M+D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push constant to stack
@511
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
@jumpLocation162
D;JGT
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
@locationEnd162
0;JMP
//start of jump
(jumpLocation162)
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

@locationEnd162
0;JMP

//end of jump
(locationEnd162)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.327
D;JNE

//push constant to stack
@511
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push from this segment
//push from segment
//get segment position
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.327
0;JMP

(ifFalse.327)

(endIf.327)

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Bat$ret.173
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
@Screen.setColor
0;JMP
(Bat$ret.173)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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
@4
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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

M=M+D


//call function
@Bat$ret.185
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Bat$ret.185)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Bat$ret.189
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
@Screen.setColor
0;JMP
(Bat$ret.189)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push constant to stack
@3
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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

M=M+D


//call function
@Bat$ret.203
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(Bat$ret.203)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(endIf.228)

//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Keyboard.init)
D=0

//create function
(Keyboard.keyPressed)
D=0

//create function
(Keyboard.readChar)
D=0

//create function
(Keyboard.readLine)
D=0

//create function
(Keyboard.readInt)
D=0

//create function
(Main.main)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.1
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
@PongGame.newInstance
0;JMP
(Main$ret.1)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//call function
@Main$ret.3
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
@PongGame.getInstance
0;JMP
(Main$ret.3)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//call function
@Main$ret.6
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
@PongGame.run
0;JMP
(Main$ret.6)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from local segment
//push from segment
//get segment position
@LCL
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


//call function
@Main$ret.9
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
@PongGame.dispose
0;JMP
(Main$ret.9)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Math.init)
D=0

//create function
(Math.abs)
D=0

//create function
(Math.multiply)
D=0

//create function
(Math.divide)
D=0

//create function
(Math.sqrt)
D=0

//create function
(Math.max)
D=0

//create function
(Math.min)
D=0

//create function
(Memory.init)
D=0

//create function
(Memory.peek)
D=0

//create function
(Memory.poke)
D=0

//create function
(Memory.alloc)
D=0

//create function
(Memory.deAlloc)
D=0

//create function
(Output.init)
D=0

//create function
(Output.initMap)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@127
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.3
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
@Array.new
0;JMP
(Output$ret.3)

//get the top of stack
@SP
A=M-1

D=M
@Output0
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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.17
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.17)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.31
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.31)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@33
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.45
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.45)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@34
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@20
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.59
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.59)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@18
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.73
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.73)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
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


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.87
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.87)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@37
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@49
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.101
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.101)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@38
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.115
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.115)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@39
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.129
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.129)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@40
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.143
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.143)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@41
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


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.157
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.157)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
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
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.171
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.171)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@43
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.185
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.185)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@44
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.199
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.199)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.213
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.213)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.227
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.227)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@47
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
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


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@3
D=A
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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.241
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.241)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.255
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.255)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@49
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@14
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.269
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.269)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.283
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.283)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.297
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.297)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@52
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@16
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@26
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@25
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@60
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.311
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.311)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@53
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.325
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.325)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
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


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.339
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.339)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@55
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@49
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.353
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.353)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@56
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.367
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.367)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@57
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@62
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@14
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.381
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.381)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@58
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.395
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.395)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.409
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.409)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@60
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@3
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


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.423
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.423)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@61
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.437
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.437)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@62
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
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


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.451
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.451)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@64
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.465
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.465)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.479
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.479)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@65
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.493
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.493)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@66
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.507
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.507)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@67
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.521
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.521)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@68
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.535
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.535)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@69
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@11
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@11
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.549
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.549)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@70
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@11
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@11
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.563
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.563)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@71
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@28
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@54
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@44
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.577
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.577)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@72
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.591
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.591)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@73
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.605
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.605)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@74
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@60
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@24
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@14
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.619
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.619)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@75
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@15
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.633
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.633)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@76
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@35
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.647
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.647)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@77
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@33
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.661
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.661)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@78
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@55
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@55
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.675
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.675)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@79
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.689
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.689)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@80
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@31
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@3
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.703
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.703)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@81
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@51
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@63
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@59
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Output$ret.717
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output$ret.717)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(PongGame.new)
D=0

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


//call function
@PongGame$ret.2
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
@Memory.alloc
0;JMP
(PongGame$ret.2)

//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//call function
@PongGame$ret.4
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
@Screen.clearScreen
0;JMP
(PongGame$ret.4)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@6
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@230
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@229
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.12
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Bat.new
0;JMP
(PongGame$ret.12)

//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@253
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@222
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@511
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@229
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.20
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
@6
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Ball.new
0;JMP
(PongGame$ret.20)

//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push constant to stack
@400
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.25
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Ball.setDestination
0;JMP
(PongGame$ret.25)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@238
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@511
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//push constant to stack
@240
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.31
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(PongGame$ret.31)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.35
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.moveCursor
0;JMP
(PongGame$ret.35)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//call function
@PongGame$ret.38
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
@String.new
0;JMP
(PongGame$ret.38)

//push constant to stack
@83
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.40
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.40)

//push constant to stack
@99
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.42
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.42)

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


//call function
@PongGame$ret.44
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.44)

//push constant to stack
@114
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.46
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.46)

//push constant to stack
@101
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.48
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.48)

//push constant to stack
@58
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.50
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.50)

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


//call function
@PongGame$ret.52
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.52)

//push constant to stack
@48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.54
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.54)

//call function
@PongGame$ret.55
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
@Output.printString
0;JMP
(PongGame$ret.55)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@5
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//return function
@LCL
D=M
//store to free register
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

//create function
(PongGame.dispose)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.71
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
@Bat.dispose
0;JMP
(PongGame$ret.71)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//call function
@PongGame$ret.74
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
@Ball.dispose
0;JMP
(PongGame$ret.74)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@PongGame$ret.77
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
@Memory.deAlloc
0;JMP
(PongGame$ret.77)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(PongGame.newInstance)
D=0

//call function
@PongGame$ret.82
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
@PongGame.new
0;JMP
(PongGame$ret.82)

//get the top of stack
@SP
A=M-1

D=M
@PongGame0
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


//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(PongGame.getInstance)
D=0

//push from static segment
@PongGame0
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
//store to free register
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

//create function
(PongGame.run)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


(WhileTrue.224)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@endWhile.224
D;JNE

(WhileTrue.230)

//push from local segment
//push from segment
//get segment position
@LCL
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
@0
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
@jumpLocation100
D;JEQ
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
@locationEnd100
0;JMP
//start of jump
(jumpLocation100)
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

@locationEnd100
0;JMP

//end of jump
(locationEnd100)



//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//not
//get the top of stack
@SP
A=M-1

M=!M


//and
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

M=M&D


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@endWhile.230
D;JNE

//call function
@PongGame$ret.106
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
@Keyboard.keyPressed
0;JMP
(PongGame$ret.106)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.109
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
@Bat.move
0;JMP
(PongGame$ret.109)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@PongGame$ret.112
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
@PongGame.moveBall
0;JMP
(PongGame$ret.112)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.115
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
@Sys.wait
0;JMP
(PongGame$ret.115)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@WhileTrue.230
0;JMP

(endWhile.230)

//push from local segment
//push from segment
//get segment position
@LCL
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
@130
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
@jumpLocation121
D;JEQ
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
@locationEnd121
0;JMP
//start of jump
(jumpLocation121)
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

@locationEnd121
0;JMP

//end of jump
(locationEnd121)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.274
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.126
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Bat.setDirection
0;JMP
(PongGame$ret.126)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.274
0;JMP

(ifFalse.274)

//push from local segment
//push from segment
//get segment position
@LCL
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
@132
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
@jumpLocation132
D;JEQ
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
@locationEnd132
0;JMP
//start of jump
(jumpLocation132)
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

@locationEnd132
0;JMP

//end of jump
(locationEnd132)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.292
D;JNE

//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.137
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Bat.setDirection
0;JMP
(PongGame$ret.137)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.292
0;JMP

(ifFalse.292)

//push from local segment
//push from segment
//get segment position
@LCL
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
@140
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
@jumpLocation143
D;JEQ
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
@locationEnd143
0;JMP
//start of jump
(jumpLocation143)
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

@locationEnd143
0;JMP

//end of jump
(locationEnd143)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.310
D;JNE

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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.310
0;JMP

(ifFalse.310)

(endIf.310)

(endIf.292)

(endIf.274)

(WhileTrue.325)

//push from local segment
//push from segment
//get segment position
@LCL
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
@0
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
@jumpLocation157
D;JEQ
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
@locationEnd157
0;JMP
//start of jump
(jumpLocation157)
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

@locationEnd157
0;JMP

//end of jump
(locationEnd157)



//not
//get the top of stack
@SP
A=M-1

M=!M


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//not
//get the top of stack
@SP
A=M-1

M=!M


//and
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

M=M&D


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@endWhile.325
D;JNE

//call function
@PongGame$ret.164
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
@Keyboard.keyPressed
0;JMP
(PongGame$ret.164)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.167
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
@Bat.move
0;JMP
(PongGame$ret.167)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from segment
//get segment position
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


//call function
@PongGame$ret.170
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
@PongGame.moveBall
0;JMP
(PongGame$ret.170)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@50
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.173
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
@Sys.wait
0;JMP
(PongGame$ret.173)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@WhileTrue.325
0;JMP

(endWhile.325)

@WhileTrue.224
0;JMP

(endWhile.224)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.373
D;JNE

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


//push constant to stack
@27
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.184
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.moveCursor
0;JMP
(PongGame$ret.184)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@9
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.187
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
@String.new
0;JMP
(PongGame$ret.187)

//push constant to stack
@71
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.189
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.189)

//push constant to stack
@97
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.191
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.191)

//push constant to stack
@109
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.193
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.193)

//push constant to stack
@101
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.195
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.195)

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


//call function
@PongGame$ret.197
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.197)

//push constant to stack
@79
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.199
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.199)

//push constant to stack
@118
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.201
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.201)

//push constant to stack
@101
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.203
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.203)

//push constant to stack
@114
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@PongGame$ret.205
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(PongGame$ret.205)

//call function
@PongGame$ret.206
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
@Output.printString
0;JMP
(PongGame$ret.206)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.373
0;JMP

(ifFalse.373)

(endIf.373)

//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(PongGame.moveBall)
D=0
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//call function
@PongGame$ret.217
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
@Ball.move
0;JMP
(PongGame$ret.217)

//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
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


//push constant to stack
@0
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
@jumpLocation221
D;JGT
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
@locationEnd221
0;JMP
//start of jump
(jumpLocation221)
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

@locationEnd221
0;JMP

//end of jump
(locationEnd221)



//push from this segment
//push from segment
//get segment position
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


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@5
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
@jumpLocation224
D;JEQ
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
@locationEnd224
0;JMP
//start of jump
(jumpLocation224)
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

@locationEnd224
0;JMP

//end of jump
(locationEnd224)



//not
//get the top of stack
@SP
A=M-1

M=!M


//and
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

M=M&D


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.427
D;JNE

//push from this segment
//push from segment
//get segment position
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@5
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.234
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
@Bat.getLeft
0;JMP
(PongGame$ret.234)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@1
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.237
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
@Bat.getRight
0;JMP
(PongGame$ret.237)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@2
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//call function
@PongGame$ret.240
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
@Ball.getLeft
0;JMP
(PongGame$ret.240)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//call function
@PongGame$ret.243
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
@Ball.getRight
0;JMP
(PongGame$ret.243)

//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
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
@jumpLocation247
D;JEQ
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
@locationEnd247
0;JMP
//start of jump
(jumpLocation247)
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

@locationEnd247
0;JMP

//end of jump
(locationEnd247)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.491
D;JNE

//push from local segment
//push from segment
//get segment position
@LCL
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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
@jumpLocation252
D;JGT
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
@locationEnd252
0;JMP
//start of jump
(jumpLocation252)
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

@locationEnd252
0;JMP

//end of jump
(locationEnd252)



//push from local segment
//push from segment
//get segment position
@LCL
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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
@jumpLocation255
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
@locationEnd255
0;JMP
//start of jump
(jumpLocation255)
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

@locationEnd255
0;JMP

//end of jump
(locationEnd255)



//or
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

M=M|D


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@3
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@3
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


//not
//get the top of stack
@SP
A=M-1

M=!M


//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.513
D;JNE

//push from local segment
//push from segment
//get segment position
@LCL
D=M
@4
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


//push from local segment
//push from segment
//get segment position
@LCL
D=M
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
@jumpLocation266
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
@locationEnd266
0;JMP
//start of jump
(jumpLocation266)
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

@locationEnd266
0;JMP

//end of jump
(locationEnd266)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.519
D;JNE

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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.519
0;JMP

(ifFalse.519)

//push from local segment
//push from segment
//get segment position
@LCL
D=M
@3
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


//push from local segment
//push from segment
//get segment position
@LCL
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
@jumpLocation278
D;JGT
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
@locationEnd278
0;JMP
//start of jump
(jumpLocation278)
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

@locationEnd278
0;JMP

//end of jump
(locationEnd278)



//not
//get the top of stack
@SP
A=M-1

M=!M


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


@ifFalse.539
D;JNE

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


//pop to local segment
//pop to segment
//get segment position
@LCL
D=M
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.539
0;JMP

(ifFalse.539)

(endIf.539)

(endIf.519)

//push from this segment
//push from segment
//get segment position
@THIS
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@6
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
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


//push from this segment
//push from segment
//get segment position
@THIS
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


//call function
@PongGame$ret.293
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Bat.setWidth
0;JMP
(PongGame$ret.293)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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


//pop to this segment
//pop to segment
//get segment position
@THIS
D=M
@4
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


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


//call function
@PongGame$ret.301
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.moveCursor
0;JMP
(PongGame$ret.301)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//push from this segment
//push from segment
//get segment position
@THIS
D=M
@4
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


//call function
@PongGame$ret.304
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
@Output.printInt
0;JMP
(PongGame$ret.304)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.513
0;JMP

(ifFalse.513)

(endIf.513)

@endIf.491
0;JMP

(ifFalse.491)

(endIf.491)

//push from this segment
//push from segment
//get segment position
@THIS
D=M
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


//push from local segment
//push from segment
//get segment position
@LCL
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


//call function
@PongGame$ret.314
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Ball.bounce
0;JMP
(PongGame$ret.314)

//pop to segment
//get segment position
@5
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


@endIf.427
0;JMP

(ifFalse.427)

(endIf.427)

//push constant to stack
@0
D=A
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
//store to free register
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

//create function
(Screen.init)
D=0

//create function
(Screen.clearScreen)
D=0

//create function
(Screen.setColor)
D=0

//create function
(Screen.drawPixel)
D=0

//create function
(Screen.drawLine)
D=0

//create function
(Screen.drawRectangle)
D=0

//create function
(Screen.drawCircle)
D=0

//create function
(String.new)
D=0

//push constant to stack
@0
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@String$ret.2
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
@Memory.alloc
0;JMP
(String$ret.2)

//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.dispose)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.length)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.charAt)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.setCharAt)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.appendChar)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.eraseLastChar)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.intValue)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.setInt)
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


//pop to segment
//get segment position
@3
D=A
@0
D=D+A

//store to free register
@R13
M=D

//get the top of stack
@SP
A=M-1

D=M
//send to segment from free register
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

//delete content from free register
@R13
D=M
M=M-D


//create function
(String.newLine)
D=0

//create function
(String.backSpace)
D=0

//create function
(String.doubleQuote)
D=0

//create function
(Sys.init)
D=0

//create function
(Sys.halt)
D=0

//create function
(Sys.wait)
D=0

//create function
(Sys.error)
D=0

//end of program infinite loop
(END)
@END
0;JMP

