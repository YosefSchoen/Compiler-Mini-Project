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



def writeJackFile(lines, outFile)
  tokens = tokenize(lines)
  str = compileClass(tokens, [])
  str = tabXMLTags(str)
  xmLFile = File.new(outFile, "w")


  xmLFile.syswrite(str)
end



def compile(inFile, outFile)
  lines = readJackFile(inFile)
  writeJackFile(lines, outFile)
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

  puts strArr.join("\n")
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



compile("JackTest.txt", "testFile.xml")