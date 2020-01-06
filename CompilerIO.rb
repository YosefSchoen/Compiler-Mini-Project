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
  tokens = tokenize(lines, getTerminals, getAlphabet)
  str = compileClass(tokens, getAlphabet, getKeywords, [])
  str = tabXMLTags(str)
  xmLFile = File.new(outFile, "w")


  xmLFile.syswrite(str)
end



def compile(inFile, outFile)
  lines = readJackFile(inFile)
  writeFile(lines, outFile)
end

#testing
tokens = tokenize("JackTest.txt", getTerminals, getAlphabet)
puts tokens
str = compileClass(tokens, getAlphabet, getKeywords, [])
testXmlFile = File.new("testFile.xml", "w")
testXmlFile.syswrite(str)


def tabXMLTags(file)

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



def getEndTag(str)
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



