def initializeProgram()
    str = "//initialize stack segment pointer"+"\n"+
        "@256"+"\n"+"D=A"+"\n"+"@SP"+"\n"+"M=D"+"\n"+"\n"+

        "//initialize local segment pointer"+"\n"+
        "@300"+"\n"+"D=A"+"\n"+"@LCL"+"\n"+"M=D"+"\n"+"\n"+

        "//initialize argument segment pointer"+"\n"+
        "@400"+"\n"+"D=A"+"\n"+"@ARG"+"\n"+"M=D"+"\n"+"\n"+

        "//initialize this segment pointer"+"\n"+
        "@3000"+"\n"+"D=A"+"\n"+"@THIS"+"\n"+"M=D"+"\n"+"\n"+

        "//initialize that segment pointer"+"\n"+
        "@3010"+"\n"+"D=A"+"\n"+"@THAT"+"\n"+"M=D"+"\n"+"\n"

    return str+"\n"
end


def endProgram()
  str = "//end of program infinite loop"+"\n"+
      "(END)"+"\n"+"@END"+"\n"+"0;JMP"+"\n"
  return str+"\n"
end


def decrementStackPointer()
  str = "//decrement the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M-1"+"\n"
  return str+"\n"
end


def incrementStackPointer()
  str = "//increment the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M+1"+"\n"
  return str+"\n"
end


def getTopOfStack()
  str = "//get the top of stack"+"\n"+
      "@SP"+"\n"+"A=M-1"+"\n"
  return str+"\n"
end


def pushToStack()
  str = "//push to stack"+"\n"+
      "@SP"+"\n"+"A=M"+"\n"+"M=D"+"\n"+ incrementStackPointer()
  return str+"\n"
end


def removeFromStack()
  str = "//remove to stack"+"\n"+
  getTopOfStack()+"M=M-D"+"\n"+ decrementStackPointer()
  return str+"\n"
end


def getTopTwoFromStack
  str = "//get the top two from stack"+"\n"+
      getTopOfStack() + "D=M"+"\n" + removeFromStack() + getTopOfStack()
  return str+"\n"
end


def jumpLocations(jumpLocation, locationEnd, x)
  str = "//get comparison ops jump"+"\n"+
      "@"+locationEnd+"\n"+"0;JMP"+"\n"+ startOfJump(jumpLocation, locationEnd, x) + endOfJump(locationEnd)
  return str+"\n"
end


def startOfJump(jumpLocation, locationEnd, x)
  str = "//start of jump"+"\n"+
      "("+jumpLocation+")"+"\n"+ decrementStackPointer() + "D="+x+"\n" + pushToStack() + "@"+locationEnd+"\n"+"0;JMP"+"\n"
  return str+"\n"
end


def endOfJump(locationEnd)
  str =  "//end of jump"+"\n"+
      "(" + locationEnd + ")" + "\n"
  return str+"\n"
end


def compare(op, locationTrue, locationEnd)
  str = "//"+op+" comparison"+"\n"+
  getTopTwoFromStack() + "D=M-D"+"\n"+"@"+locationTrue+"\n"+"D;"+op+"\n"+ decrementStackPointer() + "D=0"+"\n" + pushToStack() + jumpLocations(locationTrue, locationEnd, "-1")
  return str+"\n"
end
