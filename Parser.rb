def isType(str, classNames)
  return (str == "int" or str == "char" or str == "boolean" or classNames.include?(str))
end


def isSubRoutineType(str)
  return (str == "constructor" or str == "function" or str == "method")
end


def isOp(str)
  return (str == "+" or str == "-" or str == "*" or str == "/" or
      str == "&" or str == "|" or str == "<" or str == ">" or str == "=")
end


def isUnaryOP(str)
  return (str == "-" or str == "~")
end


def isKeywordConst(str)
  return (str == "true" or str == "false" or str == "null" or str == "this")
end


def isCorrectToken(tokens, i, str)
  return tokens[i][1] == str
end


def getXMLString(tokens, i)
  str = "<"+tokens[i][0]+">"+tokens[i][1]+"</"+tokens[i][0]+">"+"\n"
  return str
end





def compileClass(tokens, alphabet, keyWords, classNames)
  i = 0
  str = ""

  #terminal class
  if isCorrectToken(tokens, i, "class")
    str+= "<class>"+"\n"
    i+=1
  end

  # terminal className
  if isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  # terminal {
  if isCorrectToken(tokens, i, "{")
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
  if isCorrectToken(tokens, i, "}")
    str+= getXMLString(tokens, i)
  end

  str+= "</class>"+"\n"

  return str
end


def compileClassVarDec(tokens, alphabet, keyWords, classNames, i)
  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, "")
  str = resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
  if !isCorrectToken(tokens, i, "static") or !isCorrectToken(tokens, i, "field")
    return [result, i]
  end

  if isCorrectToken(tokens, i, "static") or isCorrectToken(tokens, i, "field")
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

  resultList = varNameT(tokens, alphabet, keyWords, i, result)
  result+=resultList[0]
  i = resultList[1]


  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
  return resultList
end


def varNameT(tokens, alphabet, keyWords, i, result)
  if !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if isCorrectToken(tokens, i, ",")
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

  if isType(tokens[i][1], classNames) or isCorrectToken(tokens, i, "void")
    str+= getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  if isCorrectToken(tokens, i, "(")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterList(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, ")")
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

  if isCorrectToken(tokens, i, "{")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileVarDec(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, "}")
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

  resultList = varNameT(tokens, alphabet, keyWords, i, result)
  result += resultList[0]
  i = resultList[1]

  return [result, i]
end


def compileVarDec(tokens, alphabet, keyWords, classNames, i)

  str = ""
  if isCorrectToken(tokens, i, "var")
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

  if isCorrectToken(tokens, i, ";")
    str+=getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end

def compileStatements(tokens, alphabet, keyWords, i)
  str = ""
  case tokens[i][0]
  when "let"
    resultList = compileLet(tokens, alphabet, keyWords, i)
    str+= resultList[0]
    i = resultList[1]

  when "if"
    resultList = compileIf(tokens, alphabet, keyWords, i)
    str+= resultList[0]
    i = resultList[1]

  when "while"
    resultList = compileWhile(tokens, alphabet, keyWords, i)
    str+= resultList[0]
    i = resultList[1]

  when "do"
    resultList = compileDo(tokens, alphabet, keyWords, i)
    str+= resultList[0]
    i = resultList[1]

  when "return"
    resultList = compileReturn(token, alphabet, keyWords, i)
    str+= resultList[0]
    i = resultList[1]

  else

  end

  return [str, i]
end


def compileDo(tokens, alphabet, keyWords, i)
  str = ""

  if isCorrectToken(tokens, i, "do")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineCall(tokens, alphabet, keyWords, i)
  str+= resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, ";")
    str+=getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileLet(tokens, alphabet, keyWords, i)
  str = ""
  if isCorrectToken(tokens, i, "let")
    str += getXMLString(tokens, i)
    i+=1
  end

  if isIdentifier(str, alphabet, keyWords)
    str += getXMLString(tokens, i)
    i+=1
  end

  if isCorrectToken(tokens, i, "[")
    str+= getXMLString(tokens, i)
    i+=1

    resultList = compileExpression(tokens,alphabet,keyWords, i)
    str += resultList[0]
    i = resultList[1]

    if isCorrectToken(tokens, i, "]")
      str+= getXMLString(tokens, i)
      i+=1
    end
  end

  if isCorrectToken(tokens, i, "=")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileWhile(tokens, alphabet, keyWords, i)

end


def compileReturn(tokens, alphabet, keyWords, i)
  str = ""
  if isCorrectToken(tokens, i, "return")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str+= resultList[0]
  i = resultList[1]


  if isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileIf(tokens, alphabet, keyWords, i)
  str = ""
  if isCorrectToken(tokens, i, "if")
    str += getXMLString(tokens, i)
    i += 1
  end

  if isCorrectToken(tokens, i, "(")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, "]")
    str += getXMLString(tokens, i)
    i += 1
  end

  if isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileStatements(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, "}")
    str += getXMLString(tokens, i)
    i += 1
  end

  if isCorrectToken(tokens, i, "else")
    resultList = compileElse(tokens, alphabet, keyWords, i)
    str += resultList[0]
    i = resultList[1]
  end

  return [str, i]
end


def compileElse(tokens, alphabet, keyWords, i)
  str = ""

  if isCorrectToken(tokens, i, "else")
    str += getXMLString(tokens, i)
    i += 1
  end

  if isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileStatements(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if isCorrectToken(tokens, i, "}")
    str += getXMLString(tokens, i)
    i += 1
  end

  return [str, i]
end


def compileExpression(tokens, alphabet, keyWords, i)
  str = ""

  resultList = compileTerm(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT(tokens, alphabet, keyWords, i, "")
  str+= resultList[0]
  i = resultList[1]


end

def compileExpressionT(tokens, alphabet, keyWords, i, result)
  if !isOp(tokens[i][1])
    return [result, i]
  end

  if isOp(tokens[i][1])
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileTerm(tokens, alphabet, keyWords, i)
  result += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT(tokens, alphabet, keyWords, i, result)
  return resultList
end

#need to write this function
def compileTerm(tokens, alphabet, keyWords, i)
  str = ""

  return [str, i]
end


#need to write this function
def compileSubroutineCall(tokens, alphabet, keyWords, i)
  str = ""

  return [str, i]
end


def compileExpressionList(tokens, alphabet, keyWords, i)
  str = ""

  if isOp(tokens[i][1])
    resultList = compileExpression(tokens, alphabet, keyWords, i)
    str += resultList[0]
    i = resultList[1]

    if isCorrectToken(tokens, i, ",")
      resultList = compileExpressionListT(tokens, alphabet, keyWords, i, "")
      str += resultList[0]
      i = resultList[1]
    end
  end

  return [str, i]
end


def compileExpressionListT(tokens, alphabet, keyWords, i, result)
  if !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if isCorrectToken(tokens, i, ",")
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileExpressionListT(tokens, alphabet, keyWords, i, result)
  return resultList
end