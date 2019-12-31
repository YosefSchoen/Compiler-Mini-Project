#terminal come in 5 types they will all be stored in an array called terminals
dataTypes = %w(int char boolean)
functionTypes = %w(constructor function method)
classDataTypes = %w(field static)
keyConstants = %w(true false null this)
keyWords = %w(class var void  let do if else while return).concat(dataTypes, functionTypes, classDataTypes, keyConstants)
symbols = %w({ } ( ) [ ] . , ; + - * / & | < > = ~)
integerConstants = %w()
stringConstants = %w()
identifier = %w()
terminals = [keyWords, symbols, integerConstants, stringConstants, identifier]


#non terminal come in 3 types they will all be stored in an array called nonTerminals
classNonTerminals = %w(class classVarDec subroutineDec parameterList subroutineBody varDec)
statementNonTerminals = %w(statements whileStatements ifStatements returnStatements letStatements do Statements)
expresionNonTerminals = %w(expression term expressionList)
nonTerminals = [classNonTerminals, statementNonTerminals, expresionNonTerminals]


#the alphabet has 2 types they will all be stored in an array called alphabet
digits = %w(0 1 2 3 4 5 6 7 8 9 )
characters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z _ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
alphabet = [digits, characters]


def readJackFile(fileName)
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




def tokenize(fileName, terminals, alphabet)
  tokens = []
  keyWords = terminals[0]
  symbols = terminals[1]


  lines = readJackFile(fileName)

  lines.each do |line| line = line.split(' ')

    line.each do |str|

      if keyWords.include?(str)
        token = ["keyword", "<keyword>"+str+"</keyword>"+"\n"]
        tokens.append(token)
      end

      if symbols.include?(str)
        token = ["symbol", "<symbol>"+str+"</symbol>"+"\n"]
        tokens.append(token)
      end

      if isIntConstant(str)
        token = ["integerConstants", "<integerConstants>"+str+"</integerConstants>"+"\n"]
        tokens.append(token)

      end
      if isStringConstant(str)
        token = ["stringConstants", "<stringConstants>"+str+"</stringConstants>"+"\n"]
        tokens.append(token)
      end

      if isIdentifier(str, alphabet, keyWords)
        token = ["stringConstants", "<stringConstants>"+str+"</stringConstants>"+"\n"]
        tokens.append(token)
      end
    end
  end

  return tokens
end

#function to check if a character is a number
def isIntConstant(i)
  if i == "0" or i.to_i > 0
    return (i.to_i >= 0 and i.to_i < 2**15) # 2^15 is maximum integer in JACK
  end

  return false
end

#function to check if a character is a string
def isStringConstant(str)
  if str.class.equal?(String)
    puts str[0]
    return (str[0] == "\"" and str[str.to_s.size - 1] == "\"") #if statement surrounded by quotation marks of any kinds
  end

  return false
end


#function to check if a string is a legal id
# make sue each id is in our alphabet
def isIdentifier(str, alphabet, keyWords)
  digitsOfAlphabet = alphabet[0] # if its a digit
  charsOfAlphabet = alphabet[1] # if a letter

  # first character in name cannot be digit
  if digitsOfAlphabet.include?(str[0])
    return false
  end

  # if keyword includes str
  if keyWords.include?(str)
    return false
  end

  # check is in the alphabet
  for i in 1..str.size-1
    character = str[i]

    unless digitsOfAlphabet.include?(character) or charsOfAlphabet.include?(character)
      return false
    end
  end

  return true
end

tokens = tokenize("JackTest.txt", terminals, alphabet)
#puts tokens
