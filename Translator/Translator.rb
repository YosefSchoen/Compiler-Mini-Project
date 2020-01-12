require_relative 'TranslatorUtility'


#all of the arithmetic operations will be done here
def convertArithmetic(op)
  case op

    #basic arithmetic operations
  when "add"
    cmds = "//add"+"\n" + arithmeticBinary("+")

  when "sub"
    cmds = "//subtract"+"\n" +arithmeticBinary("-")

  when "neg"
    cmds = "//negate" +"\n"+arithmeticUnary("-")

    #basic bitwise operations
  when "and"
    cmds = "//and" +"\n"+arithmeticBinary("&")

  when "or"
    cmds = "//or" +"\n"+arithmeticBinary("|")

  when "not"
    cmds = "//not" +"\n"+arithmeticUnary("!")
  else
    cmds = "//not a legal command"
  end

  return cmds
end

#arithmetic operation on a single value
def arithmeticUnary(op)
  str = getTopOfStack + "M="+op+"M"+"\n"
  return str+"\n"
end

#arithmetic operation on two values
def arithmeticBinary(op)
  str = getTopTwoFromStack + "M=M"+op+"D"+"\n"
  return str+"\n"
end


#basic comparison operations they call the compare function
def convertCompare(op, jumpLocation, locationEnd)
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


def convertFunction(op, label, n, returnLocation)
  case op
  when "function"
    cmds = "//create function"+"\n"+
        "("+label+")"+"\n"+"D=0"+"\n"

    for i in 0..n-1
      cmds = cmds + pushToStack
    end


  when "call"
    #Need to impliment the @LABEL bit
    cmds = "//call function"+"\n"+

        "@"+returnLocation+"\n"+"D=A"+"\n"+pushToStack +
        pushSegmentPointer("LCL") +
        pushSegmentPointer("ARG") +
        pushSegmentPointer("THIS") +
        pushSegmentPointer("THAT") +
        repositionArg(n) +
        repositionLCL +
        "@"+label+"\n"+"0;JMP"+"\n"+
        "("+returnLocation+")"+"\n"

  when "return"
    cmds = "//return function"+"\n"+
        "@LCL"+"\n"+"D=M"+"\n"+ storeToFreeRegister("R13") +
        popSegmentPointer("R14", "5") +
        getTopOfStack+ "D=M"+"\n"+"@ARG"+"\n"+"A=M"+"\n"+"M=D"+"\n"+removeFromStack() +
        "@ARG"+"\n"+"D=M"+"\n"+"@1"+"\n"+"D=D+A"+"\n"+"@SP"+"\n"+"M=D"+"\n"+
        popSegmentPointer("THAT", "1") +
        popSegmentPointer("THIS", "2") +
        popSegmentPointer("ARG", "3") +
        popSegmentPointer("LCL", "4") +
        "@R14"+"\n"+"A=M"+"\n"+"\n"+"0;JMP"+"\n"
  else
    cmds = error
  end

  return cmds
end


def pushSegmentPointer(segment)
  str = "//call segment pointer"+"\n"+
      "@"+segment+"\n"+"D=M"+"\n"+pushToStack
  return str
end


def popSegmentPointer(segment, value)
  str = "//return segment pointer"+"\n"+
      "@"+value+"\n"+"D=A"+"\n"+"@R13"+"\n"+"A=M-D"+"\n"+"D=M"+"\n"+"@"+segment+"\n"+"M=D"+"\n"
  return str
end


def repositionArg(n)
  str = "@SP"+"\n"+"D=M"+"\n"+"@"+n.to_s+"\n"+"D=D-A"+"\n"+"@5"+"\n"+"D=D-A"+"\n"+"@ARG"+"\n"+"M=D"+"\n"
  return str
end


def repositionLCL
  str = "@SP"+"\n"+"D=M"+"\n"+"@LCL"+"\n"+"M=D"+"\n"
  return str
end

#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i, fileName)
  op = arr[0] # the operation is the first word in the vm command
  opType = getOpType(op) # the type of operation each will have there own function

  case opType
  when "arithmeticOp"
    cmds = convertArithmetic(op)

  when "compareOp"
    #creating new jump locations for each conditional command
    jumpLocation = "jumpLocation"+i.to_s
    locationEnd = "locationEnd"+i.to_s
    cmds = convertCompare(op, jumpLocation, locationEnd)

  when "pushPop"
    segment = arr[1] #the segment is the second word in the vm command
    value = arr[2] #the value is the third word in the vm command
    cmds = convertPushPop(op, segment, value, fileName)

  when "programFlowOp"
    label = arr[1]
    cmds = convertProgramFlow(op, label)

  when "functionOp"
      label = arr[1]
      n = arr[2].to_i
      returnLocation = fileName+"$ret."+i.to_s

    cmds = convertFunction(op, label, n, returnLocation)

  else
    cmds = error
  end

  return cmds
end