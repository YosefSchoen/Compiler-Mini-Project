require_relative '../Compiler/SymbolsTable'
require_relative '../Compiler/Tokenizer'

#function to write a vm push command
def writePush(segment, index)
  case segment

  #jack class fields and method local vars will be called local
  when "var"
    segment = "local"

  when "field"
    segment = "local"
  end

 str = "push " + segment + " " + index + "\n"
  return str
end


#similar to push
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


#this function will write a vm binary arithmetic command
def writeArithmetic(cmd)
  str = ""

  #Math.multiply and Math.divide are not called directly in the jack code
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

  when "&gt;"
    str = "gt\n"

  when "&lt;"
    str = "lt\n"

  when "&amp;"
    str = "and\n"

  when "|"
    str = "or\n"

  else
    # type code here
  end

  return str
end


#similar to arithmetic but for unary operators
def writeArithmeticUnary(str)
  if str == "-"
    str = "neg\n"

  elsif str == "~"
    str = "not\n"
  end

  return str
end


#function to write a vm label
def writeLabel(label)
  str = "label " + label + "\n"
  return str
end


#function to write a vm goto
def writeGoTo(label)

  str = "goto " + label + "\n"
  return str

end


#function to write a vm if-goto
def writeIf(label)
  str = "if-goto " + label + "\n"
  return str
end


#function to write a vm function call
def writeCall(name, nArgs)
  str = "call " + name + " " + nArgs + "\n"
  return str
end


#function to write a vm function declaration
def writeFunction(name, nLocals)
  str = "function " + name + " " + nLocals + "\n"
  return str
end


#function to write a vm function return
def writeReturn
  str = "return" + "\n"
  return str
end

#function to write a string
def writeString(term)
  str = ""
  term.each_byte do |c|
    str += writePush("constant", c.to_s)
    str += writeCall("String.appendChar", "2")
  end

  return str
end









