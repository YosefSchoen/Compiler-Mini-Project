class SymbolsTable
  def initialize(symbols)
    #symbols is an array of symbolDef Objects
    @symbols = symbols
  end

  def symbols
    @symbols
  end

  def findSymbol(varName)
    #puts "testing"
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
    puts "name: " + @name
    puts "type: " + @type
    puts "kind: " + @kind
    puts "number: " + @number
  end
end
