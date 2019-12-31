#tokens is of form [type, string]



def structure(tokens)
  tokens.each do |token|
    type = token[0]
    str = token[1]
    case type

    end
  end


end

def isClass(tokens)

end

def KeywordConstant
  str = ""
  if cmds == "true" or cmds == "false" or cmds == "null" or cmds == "this"
    str += cmds
    return str
  end
  return false
end


def statemnent(cmds)
  case cmds
  when letStatement

  when ifStatement


  when whileStatement

  when doStatement

  when returnStatement
  end

end