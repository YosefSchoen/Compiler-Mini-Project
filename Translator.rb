require_relative 'Utility'
def convertArithmetic(op)
  case op

    #basic arithmetic operations
  when "add"
    cmds = "//add"+"\n" +
        arithmeticBinary("+")

  when "sub"
    cmds = "//subtract"+"\n" +
        arithmeticBinary("-")

  when "neg"
    cmds = "//negate"+"\n" +
        arithmeticUniary("-")

    #basic bitwise operations
  when "and"
    cmds = "//bit wise and"+"\n" +
        arithmeticBinary("&")

  when "or"
    cmds = "//bit wise or"+"\n" +
        arithmeticBinary("|")

  when "not"
    cmds = "//bit wise not"+"\n" +
        arithmeticUniary("!")
  else
    cmds = "//not a legal command"
  end

  return cmds
end

def arithmeticUniary(op)
  str = getTopOfStack + "M="+op+"M"+"\n"
  return str
end


def arithmeticBinary(op)
  str = getTopTwoFromStack + "M=M"+op+"D"+"\n"
  return str+"\n"
end


def convertCompare(op, jumpLocation, locationEnd)

  #basic comparison operations they call the compare function
  case op

  when "eq"
  cmds = "//check if equal"+"\n" +
      compare("JEQ", jumpLocation, locationEnd)+"\n"

  when "gt"
  cmds = "//check if greater than"+"\n" +
      compare("JGT", jumpLocation, locationEnd)+"\n"

  when "lt"
  cmds = "//check if less than"+"\n" +
      compare("JLT", jumpLocation, locationEnd)+"\n"
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
  str = "//"+op+" comparison"+"\n"+
      getTopTwoFromStack + "D=M-D"+"\n"+"@"+locationTrue+"\n"+"D;"+op+"\n"+
      decrementStackPointer + "D=0"+"\n" + pushToStack + jumpLocations(locationTrue, locationEnd)
  return str
end


def convertPushPop(op, segment, value)

  if op == "push"
    cmds = convertSegmentPush(segment, value)
  end

  if op == "pop"
    cmds = convertSegmentPop(segment, value)
  end

  return cmds
end


#this function will convert the vm push command based on which of the various segments were used
def convertSegmentPush(segment, value)
  case segment
  when "local"
    cmds = "//push from local segment"+"\n"+
        pushFromSegment("LCL", value, "M")

  when "argument"
    cmds = "//push from argument segment"+"\n"+
        pushFromSegment("ARG", value, "M")

  when "static"
    cmds = "//push from static segment"+"\n"+
        "@Location."+value+"\n"+"D=M"+"\n"+pushToStack

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
    cmds = "//not a legal command"
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
def convertSegmentPop(segment, value)
  case segment
  when "local"
    cmds = "//pop to local segment"+"\n"+
        popToSegment("LCL", value, "M")

  when "argument"
    cmds = "//pop to argument segment"+"\n"+
        popToSegment("ARG", value, "M")

  when "static"
    cmds = getTopOfStack + "D=M"+"\n"+"@Location."+value+"\n"+"M=D"+"\n"+removeFromStack

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
    cmds = "//not a legal command"
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


def convertProgramFlow(op)
  case op
  when "label"
    cmds = "\n"+"\n"

  when "goto"
    cmds = "\n"

  when "if-goto"
    cmds = "\n"
  else
    cmds = "//not a legal command"
  end

  return cmds
end


def convertFunction(arr)
  op = arr[0]

  case op
  when "function"
    cmds = "\n"

  when "call"
    cmds = "\n"

  when "return"
    cmds = "\n"
  else
    cmds = "//not a legal command"
  end

  return cmds
end


#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i)
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
    cmds = convertPushPop(op, segment, value)

  when "programFlowOp"
    cmds = convertProgramFlow(op)

  when "functionOp"
    cmds = convertFunction(arr)
  else
    cmds = "//not a legal command"
  end

  return cmds
end