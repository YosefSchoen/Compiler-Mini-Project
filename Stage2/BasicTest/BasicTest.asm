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
//pop to segment
//get segment position
@ARG
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



//pop to argument segment
//pop to segment
//get segment position
@ARG
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
//pop to segment
//get segment position
@THAT
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



//pop to that segment
//pop to segment
//get segment position
@THAT
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
@510
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1



//pop to segment
//get segment position
@5
D=A
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



//push from that segment
//push from segment
//get segment position
@THAT
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

M=D+M


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
//push from segment
//get segment position
@5
D=A
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

