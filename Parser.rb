require_relative 'Tokenizer'

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


#checks if the op is one of the binary ops
def isOp(str)
  return (str == "+" or str == "-" or str == "*" or str == "/" or
      str == "&amp;" or str == "|" or str == "&lt;" or str == "&gt;" or str == "=")
end


#checks if the op is one of the unary ops
def isUnaryOP(str)
  return (str == "-" or str == "~")
end


#checks if the keyword is one of the keyword constants
def isKeywordConst(str)
  return (str == "true" or str == "false" or str == "null" or str == "this")
end


#checks the token to see if the value is correct token = [id, value]
def isCorrectToken(tokens, i, str)
  return tokens[i][1] == str
end


#conversts a token = [id, value] -> <id>value</id>
def getXMLString(tokens, i)
  str = "<"+tokens[i][0]+">"+tokens[i][1]+"</"+tokens[i][0]+">"+"\n"
  return str
end


def writeTokens(tokens)
  str = "<tokens>\n"

  for i in 0..tokens.size-1
    str += getXMLString(tokens, i)
  end

  str += "</tokens>\n"
  return str
end


#the first function called compiles the file's class
def compileClass(tokens, classNames)

  i = 0
  str = "<file>\n"
  str += writeTokens(tokens)

  #terminal class
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "class")
    str+= "<class>"+"\n"+getXMLString(tokens, i)
    i+=1
  end

  # terminal className, check if legal!
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    str+= getXMLString(tokens, i)
    i+=1
  end

  # terminal {
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  #classVarDec*
  resultList = compileClassVarDec(tokens, classNames, i)
  str+= resultList[0]
  i = resultList[1]

  #subroutineDec*
  resultList = compileSubroutineDec(tokens, classNames, i)
  str += resultList[0]
  i = resultList[1]

  # terminal }
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str+= getXMLString(tokens, i)
  end

  str+= "</class>"+"\n"+"</file>\n"

  return str
end


def compileClassVarDec(tokens, classNames, i)
  str = ""
  str += "<ClassVarDec>"+"\n"

  resultList = compileClassVarDecT(tokens, classNames, i, "")
  str += resultList[0]
  i = resultList[1]

  str += "</ClassVarDec>"+"\n"
  return [str, i]
end


def compileClassVarDecT(tokens, classNames, i, result)
  # if the next token is not a variable, then it wont start with static/field
  if notToLarge(tokens, i) and !(isCorrectToken(tokens, i, "static") or isCorrectToken(tokens, i, "field"))
    return [result, i]
  end

  if notToLarge(tokens, i) and (isCorrectToken(tokens, i, "static") or isCorrectToken(tokens, i, "field"))
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    result+= getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, i, "")
  result += resultList[0]
  i = resultList[1]


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    result += getXMLString(tokens, i)
    i += 1
  end

  # recursively call
  resultList = compileClassVarDecT(tokens, classNames, i, result)
  return resultList
end


def varNameT(tokens, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    result+=getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, i, result)
  return resultList
end


def compileSubroutineDec(tokens, classNames, i)
  str = ""
  # if constructor, method, function
  str += "<subroutineDec>"+"\n"

  resultList = compileSubroutineDecT(tokens, classNames, i, "")
  str += resultList[0]
  i = resultList[1]

  str += "</subroutineDec>"+"\n"
  return [str, i]
end


def compileSubroutineDecT(tokens, classNames, i, result)
  if notToLarge(tokens, i) and !isSubRoutineType(tokens[i][1])
    return [result, i]
  end

  if notToLarge(tokens, i) and isSubRoutineType(tokens[i][1])
      result+= getXMLString(tokens, i)
      i+=1
  end
  # type of function/method
  if notToLarge(tokens, i) and (isType(tokens[i][1], classNames) or isCorrectToken(tokens, i, "void"))
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    result+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterList(tokens, classNames, i)
  result += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    result+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineBody(tokens, classNames, i)
  result += resultList[0]
  i = resultList[1]

  resultList = compileSubroutineDecT(tokens, classNames, i, result)
  return resultList
end


def compileSubroutineBody(tokens, classNames, i)
  str = ""

  str += "<subroutineBody>"+"\n"
  # if
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileVarDec(tokens, classNames, i)
  str += resultList[0]
  i = resultList[1]

  resultList = compileStatements(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str+= getXMLString(tokens, i)
    i+=1
  end

  str += "</subroutineBody>"+"\n"
  return [str, i]
end


def compileParameterList(tokens, classNames, i)
  str = ""
  str += "<parameterList>"+"\n"

  if notToLarge(tokens, i) and !isType(tokens[i][1], classNames)
    str += "</parameterList>"+"\n"
    return [str, i]
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    str+=getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterListT(tokens, classNames, i, "")
  str += resultList[0]
  i = resultList[1]

  str+= "</parameterList>"+"\n"
  return [str, i]
end


def compileParameterListT(tokens, classNames, i, result)

  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens,i) and isCorrectToken(tokens, i, ",")
    result += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    result += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    result += getXMLString(tokens, i)
    i += 1
  end


  resultList = compileParameterListT(tokens, classNames, i, result)
  return resultList
end


def compileVarDec(tokens, classNames, i)

  str = ""
  str += "<varDec>"+"\n"

  resultList = compileVarDecT(tokens, classNames, i, "")
  str += resultList[0]
  i = resultList[1]

  str += "</varDec>"+"\n"
  return [str, i]
end


def compileVarDecT(tokens, classNames, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, "var")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "var")
    result += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    result += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = varNameT(tokens, i, "")
  result += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    result+=getXMLString(tokens, i)
    i+=1
  end

  resultList = compileVarDecT(tokens, classNames, i, result)
  return resultList
end


def compileStatements(tokens, i)
  str = ""
  str += "<statements>"+"\n"

  resultList = compileStatementT(tokens, i, "")
  str += resultList[0]
  i = resultList[1]

  str += "</statements>"+"\n"
  return [str, i]
end


def compileStatementT(tokens, i, result)
  case tokens[i][1]
  when "let"
    resultList = compileLet(tokens, i)
    result += resultList[0]
    i = resultList[1]

  when "if"
    resultList = compileIf(tokens, i)
    result += resultList[0]
    i = resultList[1]

  when "while"
    resultList = compileWhile(tokens, i)
    result += resultList[0]
    i = resultList[1]

  when "do"
    resultList = compileDo(tokens, i)
    result += resultList[0]
    i = resultList[1]

  when "return"
    resultList = compileReturn(tokens, i)
    result += resultList[0]
    i = resultList[1]

  else
    return [result, i]
  end

  resultList = compileStatementT(tokens, i, result)
  return resultList
end


def compileSubStatements(tokens, i)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileStatements(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str += getXMLString(tokens, i)
    i += 1
  end

  return [str, i]
end


def compileLet(tokens, i)
  str = ""
  str += "<letStatement>\n"

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "let")
    str += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    str += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "[")
    str+= getXMLString(tokens, i)
    i+=1

    resultList = compileExpression(tokens, i)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
      str+= getXMLString(tokens, i)
      i+=1
    end
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "=")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  str += "</letStatement>\n"
  return [str, i]
end


def compileIf(tokens, i)
  str = ""
  str += "<ifStatement>\n"

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "if")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileStatements(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    resultList = compileElse(tokens, i)
    str += resultList[0]
    i = resultList[1]
  end

  str += "</ifStatement>\n"
  return [str, i]
end


def compileElse(tokens, i)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    str += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileSubStatements(tokens, i)
  str += resultList[0]
  i = resultList[1]
  return [str, i]
end


def compileWhile(tokens, i)
  str = ""
  str += "<whileStatement>\n"

  # check for while
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "while")
    str += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str+= getXMLString(tokens, i)
    i+=1

    resultList = compileExpression(tokens, i)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      str+= getXMLString(tokens, i)
      i+=1
    end
  end

  resultList = compileSubStatements(tokens, i)

  str += resultList[0]
  i = resultList[1]

  str += "</whileStatement>\n"
  return [str, i]
end


def compileDo(tokens, i)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "do")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineCall(tokens, i)
  str+= resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+=getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileReturn(tokens, i)
  str = ""
  str += "<returnStatement>\n"
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "return")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, i)
  str+= resultList[0]
  i = resultList[1]


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  str += "</returnStatement>\n"
  return [str, i]
end


def compileExpression(tokens, i)
  str = ""

  resultList = compileTerm(tokens, i)
  str += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT(tokens, i, "")
  str += resultList[0]
  i = resultList[1]


  return [str, i]
end


def compileExpressionT(tokens, i, result)
  if notToLarge(tokens, i) and !isOp(tokens[i][1])
    return [result, i]
  end

  if notToLarge(tokens, i) and isOp(tokens[i][1])
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileTerm(tokens, i)
  result += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT(tokens, i, result)
  return resultList
end


#need to write this function
def compileTerm(tokens, i)
  str = ""
  #int/keyword/string Constant
  if notToLarge(tokens, i) and (isIntConstant(tokens[i][1]) or isStringConstant(tokens[i][1]) or
      isKeywordConst(tokens[i][1]))
    str += getXMLString(tokens, i)
    i += 1

    #the else is for var name and  subroutine  need to solve this
  elsif isIdentifier(tokens[i][1])
    if notToLarge(tokens, i+1) and isCorrectToken(tokens, i+1, "[")
      str += getXMLString(tokens, i)
      i += 1
      str += getXMLString(tokens, i)
      i += 1

    elsif notToLarge(tokens, i+1) and (isCorrectToken(tokens, i+1, "(") or isCorrectToken(tokens, i+1, "."))
      resultList = compileSubroutineCall(tokens, i)
      str = resultList[0]
      i = resultList[1]
    else
      str += getXMLString(tokens, i)
      i += 1
    end
  end

  # ( expression )
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str += getXMLString(tokens, i)
    i += 1

    resultList = compileExpression(tokens, i)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      str += getXMLString(tokens, i)
      i += 1
    end
  end

  # unary Operators
  if notToLarge(tokens, i) and isUnaryOP(tokens[i][1])
    str += getXMLString(tokens, i)
    i += 1

    resultList = compileTerm(tokens, i)
    str += resultList[0]
    i = resultList[1]

  end
  return [str, i]
end


#need to write this function
def compileSubroutineCall(tokens, i)
  str = ""
  flag = true
  # if flag is false then it is not the . call
  if notToLarge(tokens, i) and isCorrectToken(tokens, i+1, "(")
    flag = false
  end
  # flag stays false
  # # if flag is false,
  if flag
    if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
      str += getXMLString(tokens, i)
      i += 1
    end
    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ".")
      str += getXMLString(tokens, i)
      i += 1
    end
  end
  # now that we took care of this . call
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileExpressionList(tokens, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    str += getXMLString(tokens, i)
    i += 1
  end
  return [str, i]
end


def compileExpressionList(tokens, i)
  str = ""

  if notToLarge(tokens, i) and isExpression(tokens, i)
    resultList = compileExpression(tokens, i)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
      resultList = compileExpressionListT(tokens, i, "")
      str += resultList[0]
      i = resultList[1]
    end
  end

  return [str, i]
end


def compileExpressionListT(tokens, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileExpression(tokens, i)
  result += resultList[0]
  i = resultList[1]

  resultList = compileExpressionListT(tokens, i, result)
  return resultList
end


def isExpression(tokens, i)
  str = tokens[i][1]

  return (notToLarge(tokens, i) and (isIntConstant(str) or isStringConstant(str) or
      isKeywordConst(str) or isIdentifier(str) or isUnaryOP(str)))
end