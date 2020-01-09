require_relative 'Tokenizer'
require_relative 'Parser'


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


def getClassNames(filesWithLines)
  classNames = []
  for i in 0..filesWithLines.size-1
    lines = filesWithLines[i][1]
    tokens = tokenize(lines)
    classNames.push(tokens[1][1])
  end
  return classNames
end


def removeComments(lines)
  newLines = []
  multiLineComment = false

  for i in 0..lines.size-1
    line = lines[i].split(" ")
    newLine = []
    for j in 0..line.size-1
      str = line[j]

      if str.size > 1 and str[0] == "/" and str[1] == "/"
        break
      end

      if str.size > 1 and str[0] == "/" and str[1] == "*"
        multiLineComment = true
      end

      unless multiLineComment
        newLine.push(str)
      end

      if str.size > 1 and str[0] == "*" and str[1] == "/"
        multiLineComment = false
      end
    end

    unless newLine.empty?
      newLines.push(newLine)
    end
  end

  return newLines
end


def spaceSymbols(lines)
  newLines = []

  for i in 0..lines.size-1
    line = lines[i]
    newLine = []

    for j in 0..line.size-1
      str = line[j]
      newStr = ""

      for k in 0..str.size-1
        if getSymbols.include?(str[k])
          newStr = newStr + " "+str[k]+" "

        else
          newStr += str[k]
        end
      end

      newStr = newStr.split(" ")

      newLine.concat(newStr)
    end

    newLines.concat(newLine)
  end

  return newLines
end


def getStrConst(lines)
  newLines = []
  buildingString = false
  strConst = ""
  for i in 0..lines.size-1
    str = lines[i]
    if str == "\""
      str = " "+str
    end

    if str[0] == "\""
      buildingString = true
      strConst = str

    elsif buildingString
      strConst = strConst + " " + str
    end

    if !buildingString
      newLines.push(str)
    end

    if str[str.size-1] == "\""
      newLines.push(strConst)
      buildingString = false
    end
  end

  return newLines
end


def getLines(lines)
  lines = removeComments(lines)
  lines = spaceSymbols(lines)
  lines = getStrConst(lines)
  return lines
end


def compile(path)
  files = getFilesInDirCompiler(path)
  filesWithLines = getFilesWithLinesCompiler(files)
  classNames = getClassNames(filesWithLines)


  for i in 0..filesWithLines.size-1
    fSize = filesWithLines[i][0].size

    #renaming the
    compiledFileName = filesWithLines[i][0][0, fSize-5]+"Out.xml"
    tokensFileName = filesWithLines[i][0][0, fSize-5]+"TOut.xml"
    lines = filesWithLines[i][1]
    lines = getLines(lines)
    tokens = tokenize(lines)
    writeCompiledXMLFile(tokens, classNames, compiledFileName)
    writeTokensXMLFile(tokens, tokensFileName)

    testStrings(tokens)
  end
end


def tabXMLTags(str)
  lineTabs = []
  numTabs = 0
  strArr = str.split("\n")

  for i in 0..strArr.size-1
    if isEndTag(strArr[i])
      numTabs -= 1
    end

    lineTabs.push(numTabs)

    if isStartTag(strArr[i])
      numTabs += 1
    end
  end

  for i in 0..strArr.size-1
    tabs = ""

    for j in 1..lineTabs[i]
      tabs += "\t"
    end

    strArr[i] = tabs+strArr[i]
  end

  return strArr.join("\n")
end


def isStartTag(str)

  #a string is a start tag if it is of form <"substr">
  if str[0] == "<" and str[1] != "/"

    #if it is inline ie <"substr">stuff</"substr>" return false
    for i in 0..str.size-1
      if str[i] == ">" and i < str.size-1
        return false
      end
    end

    #if the above exception passes return true
    return true
  end

  #if the top if statement is false return false
  return false
end


def isEndTag(str)
  #a string is a end tag if it is of form </"substr">
  if str[0] == "<" and str[1] == "/"

    #if it is inline ie <"substr">stuff</"substr>" return false
    for i in 0..str.size-1
      if str[i] == ">" and i < str.size-1
        return false
      end
    end

    #if the above exception passes return true
    return true
  end

  #if the top if statement is false return false
  return false
end


#this function will get all of the files in a specified path and return them in an array
def getFilesInDirCompiler(path)
  files = []
  #search for all of the files in the directory
  Dir.foreach(path) do |filename|
    #dont include parent files
    next if filename == '.' || filename == '..'

    #dont include files that are not vm files
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


def testStrings(tokens)
  for i in 0..tokens.size-1
    if tokens[i][0] == "stringConstant"
    end
  end
end


path = "Project10/Square"
compile(path)

path = "Project10/ArrayTest"
compile(path)

path = "C:/Users/josep/RubymineProjects/HackToVmProject"
compile(path)