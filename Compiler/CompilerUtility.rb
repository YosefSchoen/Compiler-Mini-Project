#function to get all the class names to use later for the compiler
def getClassNames(filesWithLines)
  classNames = %w(Math String Array Output Screen Keyboard Memory Sys)
  for i in 0..filesWithLines.size-1
    lines = filesWithLines[i][1]
    lines = getLines(lines)
    tokens = tokenize(lines)
    classNames.push(tokens[1][1])
  end

  return classNames
end

def getFunctionNameTypesFiles(filesWithLines)
  voidStr = "void"

  functionInfo =[["String.setCharAt", voidStr], ["String.eraseLastChar", voidStr], ["String.setInt", voidStr],
   ["Array.dispose", voidStr], ["Output.moveCursor", voidStr], ["Output.printChar", voidStr],
   ["Output.printString", voidStr], ["Output.printInt", voidStr], ["Output.println", voidStr],
   ["Output.backSpace", voidStr], ["Screen.clearScreen", voidStr], ["Screen.setColor", voidStr],
   ["Screen.drawPixel", voidStr], ["Screen.drawLine", voidStr], ["Screen.drawRectangle", voidStr],
   ["Screen.drawCircle", voidStr], ["Memory.poke", voidStr], ["Memory.deAlloc", voidStr], ["Sys.halt", voidStr],
   ["Sys.error", voidStr], ["Sys.wait", voidStr]]

  for i in 0..filesWithLines.size-1
    lines = filesWithLines[i][1]
    lines = getLines(lines)
    tokens = tokenize(lines)
    functionInfo.concat(getFunctionNameTypes(tokens))
  end

  return functionInfo
end

def getFunctionNameTypes(tokens)
  functionInfo = []
  for i in 0..tokens.size-1
    if tokens[i][1] == "function" or tokens[i][1] == "method"
      i += 1

      if notToLarge(tokens, i) and tokens[i][1] == "void"
        type = "void"
        i += 1

        if notToLarge(tokens, i)
          name = tokens[1][1]+"."+tokens[i][1]
        end
        functionInfo.append([name, type])
      end
    end

  end

  return functionInfo
end
#remove comments from a jack file
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

    someLines = lines[i]
    newLine = []
    inString = false

    for j in 0..someLines.size-1

      line = someLines[j]
      newStr = ""

      for k in 0..line.size-1
        char = line[k]
        if getSymbols.include?(char) and !inString # If char is symbol
          newStr = newStr + " " + char + " " # Add whitespace around symbol
        elsif char == "\""
          inString = !inString
          newStr += char
        else
          newStr += char
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



#function to check if the token currently being checked is not out of range
def notToLarge(tokens, i)
  return i < tokens.size
end


#check if the type is one of the built in types or a previous class name
def isType(str, compilerInfo)
  return (str == "int" or str == "char" or str == "boolean" or compilerInfo[0].include?(str))
end


#check if the subroutine is one of the three types
def isSubRoutineType(str)
  return (str == "constructor" or str == "function" or str == "method")
end


def isKeywordConst(str)
  return (str == "true" or str == "false" or str == "null" or str == "this")
end

def isOp(str)
  return (str == "+" or str == "-" or str == "*" or str == "/" or str == "&amp;" or str == "|" or str == "&lt;" or str == "&gt;" or str == "=")
end

def isUnaryOP(str)
  return (str == "-" or str == "~")
end

#checks the token to see if the value is correct token = [id, value]
def isCorrectToken(tokens, i, str)
  return tokens[i][1] == str
end


#converts a token = [id, value] -> <id>value</id>
def getXMLString(tokens, i)
  token = tokens[i]
  str = "<"+token[0]+">"+" "+token[1]+" "+"</"+token[0]+">"+"\n"
  return str
end