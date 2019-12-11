def initializeProgram()

  str =  "@256"+"\n"+"D=A"+"\n"+"@SP"+"\n"+"M=D"+"\n"+
      "@300"+"\n"+"D=A"+"\n"+"@LCL"+"\n"+"M=D"+"\n"+
      "@400"+"\n"+"D=A"+"\n"+"@ARG"+"\n"+"M=D"+"\n"+
      "@3000"+"\n"+"D=A"+"\n"+"@THIS"+"\n"+"M=D"+"\n"+
      "@3010"+"\n"+"D=A"+"\n"+"@THAT"+"\n"+"M=D"+"\n"

  return str+"\n"
end


def bootStrap
  str =  "@256"+"\n"+"D=A"+"\n"+"@SP"+"\n"+"M=D"+"\n"+
  convertFunction("call", "Sys.init", "0", "Sys")
  return str
end


#this will put the program in an infinite loop at the end of the program as to not run down the ROM for ever
def endProgram
  str = "//end of program infinite loop"+"\n"+
      "(END)"+"\n"+"@END"+"\n"+"0;JMP"+"\n"
  return str+"\n"
end


def error
  str = "not a vm command"+"\n"
  return str
end


def getFileName(filename)
  newFileName = ""

  for i in 0..filename.size do
    if filename[i] == '/'
      newFileName = filename[i + 1, filename.size]
    end

    if filename[i] == '.'
      newFileName = newFileName[0, newFileName.size - 3]
    end
  end

  return newFileName
end

def getOpType(op)
  arithmeticOp = %w(add sub neg and or not)
  compareOp = %w(eq lt gt)
  pushPop = %w(push pop)
  programFlowOp = %w(label goto if-goto)
  functionOp = %w(function call return)

  if arithmeticOp.include?(op)
    opType = "arithmeticOp"
  end

  if compareOp.include?(op)
    opType = "compareOp"
  end

  if pushPop.include?(op)
    opType = "pushPop"
  end

  if programFlowOp.include?(op)
    opType = "programFlowOp"
  end

  if functionOp.include?(op)
    opType = "functionOp"
  end

  return opType
end

#a simple function to decrement the stack pointer
def decrementStackPointer
  str = "//decrement the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M-1"+"\n"
  return str+"\n"
end


#a simple function to increment the stack pointer
def incrementStackPointer
  str = "//increment the stack pointer"+"\n"+
      "@SP"+"\n"+"M=M+1"+"\n"
  return str+"\n"
end


#a simple function to get the top of the stack
def getTopOfStack
  str = "//get the top of stack"+"\n"+
      "@SP"+"\n"+"A=M-1"+"\n"
  return str+"\n"
end


#pushes whatever value is stored in D to the the stack and then increments the stack pointer
def pushToStack
  str = "//push to stack"+"\n"+
      "@SP"+"\n"+"A=M"+"\n"+"M=D"+"\n"+ incrementStackPointer
  return str
end


#removes the top of the stack and decrements the stack pointer
def removeFromStack
  str = "//remove to stack"+"\n"+
  getTopOfStack + "D=M"+"\n"+"M=M-D"+"\n" + decrementStackPointer
  return str
end


#gets the top two elements from the stack, the top one is stored in D and removed the next one is in M
def getTopTwoFromStack
  str = "//get the top two from stack"+"\n"+
      getTopOfStack + "D=M"+"\n" + removeFromStack + getTopOfStack
  return str
end


#helper functions to write the jump labels for the comparison operators
def jumpLocations(jumpLocation, locationEnd)
  str = "//get comparison ops jump"+"\n"+
      "@"+locationEnd+"\n"+"0;JMP"+"\n"+ startOfJump(jumpLocation, locationEnd) + endOfJump(locationEnd)
  return str
end

# will create a label to jump to if the comparison was true
def startOfJump(jumpLocation, locationEnd)
  str = "//start of jump"+"\n"+
      "("+jumpLocation+")"+"\n"+ decrementStackPointer + "D=-1"+"\n" + pushToStack + "@"+locationEnd+"\n"+"0;JMP"+"\n"
  return str+"\n"
end

# will create a label to jump to after a comparison
# locationEnd is the jump location after the value is put in the stack
def endOfJump(locationEnd)
  str =  "//end of jump"+"\n"+
      "(" + locationEnd + ")" + "\n"
  return str+"\n"
end


# function to store information in one of the three free registers for assembler
# this function is needed to store the location of a memory segment while D holds the stack value
def storeToFreeRegister(reg)
  str = "//store to free register"+"\n"+
      "@"+reg+"\n"+"M=D"+"\n"
  return str+"\n"
end

# function to go to a segment location stored in one of the three free registers for assembler
# this function is needed to store the location of a memory segment while D holds the stack value
def freeRegisterToSegment(reg)
  str = "//send to segment from free register"+"\n"+
      "@"+reg+"\n"+"A=M"+"\n"+"M=D"+"\n"
  return str+"\n"
end


# function to delete a value from one of the three free registers for assembler
def deleteFreeRegister(reg)
  str = "//delete content from free register"+"\n"+
      "@"+reg+"\n"+"D=M"+"\n"+"M=M-D"+"\n"
  return str+"\n"
end


# function to get the position in memory of a segment
# segment is which segment to push from
# value is the segments value
# location will be M or A depending if the segment is a pointer to memory location like local
# or the location itself like temp
def getSegmentPosition(segment, value, location)
  str = "//get segment position"+"\n"+
      "@"+segment+"\n"+"D="+location+"\n"+"@"+value+"\n"+"D=D+A"+"\n"
  return str+"\n"
end