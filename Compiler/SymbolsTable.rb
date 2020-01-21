class SymbolsTable
  def initialize(symbols, parentSymbols = [])
    #symbols is an array of symbolDef Objects
    @symbols = symbols
    @parentSymbols = parentSymbols
    setParentSymbolKind
    @isVoid = false
  end

  def symbols
    @symbols
  end

  def setParentSymbolKind
    for i in 0..parentSymbols.size-1
      if parentSymbols[i].kind == "field"
        symbol = parentSymbols[i]
        parentSymbols[i] = SymbolDef.new(symbol.name, symbol.type, "this", symbol.number)
      end
    end
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
    #puts "testing"
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
    str = ""
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
