class SymbolsTable
  def initialize(symbols)
    #symbols is an array of symbolDef Objects
    @symbols = symbols
  end

  def symbols
    @symbols
  end


  def printTable
    for i in 0.. @symbols.size-1
      @symbols[i].printSymbol
      puts "\n"
    end
  end
end

class SymbolDef
  def initialize(name, type, kind, number)
    @name = name
    @type = type
    @kind = kind
    @number = number
  end

  def name
    @name end

  def type
    @type end

  def kind
    @kind end

  def number
    @number end

  def printSymbol
    puts "name: " + @name
    puts "type: " + @type
    puts "kind: " + @kind
    puts "number: " + @number
  end
end



def readJackFileTest(fileName)
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

def removeTags(str)
  newStr = str.split(" ")

  str = newStr[1].to_s
  return str
end


def writeClassVarDecSymbol(lines, location, fieldIndex, staticIndex)
  symbolList = []
  index = 0
  location += 1
  kind = removeTags(lines[location])

  if kind == "field"
    index = fieldIndex
    fieldIndex += 1

  elsif kind == "static"
    index = staticIndex
    staticIndex += 1
  end
  location+= 1
  dataType = removeTags(lines[location])

  location += 1
  name = removeTags(lines[location])

  symbol = SymbolDef.new(name, dataType, kind, index.to_s)
  symbolList.append(symbol)
  location += 1
  index += 1

  if removeTags(lines[location]) == ","
    while removeTags(lines[location]) != ";"
      location += 1
      name = removeTags(lines[location])
      symbol = SymbolDef.new(name, kind, dataType, index.to_s)
      symbolList.append(symbol)
      location += 1
      index += 1
    end
  end

  if kind == "field"
    fieldIndex = index

  elsif kind == "static"
    staticIndex = index
  end

  return [symbolList, location, fieldIndex, staticIndex]
end

def writeClassVarDecSymbols(lines, location)
  symbolList = []
  fieldIndex = 0
  staticIndex = 0

  for i in location..lines.size
    if lines[i] == "<classVarDec>" and lines[i+1] != "</classVarDec>"
      resultList = writeClassVarDecSymbol(lines, i, fieldIndex, staticIndex)
      symbols = resultList[0]
      location = resultList[1]
      fieldIndex = resultList[2]
      staticIndex = resultList[3]
     symbolList.concat(symbols)
    end
  end

  return [symbolList, location]
end

def writeClassSymbolsTable(lines, location)
  resultList = writeClassVarDecSymbols(lines, location)
  symbolList = resultList[0]
  location = resultList[1]

  table = SymbolsTable.new([])
  for i in 0..symbolList.size-1
    table.symbols.append(symbolList[i])
  end
  return [table, location]
end


def writeParamSymbols(lines, location, index)
  symbolList = []
  kind = "argument"

  if lines[location] == "<parameterList>" and lines[location+1] != "</parameterList>"
    location += 1
    type = removeTags(lines[location])

    location += 1
    name = removeTags(lines[location])

    symbol = SymbolDef.new(name, type, kind, index.to_s)
    symbolList.append(symbol)
    index += 1

    location += 1

    while lines[location] != "</parameterList>"
      location += 1
      type = removeTags(lines[location])

      location += 1
      name = removeTags(lines[location])

      symbol = SymbolDef.new(name, type, kind, index.to_s)
      symbolList.append(symbol)
      index += 1
      location += 1
    end

    return [symbolList, location]
  end

end


def writeVarDecSymbol(lines, location, index)
  symbolList = []

  location += 1
  kind = removeTags(lines[location])

  location += 1
  dataType = removeTags(lines[location])

  location += 1
  name = removeTags(lines[location])

  symbol = SymbolDef.new(name, dataType, kind, index.to_s)
  symbolList.append(symbol)
  location += 1
  index += 1

  if removeTags(lines[location]) == ","
    while removeTags(lines[location]) != ";"
      location += 1
      name = removeTags(lines[location])
      symbol = SymbolDef.new(name, kind, dataType, index.to_s)
      symbolList.append(symbol)
      location += 1
      index += 1
    end
  end

  return [symbolList, location, index]

end
def writeMethodVarDec(lines, location)
  symbolList = []
  index = 0

  for i in location..lines.size
    if lines[i] == "</subroutineDec>"
      return [symbolList, location]
    end

    if lines[i] == "<varDec>" and lines[i+1] != "</varDec>"
      resultList = writeVarDecSymbol(lines, i, index)
      symbols = resultList[0]
      location = resultList[1]
      index = resultList[2]
      symbolList.concat(symbols)
    end
  end

  return [symbolList, location]
end

def writeMethodsSymbolTable(lines, location)
  table = SymbolsTable.new([])
  index = 0
  name = "this"
  className = lines[2].split(" ")[1]
  kind = "argument"

  symbol = SymbolDef.new(name, className, kind, index.to_s)
  table.symbols.append(symbol)
  index += 1
  location += 5

  resultList = writeParamSymbols(lines, location, index)
  paramSymbols = resultList[0]
  location = resultList[1]

  for i in 0..paramSymbols.size-1
    table.symbols.append(paramSymbols[i])
  end

  resultList = writeMethodVarDec(lines, location)
  symbolList = resultList[0]
  location = resultList[1]

  for i in 0..symbolList.size-1
    table.symbols.append(symbolList[i])
  end

  return [table, location]
end
def writeMethodsSymbolTableList(lines, location)
  tableList = []
  for i in location..lines.size-1
    if lines[i] == "<subroutineDec>" and lines[i+1] != "</subroutineDec>"
      resultList = writeMethodsSymbolTable(lines, i)
      table = resultList[0]
      tableList.append(table)
    end
  end

  return tableList
end


def writeFileSymbolTables(path)
  location = 0
  lines = readJackFileTest(path)
  for i in 0..lines.size-1
    lines[i] = lines[i].delete("\t")
    lines[i] = lines[i].delete("\n")
  end

  resultList = writeClassSymbolsTable(lines, location)
  classSymbolTable = resultList[0]
  location = resultList[1]

  methodsSymbolTableList = writeMethodsSymbolTableList(lines, location)

  return [classSymbolTable, methodsSymbolTableList]
end

path = "C:/Users/josep/RubymineProjects/HackToVmProject/TestFiles/Project10/MyTest/JackTestOut.xml"
tables = writeFileSymbolTables(path)

puts "class Table"
#tables[0].printTable
for i in 0.. tables[1].size-1
  puts "method Table"
  tables[1][i].printTable
end