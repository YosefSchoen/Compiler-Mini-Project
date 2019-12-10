require_relative 'Translator'

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
def writeFile(vmFileName, asmFileName, lines)
  #new write only file object with the file name passed above
  outFile = File.new(asmFileName, "w")
  #outFile.syswrite(initializeProgram())

  #i will be used to create new jump locations for the comparison operators
  i = 0
  newFileName = getFileName(vmFileName)
  lines.each do |it|  cmd = it.split(' ')
  newCmd = convertCommand(cmd, i, newFileName)
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
  writeFile(vmFile, asmFile, lines)
end


def getFilesInDir()
  path = 'Project8/FunctionCalls/StaticsTest'

  Dir.foreach(path) do |filename|
    next if filename == '.' || filename == '..'
    next unless filename.to_s.include?("vm")
    file = File.open("#{path}/#{filename}", 'r')
    file.close
    # more code
  end
end

