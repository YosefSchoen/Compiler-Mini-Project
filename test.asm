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
@5
D=A
@SP
A=M
M=D
@SP
M=M+1



@4
D=A
@SP
A=M
M=D
@SP
M=M+1




@5
D=A
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

(END)
@END
0;JMP
