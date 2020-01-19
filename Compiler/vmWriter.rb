require_relative '../Compiler/SymbolsTable'

def writePush(segment, index)
 str = "push " + segment + index
  return str
end


def writePop(segment, index)
  str = "pop " + segment + index
  return str
end


def writeArithmetic(cmd)
  str = ""
  case cmd
  when "+"
    str = "add\n"

  when "-"
    str = "sub\n"

  when "="
    str = "eq\n"

  when "&gt"
    str = "gt\n"

  when "&lt"
    str = "lt\n"

  when "&amp"
    str = "and\n"

  when "|"
    str = "or\n"

  when "~"
    str = "not\n"

  else
    # type code here
  end

  return str
end


def writeLabel(label)
  str = "label " + label + "\n"
  return str
end


def writeGoTo(label)

  str = "goto " + label + "\n"
  return str

end


def writeIf(label)
  str = "if-goto " + label + "\n"
  return str
end


def writeCall(name, nArgs)
  str = "call " + name + " " + nArgs + "\n"
  return str
end


def writeFunction(name, nLocals)
  str = "function " + name + " " + nLocals
  return str
end


def writeReturn
  str = "return" + "\n"
  return str
end


def close

end


path = "C:/Users/josep/RubymineProjects/HackToVmProject/TestFiles/Project10/MyTest/JackTestOut.xml"
tables = writeFileSymbolTables(path)

def temp
  puts "class Table"
  tables[0].printTable

  for i in 0..tables[1].size-1
    puts "method Table"
    tables[1][i].printTable
  end

end


def findSymbol(varName, table)
  symbol = table.findSymbol(varName)
  symbol.printSymbol
end

def letStatement(lines, i, table)

  writeExpression(lines, i+4, table)
  puts "pop " + removeTags(lines[i+2])
end


def writeExpression(lines, i, table)
  writeTerm(lines, i + 2, table)
  writeTerm(lines, i + 6, table)
  puts writeArithmetic(removeTags(lines[i+4]))+"\n"


end


def writeTerm(lines, i, table)
  varName = removeTags(lines[i])
  symbol = table.findSymbol(varName)

  puts "push " + symbol.name+"\n"
end

lines = readJackFileTest(path)
table = tables[1][0]
i = 50-1


letStatement(lines, i, table)








