class Tables
  def initialize(tableList)
    @@tables = tableList
  end

  def tables
    @@tables
  end

  def findTable(tableName)
    unless tables.empty?
      for i in 0..tables.size-1
        if tables[i].tableName == tableName
          return tables[i]
        end
      end
    end

    return nil
  end
end

class SymbolsTable
  def initialize(tableName, symbols, parentInfo)
    @tableName = tableName
    #symbols is an array of symbolDef Objects
    @symbols = symbols

    @parentName = parentInfo[0]
    @parentSymbols = parentInfo[1]
    setParentSymbolKind(parentInfo[1])

    @isVoid = false
  end

  def parentName
    @parentName
  end

  def tableName
    @tableName
  end

  def setTableName(otherName)
    @tableName = otherName
  end

  def symbols
    @symbols
  end

  def setParentSymbolKind(parentSymbolsP)

    parentSymbolList = []
    unless parentSymbolsP == nil
      for i in 0..parentSymbolsP.size-1
        if parentSymbols[i].kind == "field"
          symbol = SymbolDef.new(parentSymbolsP[i].name, parentSymbolsP[i].type, "this", parentSymbolsP[i].number)
          parentSymbolList.append(SymbolDef.new(symbol.name, symbol.type, "this", symbol.number))

        elsif parentSymbols[i].kind == "static"
          symbol = SymbolDef.new(parentSymbolsP[i].name, parentSymbolsP[i].type, parentSymbolsP[i].kind, parentSymbolsP[i].number)
          parentSymbolList.append(SymbolDef.new(symbol.name, symbol.type, symbol.kind, symbol.number))
        end
      end
    end

    @parentSymbols = parentSymbolList
  end

  def symbolInParentSymbolTable(symbol)
    unless @parentSymbols.empty?
      for i in 0..@parentSymbols.size-1
        if @parentSymbols[i].name == symbol
          return @parentSymbols[i]
        end
      end
    end

    return nil
  end

  def parentSymbols
    @parentSymbols
  end

  def isVoid
    @isVoid
  end

  def setIsVoid(newBool)
    @isVoid = newBool
  end

  def findSymbol(varName)
    for i in 0..symbols.size-1
      if varName == symbols[i].name
        return symbols[i]
      end
    end

    for i in 0..parentSymbols.size-1
      if varName == parentSymbols[i].name
        return parentSymbols[i]
      end
    end

    return nil
  end

  def printTable
    str = "//"+@tableName+"\n"
    for i in 0..@symbols.size-1
      str += @symbols[i].printSymbol
    end

    for i in 0..@parentSymbols.size-1
      str += @parentSymbols[i].printSymbol
    end

    return str
  end
end

class SymbolDef
  def initialize(name, type, kind, number)
    #find the symbol in table using its name
    @name = name

    @type = type

    #for vm local arg, ..
    @kind = kind

    #offset for vm local 1. local 2....
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
    str = ""
    str += "//name: " + @name +"\n"
    str += "//type: " + @type +"\n"
    str += "//kind: " + @kind +"\n"
    str += "//number: " + @number +"\n"

    return str
  end
end