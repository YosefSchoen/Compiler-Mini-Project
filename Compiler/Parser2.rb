require_relative 'CompilerUtility'
require_relative 'Tokenizer'
require_relative 'SymbolsTable'
require_relative 'vmWriter'
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

#the first function called compiles the file's class
def compileClass(tokens, classNames)
  str = ""
  table = SymbolsTable.new([])
  i = 0
  #terminal class
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "class")
    i+=1
  end

  # terminal className, check if legal!
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    this = tokens[i][1]
    classNames.push(tokens[i][1])
    i+=1
  end

  # terminal {
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  #classVarDec*
  resultList = compileClassVarDec(tokens, classNames, i, table)
  table = resultList[0]
  i = resultList[1]

  #subroutineDec*
  resultList = compileSubroutineDec(tokens, classNames, i, this, table)
  str += resultList[0]
  methodsTableList = resultList[1]
  i = resultList[2]

  # terminal }
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
  end

  puts str
  return [table, methodsTableList]
end


def compileClassVarDec(tokens, classNames, i, table)
  fieldIndex = 0
  staticIndex = 0
  resultList = compileClassVarDecT(tokens, classNames, i, table, fieldIndex, staticIndex)
  i = resultList[1]


  return [table, i]
end


def compileClassVarDecT(tokens, classNames, i, table, fieldIndex, staticIndex)
  # if the next token is not a variable, then it wont start with static/field
  if notToLarge(tokens, i) and !(isCorrectToken(tokens, i, "static") or isCorrectToken(tokens, i, "field"))
    return [table, i]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "static")
    index = staticIndex
    staticIndex += 1

    kind = tokens[i][1]
    i+=1

  elsif notToLarge(tokens, i) and isCorrectToken(tokens, i, "field")
    index = fieldIndex
    fieldIndex += 1

    kind = tokens[i][1]
    i+=1
  end

  if notToLarge(tokens, i) and (isType(tokens[i][1], classNames) or isIdentifier(tokens[i][1]))
    type = tokens[i][1]
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[i][1]
    i+=1
  end

  symbol = SymbolDef.new(name, type, kind, index.to_s)
  table.symbols.append(symbol)
  index += 1

  resultList = varNameT(tokens, i, table, index, kind, type)
  i = resultList[1]
  index = resultList[2]

  if kind == "field"
    fieldIndex = index

  elsif kind == "static"
    staticIndex = index
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i += 1
  end

  # recursively call
  resultList = compileClassVarDecT(tokens, classNames, i, table, fieldIndex, staticIndex)
  return resultList
end


def varNameT(tokens, i, table, index, kind, type)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [table, i, index]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[i][1]
    i+=1
  end

  symbol = SymbolDef.new(name, type, kind, index.to_s)
  table.symbols.append(symbol)
  index += 1

  resultList = varNameT(tokens, i, table, index, kind, type)
  return resultList
end


def compileSubroutineDec(tokens, classNames, i, this, classTable)
  # if constructor, method, function

  resultList = compileSubroutineDecT(tokens, classNames, i, this, classTable, [], "")
  return resultList
end


def compileSubroutineDecT(tokens, classNames, i, this, classTable, tableList, result)
  index = 0
  name = ""
  table = SymbolsTable.new([], classTable.symbols)

  if notToLarge(tokens, i) and !isSubRoutineType(tokens[i][1])
    return [result, tableList, i]
  end


  if notToLarge(tokens, i) and isSubRoutineType(tokens[i][1])
    type = tokens[i][1]
    i += 1
  end

  if notToLarge(tokens, i) and (isType(tokens[i][1], classNames) or isCorrectToken(tokens, i, "void"))
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[1][1]+"."+tokens[i][1]
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i+=1
  end

  if type == "method"
    symbol = SymbolDef.new("this", this, "argument", index.to_s)
    table.symbols.append(symbol)
    index += 1
  end
  resultList = compileParameterList(tokens, classNames, i, table, index)
  table = resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    i+=1
  end

  resultList = compileSubroutineBody(tokens, classNames, i, table)

  nLocals = resultList[3]
  result += writeFunction(name, nLocals.to_s)

  if type == "method"
    result+= writePush(symbol.kind, symbol.number)
    result += writePop("pointer", "0")
  end

  result += resultList[0]
  table = resultList[1]
  i = resultList[2]
  tableList.append(table)
  resultList = compileSubroutineDecT(tokens, classNames, i, this, classTable, tableList, result)
  return resultList
end


def compileParameterList(tokens, classNames, i, table, index)

  if notToLarge(tokens, i) and !isType(tokens[i][1], classNames)
    return [table, i]
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    type = tokens[i][1]
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[i][1]
    i+=1
  end

  symbol = SymbolDef.new(name, type, "argument", index.to_s)
  index += 1
  table.symbols.append(symbol)

  resultList = compileParameterListT(tokens, classNames, i, table, index)
  table = resultList[0]
  i = resultList[1]


  return [table, i]
end


def compileParameterListT(tokens, classNames, i, table, index)

  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [table, i]
  end

  if notToLarge(tokens,i) and isCorrectToken(tokens, i, ",")
    i += 1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], classNames)
    type = tokens[i][1]
    i += 1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[i][1]
    i += 1
  end

  symbol = SymbolDef.new(name, type, "argument", index.to_s)
  index += 1
  table.symbols.append(symbol)

  resultList = compileParameterListT(tokens, classNames, i, table, index)
  return resultList
end


def compileSubroutineBody(tokens, classNames, i, table)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileVarDec(tokens, classNames, i, table)
  table = resultList[0]
  i = resultList[1]
  nLocal = resultList[2]

  #need to update everything from here
  resultList = compileStatements(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i+=1
  end

  return [str, table, i, nLocal]
end


def compileVarDec(tokens, classNames, i, table)
  index = 0
  resultList = compileVarDecT(tokens, classNames, i, table, index)
  table = resultList[0]
  i = resultList[1]
  nLocals = resultList[2]
  return [table, i, nLocals]
end


def compileVarDecT(tokens, classNames, i, table, index)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, "var")
    return [table, i, index]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "var")
    i += 1
  end

  if notToLarge(tokens, i) and (isType(tokens[i][1], classNames) or isIdentifier(tokens[i][1]))
    type = tokens[i][1]
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name = tokens[i][1]
    i += 1
  end

  symbol = SymbolDef.new(name, type, "var", index.to_s)
  index += 1
  table.symbols.append(symbol)
  resultList = varNameT(tokens, i, table, index, "var", type)
  table = resultList[0]
  i = resultList[1]
  index = resultList[2]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  resultList = compileVarDecT(tokens, classNames, i, table, index)
  return resultList
end


def compileStatements(tokens, i, table)
  str = ""
  resultList = compileStatementT(tokens, i, "", table)
  str += resultList[0]
  i = resultList[1]
  return [str, i]
end


def compileStatementT(tokens, i, result, table)
  case tokens[i][1]
  when "let"
    resultList = compileLet(tokens, i, table)
    result += resultList[0]
    i = resultList[1]

  when "if"
    resultList = compileIf(tokens, i, table)
    result += resultList[0]
    i = resultList[1]

  when "while"
    resultList = compileWhile(tokens, i, table)
    result += resultList[0]
    i = resultList[1]

  when "do"
    resultList = compileDo(tokens, i, table)
    result += resultList[0]
    i = resultList[1]

  when "return"
    resultList = compileReturn(tokens, i, table)
    result += resultList[0]
    i = resultList[1]

  else
    return [result, i]
  end

  resultList = compileStatementT(tokens, i, result, table)
  return resultList
end


def compileSubStatements(tokens, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileStatements(tokens, i,table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i += 1
  end

  return [str, i]
end


def compileLet(tokens, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "let")
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    term = table.findSymbol(tokens[i][1])
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "[")
    i+=1
    str += writePush(term.kind, term.number)

    resultList = compileExpression(tokens, i, table)
    str += resultList[0]
    i = resultList[1]

    str += writeArithmetic("+")
    str += writePop("pointer", "1")
    term = SymbolDef.new(term.name, term.type, "that", "0")
    if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
      i+=1
    end
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "=")
    i+=1
  end

  resultList = compileExpression(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writePop(term.kind, term.number)

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  return [str, i]
end


def compileIf(tokens, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "if")
    labelNumber = i.to_s
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i+=1
  end

  resultList = compileExpression(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writeArithmeticUnary("~")
  str += writeIf("false."+labelNumber)
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    i += 1
  end


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileStatements(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writeGoTo("end."+labelNumber)

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i += 1
  end

  str += writeLabel("false."+labelNumber)
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    resultList = compileElse(tokens, i, table)
    str += resultList[0]
    i = resultList[1]
  end

  str += writeLabel("end."+labelNumber)
  return [str, i]
end


def compileElse(tokens, i, table)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    i += 1
  end

  resultList = compileSubStatements(tokens, i, table)
  str += resultList[0]
  i = resultList[1]
  return [str, i]
end


def compileWhile(tokens, i, table)
  str = ""
  labelNumber = i.to_s
  str += writeLabel("true."+labelNumber)

  # check for while
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "while")
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i+=1

    resultList = compileExpression(tokens, i, table)
    str += resultList[0]
    i = resultList[1]

    str += writeArithmeticUnary("~")

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      i+=1
    end
  end

  str += writeIf("end."+labelNumber)
  resultList = compileSubStatements(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writeLabel("end."+labelNumber)

  return [str, i]
end


def compileDo(tokens, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "do")
    i+=1
  end

  resultList = compileSubroutineCall(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  return [str, i]
end


def compileReturn(tokens, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "return")
    i+=1
  end

  # if no ids in return statement then do dummy push and return.
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")

    i += 1
    str += writePush("constant", "0")
    str += writeReturn
    return [str, i]
  end

  resultList = compileExpression(tokens, i, table)
  str+= resultList[0]
  i = resultList[1]


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= writeReturn
    i+=1
  end


  return [str, i]
end


def compileExpression(tokens, i, table)

  str = ""

  resultList = compileTerm(tokens, i, table)
  str += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT(tokens, i, table, "")
  str += resultList[0]
  i = resultList[1]

  return [str, i]
end


def compileExpressionT(tokens, i, table, result)
  if notToLarge(tokens, i) and !isOp(tokens[i][1])
    return [result, i]
  end

  if notToLarge(tokens, i) and isOp(tokens[i][1])
    op = tokens[i][1]
    i += 1
  end


  resultList = compileTerm(tokens, i, table)
  result += resultList[0]
  i = resultList[1]
  #term = table.findSymbol(resultList[0])
  #result += writePush(term.kind, term.number)


  result += writeArithmetic(op)

  resultList = compileExpressionT(tokens, i, table, result)
  return resultList
end


#need to write this function
def compileTerm(tokens, i, table)
  str = ""

  # unary Operators
  if notToLarge(tokens, i) and isUnaryOP(tokens[i][1])
    op = tokens[i][1]
    i += 1
    resultList = compileTerm(tokens, i, table)
    str += resultList[0]
    str += writeArithmeticUnary(op)
    i = resultList[1]

    # ( expression )
  elsif notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i += 1

    resultList = compileExpression(tokens, i, table)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      i += 1
    end

    #int/keyword/string Constant
  elsif notToLarge(tokens, i) and (isIntConstant(tokens[i][1]) or isKeywordConst(tokens[i][1]) or tokens[i][0] == "stringConstant")
    term = tokens[i][1]

    str += writePush("constant", term)
    i += 1

    #the else is for var name and  subroutine  need to solve this
  elsif isIdentifier(tokens[i][1])
    if notToLarge(tokens, i+1) and isCorrectToken(tokens, i+1, "[")
      term = table.findSymbol(tokens[i][1])
      str += writePush(term.kind, term.number)
      i += 2

      resultList = compileExpression(tokens, i, table)
      str += resultList[0]
      str += writeArithmetic("+")
      i = resultList[1]

      if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
        i += 1
      end

    elsif notToLarge(tokens, i+1) and (isCorrectToken(tokens, i+1, "(") or isCorrectToken(tokens, i+1, "."))
      resultList = compileSubroutineCall(tokens, i, table)
      str += resultList[0]
      i = resultList[1]

    else
      term = table.findSymbol(tokens[i][1])
      str += writePush(term.kind, term.number)
      i += 1
    end
  end

  return [str, i]
end


#need to write this function
def compileSubroutineCall(tokens, i, table)
  str = ""
  name = ""
  flag = true
  # if flag is false then it is not the . call
  if notToLarge(tokens, i) and isCorrectToken(tokens, i+1, "(")
    flag = false
  end
  # flag stays false
  # # if flag is false,
  if flag
    if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
      name = tokens[i][1]
      i += 1
    end
    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ".")
      name += tokens[i][1]
      i += 1
    end

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, "new")
      name += tokens[i][1]
      i += 1
    end
  end
  # now that we took care of this . call
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    name += tokens[i][1]
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i += 1
  end

  resultList = compileExpressionList(tokens, i, table)
  str += resultList[0]
  i = resultList[1]
  nArgs = resultList[2]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    i += 1
  end

  str += writeCall(name, nArgs.to_s)
  return [str, i]
end


def compileExpressionList(tokens, i, table)
  str = ""
  nArgs = 0
  #if no parameters
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    return [str, i, nArgs]
  end

  if notToLarge(tokens, i) and isExpression(tokens, i)
    resultList = compileExpression(tokens, i, table)
    str += resultList[0]
    i = resultList[1]
    nArgs += 1

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
      resultList = compileExpressionListT(tokens, i, nArgs, table, "")
      str += resultList[0]
      i = resultList[1]
      nArgs = resultList[2]
    end
  end

  return [str, i, nArgs]
end


def compileExpressionListT(tokens, i, nArgs, table, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i, nArgs]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    i += 1
  end

  resultList = compileExpression(tokens, i, table)
  result += resultList[0]
  i = resultList[1]
  nArgs += 1

  resultList = compileExpressionListT(tokens, i, nArgs, table, result)
  return resultList
end


def isExpression(tokens, i)
  str = tokens[i][1]

  return (notToLarge(tokens, i) and (isIntConstant(str) or tokens[i][0] == "stringConstant" or
      isKeywordConst(str) or isIdentifier(str) or isUnaryOP(str)))
end


path = "C:/Users/josep/RubymineProjects/HackToVmProject/TestFiles/Project10/MyTest/JackTest.jack"
lines = readJackFile(path)
lines = getLines(lines)
tokens = tokenize(lines)

tables = compileClass(tokens, [])
classTable = tables[0]
methodTableList = tables[1]

classTable.printTable
for i in 0..methodTableList.size-1
  methodTableList[i].printTable
end
