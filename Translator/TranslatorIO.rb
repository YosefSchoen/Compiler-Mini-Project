require_relative 'Translator'


#creates an array of the lines of a vm file to read
def readFileTranslator(fileName)
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
def writeFileTranslator(asmFile, filesWithLines)
  #new write only file object with the file name passed above
  outFile = File.new(asmFile, "w")

  #checking if the file has an initializing file called Sys.vm
  if checkForBootStrap(filesWithLines)
    #implimenting the bootstrap code if it does
    outFile.syswrite(bootStrap)
  end

  #will write the files' content file by file
  for i in 0..filesWithLines.size-1
    fileName = filesWithLines[i][0]
    lines = filesWithLines[i][1]

    #j will be used to create new jump locations for the comparison operators
    j = 0

    #newFileName is the fileName without the path or .vm at the end
    newFileName = getFileName(fileName)

    #will convert the vm commands in each file line by line
    lines.each do |it|  cmd = it.split(' ')
    newCmd = convertCommand(cmd, j, newFileName)
    outFile.syswrite(newCmd)
    outFile.syswrite("\n")
    j = j + 1
    end

    puts fileName + " was translated" +"\n"
  end

  #writes the new commands to the output file
  outFile.syswrite(endProgram())
end


#this function will get all of the files in a specified path and return them in an array
def getFilesInDirTranslator(path)
  files = []

  #search for all of the files in the directory
  Dir.foreach(path) do |filename|
    #dont include parent files
    next if filename == '.' || filename == '..'

    #dont include files that are not vm files
    next unless filename.to_s.include?("vm")

    #push the file to the list
    files.push(path+"/"+filename)
  end

  return files
end


def getFilesWithLinesTranslator(files)
  fileWithLines = []

  #storing the file's name and its lines of vm commands in a tuple (name, [lines])
  for i in 0..files.size-1
    lines = (readFileTranslator(files[i]))
    tuple = [files[i], lines]
    #storing each tuple into  list
    fileWithLines.append(tuple)
  end

  return fileWithLines
end

#takes in a directory of vm files and translates it to a hack asm file
def translateVmToHack(vmFilesDirectory, asmFile)

  #will store all of the code in the input files into an array of strings
  files = getFilesInDirTranslator(vmFilesDirectory)

  fileWithLines = getFilesWithLinesTranslator(files)
  #will write the strings in the array to the asm file
  writeFileTranslator(asmFile, fileWithLines)
end