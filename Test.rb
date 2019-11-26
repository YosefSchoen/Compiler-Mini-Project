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
        popToSegment("LCL", value)

  when "argument"
      cmds = "//pop to argument segment"+"\n"+
        popToSegment("ARG", value)

  when "static"
      cmds = getTopOfStack() + "D=M"+"\n"+"@Location."+value+"\n"+"M=D"+"\n"+removeFromStack()

  when "constant"
    cmds = "//pop constant"+"\n"+
        getTopOfStack() + removeFromStack()

  when "temp"
    cmds = popToTempSegment(value)

  when "this"
    cmds = "//pop to this segment"+"\n"+
       popToSegment("THIS", value)

  when "that"
    cmds = "//pop to that segment"+"\n"+
       popToSegment("THAT", value)

  when "pointer"
    cmds = "@3"+"\n"+"D=A"+"\n"+"@"+value+"\n"+"D=D+A"+"\n"+"@R13"+"\n"+"M=D"+"\n"+ getTopOfStack() + "D=M"+"\n"+"@R13"+"\n"+"A=M"+"\n"+"M=D"+"\n"+
        deleteFreeRegister("R13") + removeFromStack()
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
        pushFromSegment("LCL", value)

  when "argument"
    cmds = "//push from argument segment"+"\n"+
        pushFromSegment("ARG", value)

  when "static"
    cmds = "//push from static segment"+"\n"+
        "@Location."+value+"\n"+"D=M"+"\n"+pushToStack()

  when "constant"
    cmds = "//push constant to stack"+"\n"+
        "@"+value+"\n"+"D=A"+"\n" + pushToStack()

  when "temp"
    cmds = "//push from temp segment"+"\n"+
        pushFromTempSegment(value)

  when "this"
    cmds = "//push from this segment"+"\n"+
        pushFromSegment("THIS", value)

  when "that"
    cmds = "//push from that segment"+"\n"+
        pushFromSegment("THAT", value)

  when "pointer"
    cmds = "@3"+"\n"+"D=A"+"\n"+"@"+value+"\n"+"A=A+D"+"\n"+"D=M"+"\n"+ pushToStack()
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

#creates an array of the lines of a vm file to read
def readFile(fileName)
  lines = []

  #new read only file object with the filename passed above
  inFile = File.new(fileName, "r")

  while (line = inFile.gets)
    #removing comments and empty lines
    if line[0] != "/" and line[1] != "/" and line != "\n"
      lines << line
    end
  end

  inFile.close

  #returns an array each element is a string of a line of the file
  return lines
end

#writes the lines to a asm file
def writeFile(fileName, lines)

  #new write only file object with the file name passed above
  outFile = File.new(fileName, "w")
  #outFile.syswrite(initializeProgram())

  #i will be used to create new jump locations for the comparison operators
  i = 0

  lines.each do |it|  cmd = it.split(' ')
  newCmd = convertCommand(cmd, i)
  outFile.syswrite(newCmd)
  outFile.syswrite("\n")
    i = i + 1
  end

  #writes the new commands to the output file
  outFile.syswrite(endProgram())
end


#takes in a vm file and translates it to a hack asm file
def translateVmToHack(vmFile, asmFile)
  lines = readFile(vmFile)
  writeFile(asmFile, lines)
end


#the main will translate all of the stage 1 and stage 2 test cases
def main()

  #our own little test file
  translateVmToHack("test.vm", "test.asm")

  #stage 1 is to test simple add and  stack test
  translateVmToHack("Stage1/SimpleAdd/SimpleAdd.vm", "Stage1/SimpleAdd/SimpleAdd.asm")
  translateVmToHack("Stage1/StackTest/StackTest.vm", "Stage1/StackTest/StackTest.asm")

  #stage 2 is to test a basic test with the extra segments (local, argument, this, and that)
  # then it will test the pointer segment, and finally the static segment
  translateVmToHack("Stage2/BasicTest/BasicTest.vm", "Stage2/BasicTest/BasicTest.asm")
  translateVmToHack("Stage2/PointerTest/PointerTest.vm", "Stage2/PointerTest/PointerTest.asm")
  translateVmToHack("Stage2/StaticTest/StaticTest.vm", "Stage2/StaticTest/StaticTest.asm")
end


main()