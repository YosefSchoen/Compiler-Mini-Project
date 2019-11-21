
#Utility has various functions which help with the program
require_relative 'Utility'

#this function will convert the vm pop command based on which of the various segments were used
def convertSegmentPop(arr)


  cmds = "" #cmds will be the string of hack asm commands
  segment = arr[1] #the segment is the second word in the vm command
  value = arr[2] #the value is the third word in the vm command

  case segment
  when "local"
    cmds = "//pop to local segment"+"\n"+
        getTopOfStack() + "D=M"+"\n"+"@LCL"+"\n"+"A=M+"+value+"\n"+"M=D"+"\n"+ removeFromStack()

  when "argument"
      cmds = "//pop to argument segment"+"\n"+
        getTopOfStack() + "D=M"+"\n"+"@ARG"+"\n"+"A=M+"+value+"\n"+"M=D"+"\n"+ removeFromStack()


  when "static"
    cmds = "\n"

  when "constant"
    cmds = cmds = "//pop constant"+"\n"+
        getTopOfStack() + removeFromStack()

  when "temp"
    cmds = "\n"

  when "this"
    cmds = cmds = "//pop to this segment"+"\n"+
       getTopOfStack() + "D=M"+"\n"+"@THIS"+"\n"+"A=M+"+value+"\n"+"M=D"+"\n"+ removeFromStack()


  when "that"
    cmds = cmds = "//pop to that segment"+"\n"+
       getTopOfStack() + "D=M"+"\n"+"@THAT"+"\n"+"A=M+"+value+"\n"+"M=D"+"\n"+ removeFromStack()

  when "pointer"
    cmds = "\n"
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
        "@LCL+"+value+"\n"+"D=M"+"\n" + pushToStack()

  when "argument"
    cmds = "//push from argument segment"+"\n"+
        "@ARG+"+value+"\n"+"D=M"+"\n" + pushToStack()

  when "static"
    cmds = "//push from static segment"+"\n"

  when "constant"
    cmds = "//push constant to stack"+"\n"+
        "@"+value+"\n"+"D=A"+"\n" + pushToStack()

  when "temp"
    cmds = "//push from temp segment"+"\n"

  when "this"
    cmds = "//push from this segment"+"\n"+
        "@THIS+"+value+"\n"+"D=M"+"\n" + pushToStack()

  when "that"
    cmds = "//push from that segment"+"\n"+
        "@THAT+"+value+"\n"+"D=M"+"\n" + pushToStack()

  when "pointer"
    cmds = "//push from pointer segment"+"\n"
  end

  return cmds
end


#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i)

  op = arr[0] #the operation is the first word in the vm command

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

  #push and pop vary based on what we are pushing this is handled in there own functions
  when "push"
    cmds = convertSegmentPush(arr)+"\n"

  when "pop"
    cmds = convertSegmentPop(arr)+"\n"
  end

  return cmds
end

#creates an array of the lines of a vm file to read
def readFile(fileName)
  lines = []

  inFile = File.new(fileName, "r")

  while (line = inFile.gets)
    #removing comments and empty lines
    if (line[0] != "/" and line[1] != "/" and line != "\n")
      lines << line
    end
  end

  inFile.close
  return lines
end

#writes the lines to a asm file
def writeFile(fileName, lines)
  outFile = File.new(fileName, "w")
  outFile.syswrite(initializeProgram())

  i = 0
  lines.each do |it|  cmd = it.split(' ')
  newCmd = convertCommand(cmd, i)
  outFile.syswrite(newCmd)
  outFile.syswrite("\n")
    i = i + 1
  end

  outFile.syswrite(endProgram())
end

#takes in a vm file and translates it to a hack asm file
def translateVmToHack(vmFile, asmFile)
  lines = readFile(vmFile)
  writeFile(asmFile, lines)
end

translateVmToHack("Stage1/SimpleAdd/SimpleAdd.vm", "Stage1/SimpleAdd/SimpleAdd.asm")
translateVmToHack("Stage1/StackTest/StackTest.vm", "Stage1/StackTest/StackTest.asm")
translateVmToHack("test.vm", "test.asm")
