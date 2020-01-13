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


s1 = SymbolDef.new("na1", "t1", "k1", "nu1")
s2 = SymbolDef.new("na2", "t2", "k2", "nu2")
s3 = SymbolDef.new("na3", "t3", "k3", "nu3")

s = SymbolsTable.new([s1])
s.symbols.append(s2)
s.symbols.append(s3)
s.printTable


