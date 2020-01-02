def isIdentifier(str, alphabet, keyWords)
  digitsOfAlphabet = alphabet[0] # if its a digit
  charsOfAlphabet = alphabet[1] # if a letter

  # first character in name cannot be digit
  if digitsOfAlphabet.include?(str[0])
    return false
  end

  # if keyword includes str
  if keyWords.include?(str)
    return false
  end


  # check is in the alphabet
  for i in 1..str.size-1
    character = str[i]

    unless digitsOfAlphabet.include?(character) or charsOfAlphabet.include?(character)
      return false
    end
  end

  return true
end

def notToLarge(tokens, i)
  return i < tokens.size
end

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
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "class")
    str+= "<class>"+"\n"+getXMLString(tokens, i)
    i+=1
  end

  # terminal className
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  # terminal {
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  #classVarDec*
  resultList = compileClassVarDec(tokens, alphabet, keyWords, classNames, i)
  str+= resultList[0]
  i = resultList[1]

  #subroutineDec*
  resultList = compileSubroutineDec(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  # terminal }
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str+= getXMLString(tokens, i)
  end

  str+= "</class>"+"\n"

  return str
end


def compileClassVarDec(tokens, alphabet, keyWords, classNames, i)
  str = ""

  str += "<ClassVarDec>"+"\n"
  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, "")

  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str += getXMLString(tokens, i)
    i+=1
  end

  str += "</ClassVarDec>"+"\n"
  return [str, i]
end


def compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
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

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    result+= getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, "")
  result += resultList[0]
  i = resultList[1]

  resultList = compileClassVarDecT(tokens, alphabet, keyWords, classNames, i, result)
  return resultList
end


def varNameT(tokens, alphabet, keyWords, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    result+=getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, result)
  return resultList
end


def compileSubroutineDec(tokens, alphabet, keyWords, classNames, i)
  str = ""

  str += "<subroutineDec>"+"\n"
  if notToLarge(tokens, i) and isSubRoutineType(tokens[i][1])
    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and (isType(tokens[i][1], classNames) or isCorrectToken(tokens, i, "void"))
    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterList(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineBody(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  str += "</subroutineDec>"+"\n"
  return [str, i]
end


def compileSubroutineBody(tokens, alphabet, keyWords, classNames, i)
  str = ""

  str += "<subroutineBody>"+"\n"

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileVarDec(tokens, alphabet, keyWords, classNames, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str+= getXMLString(tokens, i)
    i+=1
  end

  str += "</subroutineBody>"+"\n"
  return [str, i]
end


def compileParameterList(tokens, alphabet, keyWords, classNames, i)
  str = ""
  str += "<parameterList>"+"\n"

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    str+=getXMLString(tokens, i)
    i+=1
  end

  resultList = compileParameterListT(tokens, alphabet, keyWords, classNames, i, "")
  str += resultList[0]
  i = resultList[1]

  str+= "</parameterList>"+"\n"
  return [str, i]
end

def compileParameterListT(tokens, alphabet, keyWords, classNames, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    result += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)

    result+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1], alphabet, keyWords)
    result+=getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, result)
  result = resultList[0]
  i = resultList[1]

  return [result, i]
end


def compileVarDec(tokens, alphabet, keyWords, classNames, i)

  str = ""
  str += "<varDec>"+"\n"
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "var")

    str+= getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = varNameT(tokens, alphabet, keyWords, i, "")
  str+= resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+=getXMLString(tokens, i)
    i+=1
  end

  str += "</varDec>"+"\n"
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

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "do")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileSubroutineCall(tokens, alphabet, keyWords, i)
  str+= resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+=getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileLet(tokens, alphabet, keyWords, i)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "let")
    str += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(str, alphabet, keyWords)
    str += getXMLString(tokens, i)
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "[")
    str+= getXMLString(tokens, i)
    i+=1

    resultList = compileExpression(tokens,alphabet,keyWords, i)
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

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileWhile(tokens, alphabet, keyWords, i)

end


def compileReturn(tokens, alphabet, keyWords, i)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "return")
    str+= getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str+= resultList[0]
  i = resultList[1]


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= getXMLString(tokens, i)
    i+=1
  end

  return [str, i]
end


def compileIf(tokens, alphabet, keyWords, i)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "if")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileExpression(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i+=1
  end

  resultList = compileStatements(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    resultList = compileElse(tokens, alphabet, keyWords, i)
    str += resultList[0]
    i = resultList[1]
  end

  return [str, i]
end


def compileElse(tokens, alphabet, keyWords, i)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    str += getXMLString(tokens, i)
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    str += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileStatements(tokens, alphabet, keyWords, i)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
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


  return [str, i]
end


def compileExpressionT(tokens, alphabet, keyWords, i, result)
  if notToLarge(tokens, i) and !isOp(tokens[i][1])
    return [result, i]
  end

  if notToLarge(tokens, i) and isOp(tokens[i][1])
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

  if notToLarge(tokens, i) and isOp(tokens[i][1])
    resultList = compileExpression(tokens, alphabet, keyWords, i)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
      resultList = compileExpressionListT(tokens, alphabet, keyWords, i, "")
      str += resultList[0]
      i = resultList[1]
    end
  end

  return [str, i]
end


def compileExpressionListT(tokens, alphabet, keyWords, i, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    result += getXMLString(tokens, i)
    i += 1
  end

  resultList = compileExpressionListT(tokens, alphabet, keyWords, i, result)
  return resultList
end







#terminal come in 5 types they will all be stored in an array called terminals
dataTypes = %w(int char boolean)
functionTypes = %w(constructor function method)
classDataTypes = %w(field static)
keyConstants = %w(true false null this)
keyWords = %w(class var void  let do if else while return).concat(dataTypes, functionTypes, classDataTypes, keyConstants)
symbols = %w({ } ( ) [ ] . , ; + - * / & | < > = ~)
integerConstants = %w()
stringConstants = %w()
identifier = %w()
terminals = [keyWords, symbols, integerConstants, stringConstants, identifier]


#non terminal come in 3 types they will all be stored in an array called nonTerminals
classNonTerminals = %w(class classVarDec subroutineDec parameterList subroutineBody varDec)
statementNonTerminals = %w(statements whileStatements ifStatements returnStatements letStatements do Statements)
expresionNonTerminals = %w(expression term expressionList)
nonTerminals = [classNonTerminals, statementNonTerminals, expresionNonTerminals]


#the alphabet has 2 types they will all be stored in an array called alphabet
digits = %w(0 1 2 3 4 5 6 7 8 9 )
characters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z _ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
alphabet = [digits, characters]


tokens = []
token = %w(keywords class)
tokens.append(token)
token = %w(identifier foo)
tokens.append(token)
token = %w(symbol {)
tokens.append(token)

token = %w(keywords static)
tokens.append(token)
token = %w(keywords int)
tokens.append(token)
token = %w(identifier a)
tokens.append(token)
token = %w(keywords static)
tokens.append(token)
token = %w(keywords int)
tokens.append(token)
token = %w(identifier b)
tokens.append(token)
token = %w(symbol ;)
tokens.append(token)

token = %w(keywords constructor)
tokens.append(token)
token = %w(keywords void)
tokens.append(token)
token = %w(identifier myFoo)
tokens.append(token)
token = %w{symbol (}
tokens.append(token)

#parameterList
token = %w(keyword char)
tokens.append(token)
token = %w(identifier q)
tokens.append(token)
token = %w(symbol ,)
tokens.append(token)
token = %w(keyword char)
tokens.append(token)
token = %w(identifier w)
tokens.append(token)

token = %w{symbol )}
tokens.append(token)

#subroutine Body
token = %w(symbol {)
tokens.append(token)
token = %w(symbol })

tokens.append(token)
token = %w(symbol })
tokens.append(token)


str = compileClass(tokens, alphabet, keyWords, [])
testXmlFile = File.new("testFile.xml", "w")
testXmlFile.syswrite(str)