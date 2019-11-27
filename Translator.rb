require_relative 'Utility'
#this function will convert the vm pop command based on which of the various segments were used
def convertSegmentPop(arr)
  cmds = "" #cmds will be the string of hack asm commands
  segment = arr[1] #the segment is the second word in the vm command
  value = arr[2] #the value is the third word in the vm command

  case segment
  when "local"
    cmds = "//pop to local segment"+"\n"+
        popToSegment("LCL", value, "M")

  when "argument"
    cmds = "//pop to argument segment"+"\n"+
        popToSegment("ARG", value, "M")

  when "static"
    cmds = getTopOfStack() + "D=M"+"\n"+"@Location."+value+"\n"+"M=D"+"\n"+removeFromStack()

  when "constant"
    cmds = "//pop constant"+"\n"+
        getTopOfStack() + removeFromStack()

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

  end

  return cmds
end


#this function will convert the vm push command based on which of the various segments were used
def convertSegmentPush(arr)
  cmds = "" #cmds will be the string of hack asm commands
  segment = arr[1] #the segment is the second word in the vm command
  value = arr[2] #the value is the third word in the vm command

  case segment
  when "local"
    cmds = "//push from local segment"+"\n"+
        pushFromSegment("LCL", value, "M")

  when "argument"
    cmds = "//push from argument segment"+"\n"+
        pushFromSegment("ARG", value, "M")

  when "static"
    cmds = "//push from static segment"+"\n"+
        "@Location."+value+"\n"+"D=M"+"\n"+pushToStack()

  when "constant"
    cmds = "//push constant to stack"+"\n"+
        "@"+value+"\n"+"D=A"+"\n" + pushToStack()

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
  end

  return cmds
end


#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i)

  op = arr[0] #the operation is the first word in the vm command

  #creating new jump locations for each conditional command
  jumpLocation = "jumpLocation"+i.to_s()
  locationEnd = "locationEnd"+i.to_s()

  #the various commands will be handled case by case each command is the the first word in the array
  case op

    #basic arithmetic operations
  when "add"
    cmds = "//add"+"\n" +
        getTopTwoFromStack() + "M=D+M"+"\n"+"\n"

  when "sub"
    cmds = "//subtract"+"\n" +
        getTopTwoFromStack() + "M=M-D"+"\n"+"\n"

  when "neg"
    cmds = "//negate"+"\n" +
        getTopOfStack() +"M=-M"+"\n"+"\n"

    #basic comparison operations they call the compare function in Utility
  when "eq"
    cmds = "//check if equal"+"\n" +
        compare("JEQ", jumpLocation, locationEnd)+"\n"

  when "gt"
    cmds = "//check if greater than"+"\n" +
        compare("JGT", jumpLocation, locationEnd)+"\n"

  when "lt"
    cmds = "//check if less than"+"\n" +
        compare("JLT", jumpLocation, locationEnd)+"\n"

    #basic bitwise operations
  when "and"
    cmds = "//bit wise and"+"\n" +
        getTopTwoFromStack() + "D=D&M"+"\n" + decrementStackPointer() + pushToStack()+"\n"

  when "or"
    cmds = "//bit wise or"+"\n" +
        getTopTwoFromStack() + "D=D|M"+"\n" + decrementStackPointer() + pushToStack()+"\n"

  when "not"
    cmds = "//bit wise not"+"\n" +
        getTopOfStack() + "D=!M"+"\n"+ decrementStackPointer() + pushToStack()+"\n"

    #push and pop vary based on what segment the program is working on, this is handled in there own functions
  when "push"
    cmds = convertSegmentPush(arr)+"\n"

  when "pop"
    cmds = convertSegmentPop(arr)+"\n"
  end

  return cmds
end
