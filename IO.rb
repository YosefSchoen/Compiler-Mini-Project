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
def writeFile(asmFileName, lines)
  #new write only file object with the file name passed above
  outFile = File.new(asmFileName, "w")
  outFile.syswrite(initializeProgram())

  #i will be used to create new jump locations for the comparison operators
  i = 0
  newFileName = getFileName(asmFileName)
  lines.each do |it|  cmd = it.split(' ')
  newCmd = convertCommand(cmd, i, newFileName)
  outFile.syswrite(newCmd)
  outFile.syswrite("\n")
  i = i + 1
  end

  #writes the new commands to the output file
  outFile.syswrite(endProgram())
end


#takes in a directory of vm files and translates it to a hack asm file
def translateVmToHack(vmFilesDirectory, asmFile)
  #will store all of the code in the input files into an array of strings
  lines = getFilesInDir(vmFilesDirectory)

  #will write the strings in the array to the asm file
  writeFile(asmFile, lines)
end


#this function will get all of the files in a specified path and store the contents in an array of strings
def getFilesInDir(path)


  lines = []


  Dir.foreach(path) do |filename|
    #dont include parent files
    next if filename == '.' || filename == '..'

    #dont include files that are not vm files
    next unless filename.to_s.include?("vm")

    #Sys.vm needs to be written first if it exists
    if filename.to_s.include?("Sys.vm")
      lines = readFile(path+"/"+filename.to_s).concat(lines)

    else
    lines.concat((readFile(path+"/"+filename.to_s)))
    end
  end

  return lines
end

