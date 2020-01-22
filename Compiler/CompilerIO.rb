require_relative 'CompilerUtility'
require_relative 'Tokenizer'
require_relative 'Parser'
require_relative 'Parser2'
require_relative 'SymbolsTable'


def readJackFile(fileName)
  lines = []

  #new read only file object with the filename passed above
  inFile = File.new(fileName, "r")

  while (line = inFile.gets)

    lines << line
  end

  inFile.close

  #returns an array each element is a string of a line of the file
  return lines
end


def writeCompiledFile(tokens, classNames, outFile)
  resultList = compileClass2(tokens, classNames)
  str = resultList[0]
  classTable = resultList[1]
  methodsTableList = resultList[2]
  vmFile = File.new(outFile, "w")

  vmFile.syswrite(str)

  str = "\n\n//class symbol table\n" + classTable.printTable+"\n\n"
  for i in 0..methodsTableList.size-1
    str += "//method's symbol table\n" + methodsTableList[i].printTable+"\n\n"
  end

  vmFile.syswrite(str)
end

def writeCompiledXMLFile(tokens, classNames, outFile)
  str = compileClass(tokens, classNames)
  str = tabXMLTags(str)
  xmlFile = File.new(outFile, "w")


  xmlFile.syswrite(str)
end


def writeTokensXMLFile(tokens, outFile)
  str = "<tokens>\n"
  for i in 0..tokens.size-1
    str += getXMLString(tokens, i)
  end
  str += "</tokens>\n"
  str = tabXMLTags(str)

  xmlFile = File.new(outFile, "w")
  xmlFile.syswrite(str)
end


def compile(path)
  files = getFilesInDirCompiler(path)
  filesWithLines = getFilesWithLinesCompiler(files)
  classNames = getClassNames(filesWithLines)
  functionInfo = getFunctionNameTypesFiles(filesWithLines)
  compilerInfo = [classNames, functionInfo]

  puts functionInfo.to_s
  for i in 0..filesWithLines.size-1
    fSize = filesWithLines[i][0].size

    #renaming the
    compiledFileName = filesWithLines[i][0][0, fSize-5]+".vm"
    compiledFileXMLName = filesWithLines[i][0][0, fSize-5]+"Out.xml"
    tokensFileName = filesWithLines[i][0][0, fSize-5]+"TOut.xml"
    lines = filesWithLines[i][1]
    lines = getLines(lines)
    tokens = tokenize(lines)

    writeCompiledFile(tokens, compilerInfo, compiledFileName)
    writeCompiledXMLFile(tokens, classNames, compiledFileXMLName)
    writeTokensXMLFile(tokens, tokensFileName)
    puts filesWithLines[i][0] + " was tokenized and compiled" +"\n"
    @tables.tables.clear
  end
end


#this function will get all of the files in a specified path and return them in an array
def getFilesInDirCompiler(path)
  files = []
  #search for all of the files in the directory
  Dir.foreach(path) do |filename|
    #dont include parent files
    next if filename == '.' || filename == '..'

    #dont include files that are not jack files
    next unless filename.to_s.include?("jack")

    #push the file to the list
    files.push(path+"/"+filename)
  end

  return files
end



def getFilesWithLinesCompiler(files)
  fileWithLines = []

  #storing the file's name and its lines of vm commands in a tuple (name, [lines])
  for i in 0..files.size-1
    lines = (readJackFile(files[i]))
    tuple = [files[i], lines]
    #storing each tuple into  list
    fileWithLines.append(tuple)
  end

  return fileWithLines
end