#terminal come in 5 types they will all be stored in an array called terminals


def getKeywords
  dataTypes = %w(int char boolean)
  functionTypes = %w(constructor function method)
  classDataTypes = %w(field static)
  keyConstants = %w(true false null this)
  otherKeyWords = %w(class var void  let do if else while return)
  keywords = [].concat(dataTypes, functionTypes, classDataTypes, keyConstants, otherKeyWords)
  return keywords
end


def getSymbols
  symbols = %w({ } ( ) [ ] . , ; + - * / & | < > = ~)
  return symbols
end


def getTerminals
  terminals = [getKeywords, getSymbols]
  return terminals
end


def getAlphabet
  #the alphabet has 2 types they will all be stored in an array called alphabet
  digits = %w(0 1 2 3 4 5 6 7 8 9 )
  characters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z _ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  alphabet = [digits, characters]
  return alphabet
end


def tokenize(lines)
  tokens = []
  isMultiLineComment = false
  buildingStrConst = false
  strConst =""

  lines.each do |line| line = line.split(' ')
    line.each do |str|
      if str[0] == "/" and str[2] == "*"
        isMultiLineComment = true
      end

      if str[0] == "/" and str[1] == "/"
        break
      end

      if str[0] == "\"" and str[str.size-2] != "\""
        strConst = str
        buildingStrConst = true

      elsif buildingStrConst and str == " "
        strConst = strConst+str


      elsif buildingStrConst and str[str.size-2] != "\""
        strConst = strConst+" "+str

      elsif buildingStrConst and str[str.size-2] == "\""
        str = strConst+" "+str
        buildingStrConst = false
        strConst = ""
      end


      if !isMultiLineComment and !buildingStrConst
        newLine = splitSymbols(str)
        unless newLine.empty?
          newLine.each do |i|
            tokens.push(getToken(i))
          end

        else
          tokens.push(getToken(str))
        end
      end

      if str[0] == "*" and str[1] == "/"
        isMultiLineComment = false
      end

    end
  end

  return tokens
end


def splitSymbols(str)
  strArr = []
 newStr = ""

  for i in 0..str.size-1
    if !getSymbols.include?(str[i])
      newStr.concat("", str[i])

    else
      unless newStr.empty?
        strArr.push(newStr)
        newStr = ""
      end
      strArr.push(str[i])
    end
  end

  unless newStr.empty?
    strArr.push(newStr)
  end

  return strArr
end

def getToken(str)
  token = []
  if getKeywords.include?(str)
    token = ["keyword", str]

  elsif getSymbols.include?(str)
    if str == "<"
      str = "&lt;"

    elsif str == ">"
      str = "&lt;"

    elsif str == "&"
      str = "&amp;"
    end

    token = ["symbol", str]

  elsif isIntConstant(str)
    token = ["integerConstant", str]

  elsif isStringConstant(str)
    str = str.delete("\"")
    token = ["stringConstant", str]

  elsif isIdentifier(str)
    token = ["identifier", str]
  end

  return token
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
  return (str[0].to_s == "\"" and str[str.to_s.size - 1].to_s == "\"") #if statement surrounded by quotation marks of any kinds

  return false
end


#function to check if a string is a legal id
# make sue each id is in our alphabet
def isIdentifier(str)
  digitsOfAlphabet = getAlphabet[0] # if its a digit
  charsOfAlphabet = getAlphabet[1] # if a letter

  # first character in name cannot be digit
  if digitsOfAlphabet.include?(str[0])
    return false
  end

  # if keyword includes str
  if getKeywords.include?(str)
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