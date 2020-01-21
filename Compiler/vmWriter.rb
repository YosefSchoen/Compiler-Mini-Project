require_relative '../Compiler/SymbolsTable'
require_relative '../Compiler/Tokenizer'
def writePush(segment, index)
  case segment
  when "var"
    segment = "local"

  when "field"
    segment = "local"
  end

 str = "push " + segment + " " + index + "\n"
  return str
end


def writePop(segment, index)
  case segment
  when "var"
    segment = "local"

  when "field"
    segment = "local"
  end
  str = "pop " + segment + " " + index + "\n"
  return str
end


def writeArithmetic(cmd)
  str = ""
  case cmd
  when "*"
    str = "call Math.multiply 2\n"

  when "/"
    str = "call Math.divide 2\n"

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

  else
    # type code here
  end

  return str
end


def writeArithmeticUnary(str)
  if str == "-"
    str = "neg\n"

  elsif str == "~"
    str = "not\n"
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
  str = "function " + name + " " + nLocals + "\n"
  return str
end


def writeReturn
  str = "return" + "\n"
  return str
end


def close

end










