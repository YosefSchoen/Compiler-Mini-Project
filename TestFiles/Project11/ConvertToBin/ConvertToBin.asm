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


//push constant to stack
@8001
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
@Main$ret.5
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Main.fillMemory
0;JMP
(Main$ret.5)

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
@8000
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1


//call function
@Main$ret.8
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Memory.peek
0;JMP
(Main$ret.8)

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
@Main$ret.11
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Main.convert
0;JMP
(Main$ret.11)

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
(Main.convert)
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


(WhileTrue.70)

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


@endWhile.70
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
@Main.nextMask
0;JMP
(Main$ret.28)

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
@16
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
@jumpLocation32
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
@locationEnd32
0;JMP
//start of jump
(jumpLocation32)
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

@locationEnd32
0;JMP

//end of jump
(locationEnd32)



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


@ifFalse.92
D;JNE

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


//push constant to stack
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


@ifFalse.102
D;JNE

//push constant to stack
@8000
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


//call function
@Main$ret.48
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Memory.poke
0;JMP
(Main$ret.48)

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


@endIf.102
0;JMP

(ifFalse.102)

//push constant to stack
@8000
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
@Main$ret.56
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Memory.poke
0;JMP
(Main$ret.56)

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


(endIf.102)

@endIf.92
0;JMP

(ifFalse.92)

//push constant to stack
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


(endIf.92)

@WhileTrue.70
0;JMP

(endWhile.70)

//push constant to stack
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
(Main.nextMask)
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
@jumpLocation71
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
@locationEnd71
0;JMP
//start of jump
(jumpLocation71)
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

@locationEnd71
0;JMP

//end of jump
(locationEnd71)



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


@ifFalse.165
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

@endIf.165
0;JMP

(ifFalse.165)

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


//call function
@Main$ret.80
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
(Main$ret.80)

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

(endIf.165)

//create function
(Main.fillMemory)
D=0

(WhileTrue.199)

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
@jumpLocation87
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
@locationEnd87
0;JMP
//start of jump
(jumpLocation87)
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

@locationEnd87
0;JMP

//end of jump
(locationEnd87)



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


@endWhile.199
D;JNE

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


//call function
@Main$ret.92
D=A
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@LCL
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@ARG
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THIS
D=M
//push to stack
@SP
A=M
M=D
//increment the stack pointer
@SP
M=M+1

//call segment pointer
@THAT
D=M
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
@Memory.poke
0;JMP
(Main$ret.92)

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


//pop to argument segment
//pop to segment
//get segment position
@ARG
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


@WhileTrue.199
0;JMP

(endWhile.199)

//push constant to stack
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

