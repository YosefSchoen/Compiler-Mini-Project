def initializeProgram()
    str = "@256"+"\n"+"D=A"+"\n"+"@SP"+"\n"+"M=D"+"\n"+
        "@300"+"\n"+"D=A"+"\n"+"@LCL"+"\n"+"M=D"+"\n"+
        "@400"+"\n"+"D=A"+"\n"+"@ARG"+"\n"+"M=D"+"\n"+
        "@3000"+"\n"+"D=A"+"\n"+"@THIS"+"\n"+"M=D"+"\n"+
        "@3010"+"\n"+"D=A"+"\n"+"@THAT"+"\n"+"M=D"+"\n"
    return str
end


def endProgram()
  str = "(END)"+"\n"+"@END"+"\n"+"0;JMP"+"\n"
end


def decrementStackPointer()
  str = "@SP"+"\n"+"M=M-1"+"\n"
  return str
end


def incrementStackPointer()
  str = "@SP"+"\n"+"M=M+1"+"\n"
  return str
end


def getTopOfStack()
  str = "@SP"+"\n"+"A=M-1"+"\n"
  return str
end


def pushToStack()
  str = "@SP"+"\n"+"A=M"+"\n"+"M=D"+"\n"+ incrementStackPointer() + "\n"
  return str
end


def removeFromStack()
  str = +"M=M-D"+"\n"+ decrementStackPointer() + "\n"
  return str
end


def getTopTwoFromStack
  str = getTopOfStack() + "D=M"+"\n" + removeFromStack() + getTopOfStack() + "\n"
  return str
end


def jumpLocations(jumpLocation, locationEnd, x)
  str = "@"+locationEnd+"\n"+"0;JMP"+"\n"+ startOfJump(jumpLocation, locationEnd, x) + endOfJump(locationEnd)
  return str
end


def startOfJump(jumpLocation, locationEnd, x)
  str = "("+jumpLocation+")"+"\n"+ decrementStackPointer() + "D="+x+"\n" + pushToStack() + "@"+locationEnd+"\n"+"0;JMP"+"\n"
  return str
end


def endOfJump(locationEnd)
  str = "(" + locationEnd + ")" + "\n"
  return str
end


def compare(op, locationTrue, locationEnd)
  str = getTopTwoFromStack() + "D=M-D"+"\n"+"@"+locationTrue+"\n"+"D;"+op+"\n"+ decrementStackPointer() + "D=0"+"\n" + pushToStack() + jumpLocations(locationTrue, locationEnd, "-1")
  return str
end


def boolAnd(locationFalse, locationEnd)
  str = getTopTwoFromStack() + "@"+locationFalse+"\n"+"D;JEQ"+"\n"+"D=M"+"\n"+"@"+locationFalse+"\n"+"D;JEQ"+"\n" + decrementStackPointer() + "D=-1"+"\n" + pushToStack() + jumpLocations(locationFalse, locationEnd, "0")
end


def boolOr(locationTrue, locationEnd)
  str = getTopTwoFromStack() + "@"+locationTrue+"\n"+"D;JNE"+"\n"+"D=M"+"\n"+"@"+locationTrue+"\n"+"D;JNE"+"\n" + decrementStackPointer() + "D=0"+"\n" + pushToStack() + jumpLocations(locationTrue, locationEnd, "-1")
end


def boolNot(locationTrue, locationEnd)
  str = getTopOfStack() + "@"+locationTrue+"\n"+"D;JEQ"+"\n" + decrementStackPointer() + "D=0"+"\n" + pushToStack() + jumpLocations(locationTrue, locationEnd, "0")
  return str
end

