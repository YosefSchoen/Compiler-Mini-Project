require_relative 'CompilerUtility'
require_relative 'Tokenizer'
require_relative 'SymbolsTable'
require_relative 'vmWriter'

@tables = Tables.new([])

#the first function called compiles the file's class
def compileClass2(tokens, compilerInfo)
  str = ""
  table = SymbolsTable.new(tokens[1][1], [], [])
  i = 0
  #terminal class
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "class")
    i+=1
  end

  # terminal className, check if legal!
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    this = tokens[i][1]
    i+=1
  end

  # terminal {
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  #classVarDec*
  resultList = compileClassVarDec2(tokens, compilerInfo, i, table)
  table = resultList[0]
  i = resultList[1]

  #subroutineDec*
  resultList = compileSubroutineDec2(tokens, compilerInfo, i, this, table)
  str += resultList[0]
  methodsTableList = resultList[1]
  i = resultList[2]

  # terminal }
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
  end


  return [str, table, methodsTableList]
end


def compileClassVarDec2(tokens, compilerInfo, i, table)
  fieldIndex = 0
  staticIndex = 0
  resultList = compileClassVarDecT2(tokens, compilerInfo, i, table, fieldIndex, staticIndex)
  i = resultList[1]


  return [table, i]
end


def compileClassVarDecT2(tokens, compilerInfo, i, table, fieldIndex, staticIndex)
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

  if notToLarge(tokens, i) and (isType(tokens[i][1], compilerInfo) or isIdentifier(tokens[i][1]))
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

  resultList = varNameT2(tokens, i, table, index, kind, type)
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
  resultList = compileClassVarDecT2(tokens, compilerInfo, i, table, fieldIndex, staticIndex)
  return resultList
end


def varNameT2(tokens, i, table, index, kind, type)
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

  resultList = varNameT2(tokens, i, table, index, kind, type)
  return resultList
end


def compileSubroutineDec2(tokens, compilerInfo, i, this, classTable)
  # if constructor, method, function

  resultList = compileSubroutineDecT2(tokens, compilerInfo, i, this, classTable, [], "")
  return resultList
end


def compileSubroutineDecT2(tokens, compilerInfo, i, this, classTable, tableList, result)
  index = 0
  name = ""
  table = SymbolsTable.new("", [], classTable.symbols)

  if notToLarge(tokens, i) and !isSubRoutineType(tokens[i][1])
    return [result, tableList, i]
  end


  if notToLarge(tokens, i) and isSubRoutineType(tokens[i][1])
    type = tokens[i][1]
    i += 1

    if type == "constructor"
      if notToLarge(tokens, i) and isCorrectToken(tokens, i, tokens[1][1])
        name += tokens[i][1]
        i += 1
      end

      allocSize = 0
      for j in 0..classTable.symbols.size-1
        if classTable.symbols[j].kind == "field"
          allocSize += 1
        end
      end


    elsif type == "method"
      symbol = SymbolDef.new("this", this, "argument", index.to_s)
      table.symbols.append(symbol)
      index += 1

    elsif type == "function"

    end

    if notToLarge(tokens, i) and (isType(tokens[i][1], compilerInfo) or isCorrectToken(tokens, i, "void"))
      if isCorrectToken(tokens, i, "void")
        table.setIsVoid(true)
      end

      i+=1

    end

    if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
      name = tokens[1][1]+"."+tokens[i][1]
      table.setTableName(name)
      i+=1
    end

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
      i+=1
    end

    resultList = compileParameterList2(tokens, compilerInfo, i, table, index)
    table = resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      i+=1
    end

    resultList = compileSubroutineBody2(tokens, compilerInfo, i, table)

    nLocals = resultList[3]
    result += writeFunction(name, nLocals.to_s)

    if type == "method"
      result+= writePush(symbol.kind, symbol.number)
      result += writePop("pointer", "0")

    elsif type == "constructor"
      result += writePush("constant", allocSize.to_s)
      result += writeCall("Memory.alloc", "1")
      result += writePop("pointer", "0")
    end

    result += resultList[0]
    table = resultList[1]
    i = resultList[2]
    tableList.append(table)
    @tables.tables.append(table)
    resultList = compileSubroutineDecT2(tokens, compilerInfo, i, this, classTable, tableList, result)
    return resultList
  end
end


def compileParameterList2(tokens, compilerInfo, i, table, index)
  if notToLarge(tokens, i) and !isType(tokens[i][1], compilerInfo)
    return [table, i]
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], compilerInfo)
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

  resultList = compileParameterListT2(tokens, compilerInfo, i, table, index)
  table = resultList[0]
  i = resultList[1]


  return [table, i, index]
end


def compileParameterListT2(tokens, compilerInfo, i, table, index)

  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [table, i]
  end

  if notToLarge(tokens,i) and isCorrectToken(tokens, i, ",")
    i += 1
  end

  if notToLarge(tokens, i) and isType(tokens[i][1], compilerInfo)
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

  resultList = compileParameterListT2(tokens, compilerInfo, i, table, index)
  return resultList
end


def compileSubroutineBody2(tokens, compilerInfo, i, table)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileVarDec2(tokens, compilerInfo, i, table)
  table = resultList[0]
  i = resultList[1]
  nLocal = resultList[2]

  #need to update everything from here
  resultList = compileStatements2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i+=1
  end

  return [str, table, i, nLocal]
end


def compileVarDec2(tokens, compilerInfo, i, table)
  index = 0
  resultList = compileVarDecT2(tokens, compilerInfo, i, table, index)
  table = resultList[0]
  i = resultList[1]
  nLocals = resultList[2]
  return [table, i, nLocals]
end


def compileVarDecT2(tokens, compilerInfo, i, table, index)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, "var")
    return [table, i, index]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "var")
    i += 1
  end

  if notToLarge(tokens, i) and (isType(tokens[i][1], compilerInfo) or isIdentifier(tokens[i][1]))
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
  resultList = varNameT2(tokens, i, table, index, "var", type)
  table = resultList[0]
  i = resultList[1]
  index = resultList[2]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  resultList = compileVarDecT2(tokens, compilerInfo, i, table, index)
  return resultList
end


def compileStatements2(tokens, compilerInfo, i, table)
  str = ""
  resultList = compileStatementT2(tokens, compilerInfo, i, "", table)
  str += resultList[0]
  i = resultList[1]
  return [str, i, ]
end


def compileStatementT2(tokens, compilerInfo, i, result, table)
  case tokens[i][1]
  when "let"
    resultList = compileLet2(tokens, compilerInfo, i, table)
    result += resultList[0]
    i = resultList[1]

  when "if"
    resultList = compileIf2(tokens, compilerInfo, i, table)
    result += resultList[0]
    i = resultList[1]

  when "while"
    resultList = compileWhile2(tokens, compilerInfo, i, table)
    result += resultList[0]
    i = resultList[1]

  when "do"
    resultList = compileDo2(tokens, compilerInfo, i, table)
    result += resultList[0]
    i = resultList[1]

  when "return"
    resultList = compileReturn2(tokens, compilerInfo, i, table)
    result += resultList[0]
    i = resultList[1]

  else
    return [result, i]
  end

  resultList = compileStatementT2(tokens, compilerInfo, i, result, table)
  return resultList
end


def compileSubStatements2(tokens, compilerInfo, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileStatements2(tokens, compilerInfo, i,table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i += 1
  end

  return [str, i]
end


def compileLet2(tokens, compilerInfo, i, table)
  str = ""
  isArray = false
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "let")
    i+=1
  end

  if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
    term = table.findSymbol(tokens[i][1])

    if term == nil
      term = table.symbolInParentSymbolTable(tokens[i][1])
    end
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "[")
    isArray = true
    str += writePush(term.kind, term.number)
    i+=1

    resultList = compileExpression2(tokens, compilerInfo, i, table)
    str += resultList[0]
    i = resultList[1]

    str += writeArithmetic("+")

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
      i+=1
    end
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "=")
    i+=1
  end

  resultList = compileExpression2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  if isArray
    str += writePop("temp", "0")
    str += writePop("pointer", "1")
    str += writePush("temp", "0")
    termThat = SymbolDef.new(term.name, term.type, "that", "0")
    str += writePop(termThat.kind, termThat.number)

  else
    str += writePop(term.kind, term.number)
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  return [str, i]
end


def compileIf2(tokens, compilerInfo, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "if")
    labelNumber = i.to_s
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i+=1
  end

  resultList = compileExpression2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writeArithmeticUnary("~")
  str += writeIf("ifFalse."+labelNumber)
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    i += 1
  end


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "{")
    i+=1
  end

  resultList = compileStatements2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  str += writeGoTo("endIf."+labelNumber)

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "}")
    i += 1
  end

  str += writeLabel("ifFalse."+labelNumber)
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    resultList = compileElse2(tokens, compilerInfo, i, table)
    str += resultList[0]
    i = resultList[1]
  end

  str += writeLabel("endIf."+labelNumber)
  return [str, i]
end


def compileElse2(tokens, compilerInfo, i, table)
  str = ""
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "else")
    i += 1
  end

  resultList = compileSubStatements2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]
  return [str, i]
end


def compileWhile2(tokens, compilerInfo, i, table)
  str = ""
  labelNumber = i.to_s
  str += writeLabel("WhileTrue."+labelNumber)

  # check for while
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "while")
    i+=1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i+=1

    resultList = compileExpression2(tokens, compilerInfo, i, table)
    str += resultList[0]
    i = resultList[1]

    str += writeArithmeticUnary("~")

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      i+=1
    end
  end

  str += writeIf("endWhile."+labelNumber)
  resultList = compileSubStatements2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]
  str += writeGoTo("WhileTrue."+labelNumber)
  str += writeLabel("endWhile."+labelNumber)

  return [str, i]
end


def compileDo2(tokens, compilerInfo, i, table)
  str = ""

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "do")
    i+=1
  end

  resultList = compileSubroutineCall2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    i+=1
  end

  return [str, i]
end


def compileReturn2(tokens, compilerInfo, i, table)
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

  resultList = compileExpression2(tokens, compilerInfo, i, table)
  str+= resultList[0]
  i = resultList[1]


  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ";")
    str+= writeReturn
    i+=1
  end


  return [str, i]
end


def compileExpression2(tokens, compilerInfo, i, table)

  str = ""

  resultList = compileTerm2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]

  resultList = compileExpressionT2(tokens, compilerInfo, i, table, "")
  str += resultList[0]
  i = resultList[1]

  return [str, i]
end


def compileExpressionT2(tokens, compilerInfo, i, table, result)
  if notToLarge(tokens, i) and !isOp(tokens[i][1])
    return [result, i]
  end

  if notToLarge(tokens, i) and isOp(tokens[i][1])
    op = tokens[i][1]
    i += 1
  end


  resultList = compileTerm2(tokens, compilerInfo, i, table)
  result += resultList[0]
  i = resultList[1]



  result += writeArithmetic(op)

  resultList = compileExpressionT2(tokens, compilerInfo, i, table, result)
  return resultList
end


#need to write this function
def compileTerm2(tokens, compilerInfo, i, table)
  str = ""

  # unary Operators
  if notToLarge(tokens, i) and isUnaryOP(tokens[i][1])
    op = tokens[i][1]
    i += 1
    resultList = compileTerm2(tokens, compilerInfo, i, table)
    str += resultList[0]
    str += writeArithmeticUnary(op)
    i = resultList[1]

    # ( expression )
  elsif notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i += 1

    resultList = compileExpression2(tokens, compilerInfo, i, table)
    str += resultList[0]
    i = resultList[1]

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
      i += 1
    end

    #int/keyword/string Constant
  elsif notToLarge(tokens, i) and (isIntConstant(tokens[i][1]) or isKeywordConst(tokens[i][1]) or tokens[i][0] == "stringConstant")
    trueStr = ""
    if tokens[i][0] == "stringConstant"
      trueStr += tokens[i][1].length.to_s
      kind = "constant"
      str += writePush(kind, trueStr)  #push size of the string in chars
      str += writeCall("String.new", "1")

      str += writeString(tokens[i][1])
    else


      kind = "constant"
      term = tokens[i][1]

      if tokens[i][1] == "this"
        kind = "pointer"
        term = "0"

      elsif tokens[i][1] == "null" or tokens[i][1] == "false"
        term = "0"

      elsif tokens[i][1] == "true"
        term = "1"
        trueStr += writeArithmeticUnary("-")
      end
      str += writePush(kind, term)+trueStr
    end


    i += 1

    #the else is for var name and  subroutine  need to solve this
  elsif isIdentifier(tokens[i][1])
    if notToLarge(tokens, i+1) and isCorrectToken(tokens, i+1, "[")
      term = table.findSymbol(tokens[i][1])
      str += writePush(term.kind, term.number)
      i += 2

      resultList = compileExpression2(tokens, compilerInfo, i, table)
      str += resultList[0]
      i = resultList[1]

      str += writeArithmetic("+")
      str += writePop("pointer", "1")
      str += writePush("that", "0")
      if notToLarge(tokens, i) and isCorrectToken(tokens, i, "]")
        i += 1
      end


    elsif notToLarge(tokens, i+1) and (isCorrectToken(tokens, i+1, "(") or isCorrectToken(tokens, i+1, "."))
      resultList = compileSubroutineCall2(tokens, compilerInfo, i, table)
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
def compileSubroutineCall2(tokens, compilerInfo, i, table)
  str = ""
  name = ""
  callingMethodFromObject = false
  flag = true
  # if flag is false then it is not the . call
  if notToLarge(tokens, i) and isCorrectToken(tokens, i+1, "(")
    flag = false
  end
  # flag stays false
  # # if flag is false,
  if flag
    if notToLarge(tokens, i) and isIdentifier(tokens[i][1])
      if table.findSymbol(tokens[i][1])
        symbol = table.findSymbol(tokens[i][1])
        str += writePush(symbol.kind, symbol.number)
        name += symbol.type

        unless compilerInfo[0].include?(tokens[i][1])
          callingMethodFromObject = true
        end
      else
        name += tokens[i][1]
      end

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
  if notToLarge(tokens, i) and isIdentifier(tokens[i][1]) and !isCorrectToken(tokens, i, "(")
    name += tokens[i][1]
    i += 1
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, "(")
    i += 1
  end

  resultList = compileExpressionList2(tokens, compilerInfo, i, table)
  str += resultList[0]
  i = resultList[1]
  nArgs = resultList[2]

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    i += 1
  end

  if callingMethodFromObject
    nArgs += 1
  end

  str += writeCall(name, nArgs.to_s)

  voidFunctions = []
  for j in 0..compilerInfo[1].size-1
    voidFunctions.append(compilerInfo[1][j][0])
  end

  if voidFunctions.include?(name)
    str += writePop("temp", "0")
  end

  return [str, i]
end


def compileExpressionList2(tokens, compilerInfo, i, table)
  str = ""
  nArgs = 0
  #if no parameters
  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ")")
    return [str, i, nArgs]
  end

  if notToLarge(tokens, i) and isExpression2(tokens, i)
    resultList = compileExpression2(tokens, compilerInfo, i, table)
    str += resultList[0]
    i = resultList[1]
    nArgs += 1

    if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
      resultList = compileExpressionListT2(tokens, compilerInfo, i, nArgs, table, "")
      str += resultList[0]
      i = resultList[1]
      nArgs = resultList[2]
    end
  end

  return [str, i, nArgs]
end


def compileExpressionListT2(tokens, compilerInfo, i, nArgs, table, result)
  if notToLarge(tokens, i) and !isCorrectToken(tokens, i, ",")
    return [result, i, nArgs]
  end

  if notToLarge(tokens, i) and isCorrectToken(tokens, i, ",")
    i += 1
  end

  resultList = compileExpression2(tokens, compilerInfo, i, table)
  result += resultList[0]
  i = resultList[1]
  nArgs += 1

  resultList = compileExpressionListT2(tokens, compilerInfo, i, nArgs, table, result)
  return resultList
end


def isExpression2(tokens, i)
  str = tokens[i][1]

  return (notToLarge(tokens, i) and (isIntConstant(str) or tokens[i][0] == "stringConstant" or
      isKeywordConst(str) or isIdentifier(str) or isUnaryOP(str)))
end