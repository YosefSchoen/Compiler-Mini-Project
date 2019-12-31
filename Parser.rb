def isType(str, classNames)
  return (str == "int" or str == "char" or str == "boolean" or classNames.include?(str))
end


def isSubRoutineType(str)
  return (str == "constructor" or str == "function" or str == "method")
end


def getXMLString(tokens, i)
  str = "<"+tokens[i][0]+">"+tokens[i+1][1]+"</"+tokens[i][0]+">"+"\n"
  return str
end


def compileClass(tokens, alphabet, keyWords, classNames)
  i = 0
  str = ""

  #terminal class
  if tokens[i][1] == "class"
    str+= "<class>"+"\n"
    i+=1
  end

  # terminal className
  if isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  # terminal {
  if tokens[i][1] == "{"
    getXMLString(tokens, i)
    i+=1
  end

  #classVarDec*
  resultList = compileClassVarDec(tokens, alphabet, keyWords, classNames, i)
  str+= resultList[0]
  i = resultList[1]

  #subroutineDec*
  resultList = compileSubroutineDec(tokens, alphabet, keyWords, classNames, i)
  str+= resultList[0]
  i = resultList[1]

  # terminal }
  if tokens[i][1] == "}"
    str+= getXMLString(tokens, i)
  end

  return str
end


def compileClassVarDec(tokens, alphabet, keyWords, classNames, i)
  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, "")
  str = resultList[0]
  i = resultList[1]

  if tokens[i][1] == ";"
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
  if tokens[i][1] != "static" or tokens[i][1] != "field"
    return [result, i]
  end

  if tokens[i][1] == "static" or tokens[i][1] == "field"
    result+= getXMLString(tokens, i)
    i+=1
  end

  if isType(tokens[i][1], classNames)
    result+= getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(tokens[i][1], alphabet, keyWords)
    result+= getXMLString(tokens, i)
    i+=1
  end

  resultList=varNameT(tokens, alphabet, keyWords, i, result)
  result+=resultList[0]
  i = resultList[1]


  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
  return resultList
end

def varNameT(tokens, alphabet, keyWords, i, result)
  if tokens[i][1] != ","
    return [result, i]
  end

  if tokens[i][1] == ","
    result+= getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(tokens[i][1], alphabet, keyWords)
    result+=getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, result)
  return resultList
end


def compileSubroutineDec(tokens, alphabet, keyWords, classNames, i)
  str = ""
  if isSubRoutineType(tokens[i][1])
    str+= getXMLString(tokens, i)
    i+=1
  end

  if isType(tokens[i][1], classNames) or tokens[i][1] == "void"
    str+= getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  if tokens[i][1] == "("
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterList(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if tokens[i][1] == ")"
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineBody(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i += resultList[1]

  return [str, i]
end


def compileSubroutineBody(tokens, alphabet, keyWords, classNames, i)
  str = ""

  if tokens[i][0] == "{"
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileVarDec(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if tokens[i][0] == "}"
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileParameterList(tokens, alphabet, keyWords, classNames, i)
  resultList = compileParameterListT(tokens, alphabet, keyWords, classNames, i, "")
  return resultList
end

def compileParameterListT(tokens, alphabet, keyWords, classNames, i, result)
  unless isType(tokens[i][0], classNames)
    return [result, i]
  end

  if isType(tokens[i][0], classNames)
    result+= getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(tokens[i][1], alphabet, keyWords)
    result+=getXMLString(tokens, i)
    i+=1
  end

  result+= varNameT(tokens, alphabet, keyWords, i, result)

  return [result, i]
end


def compileVarDec(tokens, alphabet, keyWords, classNames, i)

  str = ""
  if tokens[i][1] == "var"
    str+= getXMLString(tokens, i)
    i+=1
  end

  if isType(tokens[i][1], classNames)
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, "")
  str+= resultList[0]
  i = resultList[1]

  if tokens[i][1] == ";"
    str+=getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end

def compileStatements(tokens, alphabet, keyWords, i)

end


def compileDo(tokens, alphabet, keyWords, i)

end


def compileLet(tokens, alphabet, keyWords, i)

end


def compileWhile(tokens, alphabet, keyWords, i)

end


def compileReturn(tokens, alphabet, keyWords, i)

end


def compileIf(tokens, alphabet, keyWords, i)

end


def compileExpression(tokens, alphabet, keyWords, i)

end


def compileTerm(tokens, alphabet, keyWords, i)

end


def compileExpressionList(tokens, alphabet, keyWords, i)

end