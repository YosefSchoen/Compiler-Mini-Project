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


#helper functions to write the jump labels for the comparison operators
def jumpLocations(jumpLocation, locationEnd)
  str = "//get comparison ops jump"+"\n"+
      "@"+locationEnd+"\n"+"0;JMP"+"\n"+ startOfJump(jumpLocation, locationEnd) + endOfJump(locationEnd)
  return str
end

# will create a label to jump to if the comparison was true
def startOfJump(jumpLocation, locationEnd)
  str = "//start of jump"+"\n"+
      "("+jumpLocation+")"+"\n"+ decrementStackPointer() + "D=-1"+"\n" + pushToStack() + "@"+locationEnd+"\n"+"0;JMP"+"\n"
  return str+"\n"
end

# will create a label to jump to after a comparison
# locationEnd is the jump location after the value is put in the stack
def endOfJump(locationEnd)
  str =  "//end of jump"+"\n"+
      "(" + locationEnd + ")" + "\n"
  return str+"\n"
end


# function for all comparison operators op is the type of comparison
# locationTrue is the jump location if the comparison is true
# locationEnd is the jump location after the value is put in the stack
# if true -1 will be pushed if false 0 will be push
def compare(op, locationTrue, locationEnd)
  str = "//"+op+" comparison"+"\n"+
  getTopTwoFromStack() + "D=M-D"+"\n"+"@"+locationTrue+"\n"+"D;"+op+"\n"+
  decrementStackPointer() + "D=0"+"\n" + pushToStack() + jumpLocations(locationTrue, locationEnd)
  return str
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

# function to pop from the stack to the segment
# segment is which segment to push from
# value is the segments value
# location will be M or A depending if the segment is a pointer to memory location like local
# or the location itself like temp
def popToSegment(segment, value, location)
  str = "//pop to segment"+"\n"+
      getSegmentPosition(segment, value, location) + storeToFreeRegister("R13") + getTopOfStack() + "D=M"+"\n" +
      freeRegisterToSegment("R13") + removeFromStack() + deleteFreeRegister("R13")
  return str
end


# function to push from a segment to the stack
# segment is which segment to push from
# value is the segments value
# location will be M or A depending if the segment is a pointer to memory location like local
# or the location itself like temp
def pushFromSegment(segment, value, location)
  str = "//push from segment"+"\n"+
      getSegmentPosition(segment, value, location)+"A=D"+"\n"+"D=M"+"\n"+pushToStack()
  return str
end


