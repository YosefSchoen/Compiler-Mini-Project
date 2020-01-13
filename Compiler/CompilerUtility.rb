#function to get all the class names to use later for the compiler
def getClassNames(filesWithLines)
  classNames = []
  for i in 0..filesWithLines.size-1
    lines = filesWithLines[i][1]
    lines = getLines(lines)
    tokens = tokenize(lines)
    classNames.push(tokens[1][1])
  end

  return classNames
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
def isType(str, classNames)
  return (str == "int" or str == "char" or str == "boolean" or classNames.include?(str))
end


#check if the subroutine is one of the three types
def isSubRoutineType(str)
  return (str == "constructor" or str == "function" or str == "method")
end


def isKeywordConst(str)
  return (str == "true" or str == "false" or str == "null" or str == "this")
end

def isOp(str)
  return (str == "+" or str == "-" or str == "*" or str == "/" or str == "amp&;" or str == "|" or str == "&lt;" or str == "&gt;" or str == "=")
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