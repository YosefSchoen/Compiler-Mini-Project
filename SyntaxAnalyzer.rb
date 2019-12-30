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


#function to check if a character is a number
def isIntConstant(i)
  if i.class.equal?(Integer)
    return (i >= 0 and i < 2**15)
  end

  return false
end

#function to check if a character is a string
def isStringConstant(str)
  if str.class.equal?(String)
    return (str[0] == '"' and str[str.to_s.size - 1] == '"')

  end

  return false
end


##function to check if a string is a legal id
def isIdentifier(str, alphabet, keyWords)
  digitsOfAlphabet = alphabet[0]
  charsOfAlphabet = alphabet[1]


  if digitsOfAlphabet.include?(str[0])
    return false
  end

  for i in 1..str.size-1
    character = str[i]

    unless digitsOfAlphabet.include?(character) or charsOfAlphabet.include?(character)
      return false
    end
  end

  if keyWords.include?(str)
    return false
  end

  return true
end


def classProduction(cmds, alphabet, keywords, otherClassesNames)
  str = ""
  if cmds[0] == "class" and cmds[2] == "{" and cmds[5] == "}"
    str = str +
        "<class>"+"\n"+
        "<keyword>" + cmds[0] + "</keyword>"+"\n"+
        className(cmds[1],  alphabet, keywords) +
        "<symbol>" + cmds[2] + "</symbol>"+"\n"+
        classVarDec(cmds[3], alphabet, keywords, otherClassesNames, "") +
        subRoutineDec(cmds[4], alphabet, keywords, otherClassesNames) +
        "<symbol>" + cmds[5] + "</symbol>"+"\n"+
        "</class>"+"\n"
  end

  return str
end


def isType(str, otherClassesNames)
  return (str == "int" or str =="char" or str == "boolean" or otherClassesNames.include?(str))
end

def classVarDec(cmds, alphabet, keywords, otherClassesNames, str)

  if (cmds[0] == "static" or cmds[0] == "field") and cmds[4] == ";"
    str = str +
        "<classVarDec>"+"\n"+
        varType(cmds[1], otherClassesNames) +
        varName(cmds[2], alphabet, keywords) +
        "<symbol>" + cmds[4] + "</symbol>"+"\n"+
        "</classVarDec>"+"\n"
  end

  return str
end


def varType(str, otherClassesNames)
  newStr = ""

  if isType(str, otherClassesNames)
    newStr = "<keyword>" + str + "</keyword>"+"\n"
  end

  return newStr
end


def subRoutineDec(cmds, alphabet, keywords, otherClassesNames)
  str = ""
  if cmds[0] == "constructor" or "function" or "method"
    if cmds[1] == "void" or isType(cmds[1], otherClassesNames)
      if cmds[3] == "(" and cmds[5] == ")"
      str =
          "<subRoutineDec>"+"\n"+
          "<keyword>" + cmds[0] + "</keyword>"+"\n"+
          "<keyword>" + cmds[1] + "</keyword>"+"\n"+
          subroutineName(cmds[2], alphabet, keywords) +
          "<symbol>"+cmds[3]+"</symbol>"+"\n"+
          parameterList(cmds[4], alphabet, keywords, otherClassesNames) +
          "<symbol>"+cmds[5]+"</symbol>"+"\n"+
          subroutineBody(cmds[6], alphabet, keywords, otherClassesNames)+
          "</subRoutineDec>"+"\n"
      end
    end
  end

  return str
end


def parameterList(cmds, alphabet, keywords, otherClassesNames)
  str =
      "<parameterList>"+"\n"+
      varType(cmds[0], otherClassesNames) +
      varName(cmds[1], alphabet, keywords) +
      "</parameterList>"+"\n"
  return str
end


def subroutineBody(cmds, alphabet, keywords, otherClassesNames)
  str = ""
  if cmds[0] == "{" and cmds[3] == "}"
    str =
        "<subroutineBody>"+"\n"+
        "<symbol>"+cmds[0]+"</symbol>"+"\n"+
        varDec(cmds[1], alphabet, keywords, otherClassesNames)
        statements(cmds[2]) +
        "<symbol>"+cmds[3]+"</symbol>"+"\n"+
        "<subroutineBody>"+"\n"
  end

  return str
end


def varDec(cmds, alphabet, keywords, otherClassesNames)
  str = ""

  if cmds[0] == "var" and cmds[3] == ";"
    str =
        "<varDec>"+"\n"+
        "<keyword>" + cmds[0] + "</keyword>"+"\n"+
        varType(cmds[1], otherClassesNames) +
        varName(cmds[2], alphabet, keywords)
        "<symbol>"+cmds[3]+"</symbol>"+"\n"+
        "</varDec>"+"\n"
  end

  return str
end


def className(str,  alphabet, keywords)
  if isIdentifier(str, alphabet, keywords)
    return str
  end
end


def subroutineName(str, alphabet, keywords)
  if isIdentifier(str, alphabet, keywords)
    return str
  end
end


def varName(str, alphabet, keywords)
  if isIdentifier(str, alphabet, keywords)
    return str
  end
end

def statements(stmt)
  str = "<statements>"+stmt+"</statements>"+"\n"
  return str
end

def statement(stmt)
  if stmt == ""

  end
end

def letStatement(stmt)

end

def ifStatement(stmt)

end

def whileStatement(stmt)

end

def doStatement(stmt)

end


def ReturnStatement(stmt)

end


def expression(cmds)

end


def term(cmds)

end


def subroutineCall(cmds)

end


def expressionList(cmds)

end


def op(op, ops)
  str = ""
  if ops.include?(op)
    str = "<symbol>"+op+"</symbol>"+"\n"
  end

  return str
end


def unaryOp(op, ops)
  str = ""
  if ops.include?(op)
    str = "<symbol>"+op+"</symbol>"+"\n"
  end

  return str
end

def KeywordConstant(keyConst, keyConstants)
  str = ""
  if keyConstants.include?(keyConst)
    str = "<keyword>"+keyConst+"</keyword>"+"\n"
  end

  return str
end
