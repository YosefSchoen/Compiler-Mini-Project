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
@10
D=A
@SP
A=M
M=D
@SP
M=M+1





@21
D=A
@SP
A=M
M=D
@SP
M=M+1



@22
D=A
@SP
A=M
M=D
@SP
M=M+1







@36
D=A
@SP
A=M
M=D
@SP
M=M+1





@42
D=A
@SP
A=M
M=D
@SP
M=M+1



@45
D=A
@SP
A=M
M=D
@SP
M=M+1







@510
D=A
@SP
A=M
M=D
@SP
M=M+1





@0
D=A
@LCL
A=M+D
M=D
@SP
A=M
M=D
@SP
M=M+1



@5
D=A
@THAT
A=M+D
M=D
@SP
A=M
M=D
@SP
M=M+1



@SP
A=M-1
D=M
M=M-D
@SP
M=M-1

@SP
A=M-1

M=D+M

@1
D=A
@ARG
A=M+D
M=D
@SP
A=M
M=D
@SP
M=M+1



@SP
A=M-1
D=M
M=M-D
@SP
M=M-1

@SP
A=M-1

M=M-D

@6
D=A
@THIS
A=M+D
M=D
@SP
A=M
M=D
@SP
M=M+1



@6
D=A
@THIS
A=M+D
M=D
@SP
A=M
M=D
@SP
M=M+1



@SP
A=M-1
D=M
M=M-D
@SP
M=M-1

@SP
A=M-1

M=D+M

@SP
A=M-1
D=M
M=M-D
@SP
M=M-1

@SP
A=M-1

M=M-D



@SP
A=M-1
D=M
M=M-D
@SP
M=M-1

@SP
A=M-1

M=D+M

(END)
@END
0;JMP
