require_relative 'Utility'
def convertArithmetic(op)
  case op

    #basic arithmetic operations
  when "add"
    cmds = arithmeticBinary("+")

  when "sub"
    cmds = arithmeticBinary("-")

  when "neg"
    cmds = arithmeticUnary("-")

    #basic bitwise operations
  when "and"
    cmds = arithmeticBinary("&")

  when "or"
    cmds = arithmeticBinary("|")

  when "not"
    cmds = arithmeticUnary("!")
  else
    cmds = "//not a legal command"
  end

  return cmds
end

def arithmeticUnary(op)
  str = getTopOfStack + "M="+op+"M"+"\n"
  return str+"\n"
end


def arithmeticBinary(op)
  str = getTopTwoFromStack + "M=M"+op+"D"+"\n"
  return str+"\n"
end


def convertCompare(op, jumpLocation, locationEnd)

  #basic comparison operations they call the compare function
  case op

  when "eq"
  cmds = compare("JEQ", jumpLocation, locationEnd)+"\n"

  when "gt"
  cmds = compare("JGT", jumpLocation, locationEnd)+"\n"

  when "lt"
  cmds = compare("JLT", jumpLocation, locationEnd)+"\n"
  else
    cmds = "//not a legal command"
  end

  return cmds
end

# function for all comparison operators op is the type of comparison
# locationTrue is the jump location if the comparison is true
# locationEnd is the jump location after the value is put in the stack
# if true -1 will be pushed if false 0 will be push
def compare(op, locationTrue, locationEnd)
  str = getTopTwoFromStack + "D=M-D"+"\n"+"@"+locationTrue+"\n"+"D;"+op+"\n"+
      decrementStackPointer + "D=0"+"\n" + pushToStack + jumpLocations(locationTrue, locationEnd)
  return str
end


def convertPushPop(op, segment, value, fileName)
  if op == "push"
    cmds = convertSegmentPush(segment, value, fileName)
  end

  if op == "pop"
    cmds = convertSegmentPop(segment, value, fileName)
  end

  return cmds
end


#this function will convert the vm push command based on which of the various segments were used
def convertSegmentPush(segment, value, fileName)
  case segment
  when "local"
    cmds = "//push from local segment"+"\n"+
        pushFromSegment("LCL", value, "M")

  when "argument"
    cmds = "//push from argument segment"+"\n"+
        pushFromSegment("ARG", value, "M")

  when "static"
    cmds = "//push from static segment"+"\n"+
        "@"+fileName+value+"\n"+"D=M"+"\n"+pushToStack

  when "constant"
    cmds = "//push constant to stack"+"\n"+
        "@"+value+"\n"+"D=A"+"\n" + pushToStack

  when "temp"
    cmds = "//push from temp segment"+"\n"+
        pushFromSegment("5", value, "A")

  when "this"
    cmds = "//push from this segment"+"\n"+
        pushFromSegment("THIS", value, "M")

  when "that"
    cmds = "//push from that segment"+"\n"+
        pushFromSegment("THAT", value, "M")

  when "pointer"
    cmds = pushFromSegment("3", value, "A")
  else
    cmds = error
  end

  return cmds
end

# function to push from a segment to the stack
# segment is which segment to push from
# value is the segments value
# location will be M or A depending if the segment is a pointer to memory location like local
# or the location itself like temp
def pushFromSegment(segment, value, location)
  str = "//push from segment"+"\n"+
      getSegmentPosition(segment, value, location) + "A=D"+"\n"+"D=M"+"\n" + pushToStack
  return str
end


#this function will convert the vm pop command based on which of the various segments were used
def convertSegmentPop(segment, value, fileName)
  case segment
  when "local"
    cmds = "//pop to local segment"+"\n"+
        popToSegment("LCL", value, "M")

  when "argument"
    cmds = "//pop to argument segment"+"\n"+
        popToSegment("ARG", value, "M")

  when "static"
    cmds = getTopOfStack + "D=M"+"\n"+"@"+fileName+value+"\n"+"M=D"+"\n"+removeFromStack

  when "constant"
    cmds = "//pop constant"+"\n"+
        getTopOfStack + removeFromStack

  when "temp"
    cmds = popToSegment("5", value, "A")

  when "this"
    cmds = "//pop to this segment"+"\n"+
        popToSegment("THIS", value, "M")

  when "that"
    cmds = "//pop to that segment"+"\n"+
        popToSegment("THAT", value, "M")

  when "pointer"
    cmds = popToSegment("3", value, "A")

  else
    cmds = error
  end

  return cmds
end


# function to pop from the stack to the segment
# segment is which segment to push from
# value is the segments value
# location will be M or A depending if the segment is a pointer to memory location like local
# or the location itself like temp
def popToSegment(segment, value, location)
  str = "//pop to segment"+"\n"+
      getSegmentPosition(segment, value, location) + storeToFreeRegister("R13") + getTopOfStack + "D=M"+"\n" +
      freeRegisterToSegment("R13") + removeFromStack + deleteFreeRegister("R13")
  return str
end


def convertProgramFlow(op, label)
  case op
  when "label"
    cmds = "("+label+")"+"\n"

  when "goto"
    cmds = "@"+label+"\n"+"0;JMP"+"\n"

  when "if-goto"
    cmds = getTopOfStack + "D=M"+"\n" + removeFromStack + "\n"+"@"+label+"\n"+"D;JNE"+"\n"

  else
    cmds = error
  end

  return cmds
end


def convertFunction(op, name, args)
  case op
  when "function"
    cmds = "\n"

  when "call"
    cmds = "\n"

  when "return"
    cmds = "\n"
  else
    cmds = error
  end

  return cmds
end


#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i, fileName)
  op = arr[0] # the operation is the first word in the vm command
  opType = getOpType(op) # the type of operation each will have there own function

  #creating new jump locations for each conditional command
  jumpLocation = "jumpLocation"+i.to_s
  locationEnd = "locationEnd"+i.to_s

  case opType
  when "arithmeticOp"
    cmds = convertArithmetic(op)

  when "compareOp"
    cmds = convertCompare(op, jumpLocation, locationEnd)

  when "pushPop"
    segment = arr[1] #the segment is the second word in the vm command
    value = arr[2] #the value is the third word in the vm command
    cmds = convertPushPop(op, segment, value, fileName)

  when "programFlowOp"
    label = arr[1]
    cmds = convertProgramFlow(op, label)

  when "functionOp"
    unless name.nil?
      name = arr[1]
      args = arr[2]
    end

    cmds = convertFunction(op, name, args)
  else
    cmds = error
  end

  return cmds
end