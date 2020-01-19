class SymbolsTable
  def initialize(symbols)
    #symbols is an array of symbolDef Objects
    @symbols = symbols
  end

  def symbols
    @symbols
  end

  def findSymbol(varName)
    for i in 0..symbols.size-1
      if varName == symbols[i].name
        return symbols[i]
      end
    end

    return null
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
