require_relative 'Utility'

def convertSegmentPop(arr)
  cmds = ""
  segment = arr[1]
  value = arr[2]

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


def convertSegmentPush(arr)
  cmds = ""
  segment = arr[1]
  value = arr[2]

  case segment
  when "local"
    cmds = "@"+value+"\n"+"D=A"+"\n"+"@LCL"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack() + "\n"

  when "argument"
    cmds = "@"+value+"\n"+"D=A"+"\n"+"@ARG"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack() + "\n"

  when "static"
    cmds = "\n"

  when "constant"
    cmds = "@"+value+"\n"+"D=A"+"\n" + pushToStack()+ "\n"

  when "temp"
    cmds = "\n"

  when "this"
    cmds = "@"+value+"\n"+"D=A"+"\n"+"@THIS"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack() + "\n"

  when "that"
    cmds = "@"+value+"\n"+"D=A"+"\n"+"@THAT"+"\n"+"A=M+D"+"\n"+"M=D"+"\n" + pushToStack() + "\n"

  when "pointer"
  end

  return cmds
end


#the array of strings will be converted to strings of hack asm code
def convertCommand(arr, i)

  op = arr[0]
  locationTrue = "".concat("TRUE", i.to_s())
  locationFalse = "".concat("FALSE", i.to_s())
  locationEnd = "".concat("ENDCOMP", i.to_s())
  #the various commands will be handled case by case each command is the the first word in the array
  case op
  when "add"
    cmds = getTopTwoFromStack() + "M=D+M"+"\n"

  when "sub"
    cmds = getTopTwoFromStack() + "M=M-D"+"\n"

  when "neg"
    cmds = getTopOfStack() +"M=-M"+"\n"

  when "eq"
    cmds = compare("JEQ", locationTrue, locationEnd)+"\n"

  when "gt"
    cmds = compare("JGT", locationTrue, locationEnd)+"\n"

  when "lt"
    cmds = compare("JLT", locationTrue, locationEnd)+"\n"

  when "and"
    cmds = getTopTwoFromStack() + "D=D&M"+"\n" + decrementStackPointer() + pushToStack()

  when "or"
    cmds = getTopTwoFromStack() + "D=D|M"+"\n" + decrementStackPointer() + pushToStack()

  when "not"
    cmds = getTopOfStack() + "D=!M"+"\n"+ decrementStackPointer() + pushToStack()

  #push and pop vary based on what we are pushing this is handled in there own functions
  when "push"
    cmds = convertSegmentPush(arr)

  when "pop"
    cmds = convertSegmentPop(arr)
  end

  return cmds
end


def readFile(fileName)
  lines = []

  inFile = File.new(fileName, "r")

  while (line = inFile.gets)
    if (line[0] != "/" and line[1] != "/" and line != "\n")
      lines << line
    end
  end

  inFile.close
  return lines
end


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

lines = readFile("Stage1/SimpleAdd/SimpleAdd.vm") #creates an array of the lines of a vm file to read
writeFile("Stage1/SimpleAdd/SimpleAdd.asm", lines) #writes the lines to a asm file

lines = readFile("Stage1/StackTest/StackTest.vm")
writeFile("Stage1/StackTest/StackTest.asm", lines)

lines = readFile("Stage2/BasicTest/BasicTest.vm")
writeFile("Stage2/BasicTest/BasicTest.asm", lines)


lines = readFile("test.vm")
writeFile("test.asm", lines)