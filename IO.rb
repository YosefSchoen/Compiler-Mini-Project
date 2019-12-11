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
def writeFile(asmFile, filesWithLines)
  #new write only file object with the file name passed above
  outFile = File.new(asmFile, "w")
  #outFile.syswrite(initializeProgram())


  for i in 0..filesWithLines.size-1
    if filesWithLines[i][0].include?("Sys.vm")
      outFile.syswrite(bootStrap)
    end
  end


  for i in 0..filesWithLines.size-1
    fileName = filesWithLines[i][0]
    lines = filesWithLines[i][1]
    #i will be used to create new jump locations for the comparison operators
    j = 0
    newFileName = getFileName(fileName)
    lines.each do |it|  cmd = it.split(' ')
    newCmd = convertCommand(cmd, j, newFileName)
    outFile.syswrite(newCmd)
    outFile.syswrite("\n")
    j = j + 1
    end
  end

  #writes the new commands to the output file
  outFile.syswrite(endProgram())
end


#this function will get all of the files in a specified path and return them in an array
def getFilesInDir(path)
  files = []

  Dir.foreach(path) do |filename|
    #dont include parent files
    next if filename == '.' || filename == '..'

    #dont include files that are not vm files
    next unless filename.to_s.include?("vm")
    files.push(path+"/"+filename)
  end

  return files
end


#takes in a directory of vm files and translates it to a hack asm file
def translateVmToHack(vmFilesDirectory, asmFile)
  #will store all of the code in the input files into an array of strings
  files = getFilesInDir(vmFilesDirectory)
  fileWithLines = []

  for i in 0..files.size-1
   lines = (readFile(files[i]))
   tuple = [files[i], lines]

    fileWithLines.append(tuple)
  # if files[i].include?("Sys.vm")
   # fileWithLines.unshift(tuple)
  # else
   # fileWithLines.append(tuple)
    # end
  end

  #will write the strings in the array to the asm file
  writeFile(asmFile, fileWithLines)
end
