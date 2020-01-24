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
@SquareGame.new
0;JMP
(Main$ret.1)

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
@Main$ret.4
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
@SquareGame.run
0;JMP
(Main$ret.4)

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
@Main$ret.7
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
@SquareGame.dispose
0;JMP
(Main$ret.7)

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
(Main.test)
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


@ifFalse.63
D;JNE

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
@Main$ret.16
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
(Main$ret.16)

//push constant to stack
@115
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.18
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
(Main$ret.18)

//push constant to stack
@116
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.20
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
(Main$ret.20)

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
@Main$ret.22
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
(Main$ret.22)

//push constant to stack
@105
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.24
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
(Main$ret.24)

//push constant to stack
@110
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.26
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
(Main$ret.26)

//push constant to stack
@103
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.28
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
(Main$ret.28)

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
@Main$ret.30
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
(Main$ret.30)

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
@Main$ret.32
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
(Main$ret.32)

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
@Main$ret.34
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
(Main$ret.34)

//push constant to stack
@110
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.36
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
(Main$ret.36)

//push constant to stack
@115
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.38
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
(Main$ret.38)

//push constant to stack
@116
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.40
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
(Main$ret.40)

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
@Main$ret.42
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
(Main$ret.42)

//push constant to stack
@110
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.44
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
(Main$ret.44)

//push constant to stack
@116
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.46
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
(Main$ret.46)

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
@2
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


//pop to segment
//get segment position
@3
D=A
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


//push from that segment
//push from segment
//get segment position
@THAT
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


//pop to segment
//get segment position
@3
D=A
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


//push from temp segment
//push from segment
//get segment position
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


//pop to that segment
//pop to segment
//get segment position
@THAT
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


@endIf.63
0;JMP

(ifFalse.63)

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


//negate
//get the top of stack
@SP
A=M-1

M=-M


//call function
@Main$ret.67
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
(Main$ret.67)

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
@2
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
@Main$ret.72
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
(Main$ret.72)

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


(endIf.63)

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
(Square.new)
D=0

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


//call function
@Square$ret.2
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
(Square$ret.2)

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
@Square$ret.11
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
@Square.draw
0;JMP
(Square$ret.11)

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
(Square.dispose)
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
@Square$ret.19
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
(Square$ret.19)

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
(Square.draw)
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
@Square$ret.28
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
(Square$ret.28)

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


//call function
@Square$ret.38
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
(Square$ret.38)

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
(Square.erase)
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
@Square$ret.46
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
(Square$ret.46)

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


//call function
@Square$ret.56
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
(Square$ret.56)

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
(Square.incSize)
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
@254
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
@jumpLocation67
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
@locationEnd67
0;JMP
//start of jump
(jumpLocation67)
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

@locationEnd67
0;JMP

//end of jump
(locationEnd67)



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
@510
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
@jumpLocation72
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
@locationEnd72
0;JMP
//start of jump
(jumpLocation72)
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

@locationEnd72
0;JMP

//end of jump
(locationEnd72)



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


@ifFalse.144
D;JNE

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
@Square$ret.77
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
@Square.erase
0;JMP
(Square$ret.77)

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
@2
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
@Square$ret.84
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
@Square.draw
0;JMP
(Square$ret.84)

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


@endIf.144
0;JMP

(ifFalse.144)

(endIf.144)

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
(Square.decSize)
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
@jumpLocation96
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
@locationEnd96
0;JMP
//start of jump
(jumpLocation96)
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

@locationEnd96
0;JMP

//end of jump
(locationEnd96)



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


@ifFalse.194
D;JNE

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
@Square$ret.100
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
@Square.erase
0;JMP
(Square$ret.100)

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
@Square$ret.107
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
@Square.draw
0;JMP
(Square$ret.107)

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


@endIf.194
0;JMP

(ifFalse.194)

(endIf.194)

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
(Square.moveUp)
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
@jumpLocation119
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
@locationEnd119
0;JMP
//start of jump
(jumpLocation119)
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

@locationEnd119
0;JMP

//end of jump
(locationEnd119)



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
@Square$ret.123
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
(Square$ret.123)

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


//call function
@Square$ret.137
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
(Square$ret.137)

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
@Square$ret.145
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
(Square$ret.145)

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


//call function
@Square$ret.155
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
(Square$ret.155)

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
(Square.moveDown)
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
@254
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
@jumpLocation169
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
@locationEnd169
0;JMP
//start of jump
(jumpLocation169)
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

@locationEnd169
0;JMP

//end of jump
(locationEnd169)



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
@Square$ret.173
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
(Square$ret.173)

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


//call function
@Square$ret.183
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
(Square$ret.183)

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
@Square$ret.191
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
(Square$ret.191)

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


//call function
@Square$ret.205
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
(Square$ret.205)

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


@endIf.310
0;JMP

(ifFalse.310)

(endIf.310)

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
(Square.moveLeft)
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
@jumpLocation217
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
@locationEnd217
0;JMP
//start of jump
(jumpLocation217)
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

@locationEnd217
0;JMP

//end of jump
(locationEnd217)



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


@ifFalse.396
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


//call function
@Square$ret.221
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
(Square$ret.221)

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


//call function
@Square$ret.235
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
(Square$ret.235)

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
@Square$ret.243
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
(Square$ret.243)

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


//call function
@Square$ret.253
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
(Square$ret.253)

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


@endIf.396
0;JMP

(ifFalse.396)

(endIf.396)

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
(Square.moveRight)
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
@jumpLocation267
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
@locationEnd267
0;JMP
//start of jump
(jumpLocation267)
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

@locationEnd267
0;JMP

//end of jump
(locationEnd267)



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


@ifFalse.478
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


//call function
@Square$ret.271
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
(Square$ret.271)

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


//call function
@Square$ret.281
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
(Square$ret.281)

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
@2
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
@Square$ret.289
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
(Square$ret.289)

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


//call function
@Square$ret.303
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
(Square$ret.303)

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


@endIf.478
0;JMP

(ifFalse.478)

(endIf.478)

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
(SquareGame.new)
D=0

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
@SquareGame$ret.2
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
(SquareGame$ret.2)

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
@30
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@SquareGame$ret.7
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
@Square.new
0;JMP
(SquareGame$ret.7)

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
(SquareGame.dispose)
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
@SquareGame$ret.17
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
@Square.dispose
0;JMP
(SquareGame$ret.17)

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
@SquareGame$ret.20
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
(SquareGame$ret.20)

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
(SquareGame.moveSquare)
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
@jumpLocation29
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
@locationEnd29
0;JMP
//start of jump
(jumpLocation29)
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

@locationEnd29
0;JMP

//end of jump
(locationEnd29)



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


@ifFalse.70
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


//call function
@SquareGame$ret.33
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
@Square.moveUp
0;JMP
(SquareGame$ret.33)

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


@endIf.70
0;JMP

(ifFalse.70)

(endIf.70)

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
@jumpLocation40
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
@locationEnd40
0;JMP
//start of jump
(jumpLocation40)
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

@locationEnd40
0;JMP

//end of jump
(locationEnd40)



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


@ifFalse.85
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


//call function
@SquareGame$ret.44
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
@Square.moveDown
0;JMP
(SquareGame$ret.44)

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


@endIf.85
0;JMP

(ifFalse.85)

(endIf.85)

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
@jumpLocation51
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
@locationEnd51
0;JMP
//start of jump
(jumpLocation51)
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

@locationEnd51
0;JMP

//end of jump
(locationEnd51)



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


@ifFalse.100
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


//call function
@SquareGame$ret.55
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
@Square.moveLeft
0;JMP
(SquareGame$ret.55)

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


@endIf.100
0;JMP

(ifFalse.100)

(endIf.100)

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
@jumpLocation62
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
@locationEnd62
0;JMP
//start of jump
(jumpLocation62)
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

@locationEnd62
0;JMP

//end of jump
(locationEnd62)



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


@ifFalse.115
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


//call function
@SquareGame$ret.66
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
@Square.moveRight
0;JMP
(SquareGame$ret.66)

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


@endIf.115
0;JMP

(ifFalse.115)

(endIf.115)

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
@SquareGame$ret.72
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
(SquareGame$ret.72)

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
(SquareGame.run)
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


(WhileTrue.160)

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


@endWhile.160
D;JNE

(WhileTrue.166)

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
@jumpLocation89
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
@locationEnd89
0;JMP
//start of jump
(jumpLocation89)
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

@locationEnd89
0;JMP

//end of jump
(locationEnd89)



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


@endWhile.166
D;JNE

//call function
@SquareGame$ret.92
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
(SquareGame$ret.92)

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
@SquareGame$ret.95
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
@SquareGame.moveSquare
0;JMP
(SquareGame$ret.95)

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


@WhileTrue.166
0;JMP

(endWhile.166)

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
@81
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
@jumpLocation101
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
@locationEnd101
0;JMP
//start of jump
(jumpLocation101)
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

@locationEnd101
0;JMP

//end of jump
(locationEnd101)



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


@ifFalse.188
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


@endIf.188
0;JMP

(ifFalse.188)

(endIf.188)

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
@90
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
@jumpLocation112
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
@locationEnd112
0;JMP
//start of jump
(jumpLocation112)
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

@locationEnd112
0;JMP

//end of jump
(locationEnd112)



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


@ifFalse.201
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


//call function
@SquareGame$ret.116
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
@Square.decSize
0;JMP
(SquareGame$ret.116)

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


@endIf.201
0;JMP

(ifFalse.201)

(endIf.201)

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
@88
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
@jumpLocation123
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
@locationEnd123
0;JMP
//start of jump
(jumpLocation123)
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

@locationEnd123
0;JMP

//end of jump
(locationEnd123)



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


@ifFalse.216
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


//call function
@SquareGame$ret.127
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
@Square.incSize
0;JMP
(SquareGame$ret.127)

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


@endIf.216
0;JMP

(ifFalse.216)

(endIf.216)

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
@131
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
@jumpLocation134
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
@locationEnd134
0;JMP
//start of jump
(jumpLocation134)
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

@locationEnd134
0;JMP

//end of jump
(locationEnd134)



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


@ifFalse.231
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


@endIf.231
0;JMP

(ifFalse.231)

(endIf.231)

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
@133
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
@jumpLocation144
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
@locationEnd144
0;JMP
//start of jump
(jumpLocation144)
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

@locationEnd144
0;JMP

//end of jump
(locationEnd144)



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


@ifFalse.244
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


@endIf.244
0;JMP

(ifFalse.244)

(endIf.244)

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
@jumpLocation154
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
@locationEnd154
0;JMP
//start of jump
(jumpLocation154)
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

@locationEnd154
0;JMP

//end of jump
(locationEnd154)



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


@ifFalse.257
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


@endIf.257
0;JMP

(ifFalse.257)

(endIf.257)

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
@jumpLocation164
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
@locationEnd164
0;JMP
//start of jump
(jumpLocation164)
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

@locationEnd164
0;JMP

//end of jump
(locationEnd164)



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


@ifFalse.270
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


@endIf.270
0;JMP

(ifFalse.270)

(endIf.270)

(WhileTrue.283)

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
@jumpLocation175
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
@locationEnd175
0;JMP
//start of jump
(jumpLocation175)
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

@locationEnd175
0;JMP

//end of jump
(locationEnd175)



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


@endWhile.283
D;JNE

//call function
@SquareGame$ret.179
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
(SquareGame$ret.179)

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
@SquareGame$ret.182
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
@SquareGame.moveSquare
0;JMP
(SquareGame$ret.182)

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


@WhileTrue.283
0;JMP

(endWhile.283)

@WhileTrue.160
0;JMP

(endWhile.160)

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

