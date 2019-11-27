#this will put the program in an infinite loop at the end of the program as to not run down the ROM for ever
def endProgram()
  str = "//end of program infinite loop"+"\n"+
      "(END)"+"\n"+"@END"+"\n"+"0;JMP"+"\n"
  return str+"\n"
end


#a simple function to decrement the stack pointer
def decrementStackPointer()
  str = "//decrement the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M-1"+"\n"
  return str+"\n"
end


#a simple function to increment the stack pointer
def incrementStackPointer()
  str = "//increment the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M+1"+"\n"
  return str+"\n"
end


#a simple function to get the top of the stack
def getTopOfStack()
  str = "//get the top of stack"+"\n"+
      "@SP"+"\n"+"A=M-1"+"\n"
  return str+"\n"
end


#pushes whatever value is stored in D to the the stack and then increments the stack pointer
def pushToStack()
  str = "//push to stack"+"\n"+
      "@SP"+"\n"+"A=M"+"\n"+"M=D"+"\n"+ incrementStackPointer()
  return str
end


#removes the top of the stack and decrements the stack pointer
def removeFromStack()
  str = "//remove to stack"+"\n"+
  getTopOfStack()+ "D=M"+"\n"+"M=M-D"+"\n"+ decrementStackPointer()
  return str
end


#gets the top two elements from the stack, the top one is stored in D and removed the next one is in M
def getTopTwoFromStack
  str = "//get the top two from stack"+"\n"+
      getTopOfStack() + "D=M"+"\n" + removeFromStack() + getTopOfStack()
  return str
end


def jumpLocations(jumpLocation, locationEnd, x)
  str = "//get comparison ops jump"+"\n"+
      "@"+locationEnd+"\n"+"0;JMP"+"\n"+ startOfJump(jumpLocation, locationEnd, x) + endOfJump(locationEnd)
  return str
end


def startOfJump(jumpLocation, locationEnd, x)
  str = "//start of jump"+"\n"+
  #x will either be set to -1 or zero depending if we want to jump for true or false
  # x will replace the value from the comparison operators
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
  return str
end



def storeToFreeRegister(reg)
  str = "@"+reg+"\n"+"M=D"+"\n"
  return str
end


def freeRegisterToSegment(reg)
  str = "@"+reg+"\n"+"A=M"+"\n"+"M=D"+"\n"
  return str
end

def deleteFreeRegister(reg)
  str = "@"+reg+"\n"+"D=M"+"\n"+"M=M-D"+"\n"
  return str
end


def getSegmentPosition(segment, value, location)
  str = "@"+segment+"\n"+"D="+location+"\n"+"@"+value+"\n"+"D=D+A"+"\n"
  return str
end


def popToSegment(segment, value, location)
  str = getSegmentPosition(segment, value, location) + storeToFreeRegister("R13") + getTopOfStack() + "D=M"+"\n" +
      freeRegisterToSegment("R13") + removeFromStack() + deleteFreeRegister("R13")
  return str
end


def pushFromSegment(segment, value, location)
  str = getSegmentPosition(segment, value, location)+"A=D"+"\n"+"D=M"+"\n"+pushToStack()
  return str
end


