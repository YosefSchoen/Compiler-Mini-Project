
#Utility has various functions which help with the program
require_relative 'Utility'

#this function will convert the vm pop command based on which of the various segments were used
def convertSegmentPop(arr)


  cmds = "" #cmds will be the string of hack asm commands
  segment = arr[1] #the segment is the second word in the vm command
  value = arr[2] #the value is the third word in the vm command

  case segment
  when "local"
    cmds = "\n"

  when "argument"
      cmds = "\n"

  when "static"
    cmds = "\n"

  when "constant"
    cmds = getTopOfStack() + removeFromStack()

  when "temp"
    cmds = "\n"

  when "this"
    cmds = "\n"

  when "that"
    cmds = "\n"

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
    cmds = "//push to local segment"+"\n"+
        "@"+value+"\n"+"D=A"+"\n"+"@LCL"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack()

  when "argument"
    cmds = "//push to argument segment"+"\n"+
        "@"+value+"\n"+"D=A"+"\n"+"@ARG"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack()

  when "static"
    cmds = "//push to static segment"+"\n"

  when "constant"
    cmds = "//push constant to stack"+"\n"+
        "@"+value+"\n"+"D=A"+"\n" + pushToStack()

  when "temp"
    cmds = "//push to temp segment"+"\n"

  when "this"
    cmds = "//push to this segment"+"\n"+
        "@"+value+"\n"+"D=A"+"\n"+"@THIS"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack()

  when "that"
    cmds = "//push to that segment"+"\n"+
        "@"+value+"\n"+"D=A"+"\n"+"@THAT"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack()

  when "pointer"
    cmds = "//push to pointer segment"+"\n"
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
        getTopTwoFromStack() + "M=D+M"+"\n"

  when "sub"
    cmds = "//subtract"+"\n" +
        getTopTwoFromStack() + "M=M-D"+"\n"

  when "neg"
    cmds = "//negate"+"\n" +
        getTopOfStack() +"M=-M"+"\n"

  #basic comparison operations they call the compare function in Utility
  when "eq"
    cmds = "//check if equal"+"\n" +
        compare("JEQ", jumpLocation, locationEnd)

  when "gt"
    cmds = "//check if greater than"+"\n" +
        compare("JGT", jumpLocation, locationEnd)

  when "lt"
    cmds = "//check if less than"+"\n" +
        compare("JLT", jumpLocation, locationEnd)

  #basic bitwise operations
  when "and"
    cmds = "//bit wise and"+"\n" +
        getTopTwoFromStack() + "D=D&M"+"\n" + decrementStackPointer() + pushToStack()

  when "or"
    cmds = "//bit wise or"+"\n" +
        getTopTwoFromStack() + "D=D|M"+"\n" + decrementStackPointer() + pushToStack()

  when "not"
    cmds = "//bit wise not"+"\n" +
        getTopOfStack() + "D=!M"+"\n"+ decrementStackPointer() + pushToStack()

  #push and pop vary based on what we are pushing this is handled in there own functions
  when "push"
    cmds = convertSegmentPush(arr)

  when "pop"
    cmds = convertSegmentPop(arr)
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
