#Project 07-11 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676

require_relative 'Translator/TranslatorIO'
require_relative 'Compiler/CompilerIO'


def getTestFiles
  testFilePaths = %w(TestFiles/Project7/MyTest TestFiles/Project7/Stage1/SimpleAdd TestFiles/Project7/Stage1/StackTest
    TestFiles/Project7/Stage2/BasicTest TestFiles/Project7/Stage2/PointerTest TestFiles/Project7/Stage2/StaticTest
    TestFiles/Project8/ProgramFlow/BasicLoop TestFiles/Project8/ProgramFlow/FibonacciSeries
    TestFiles/Project8/FunctionCalls/SimpleFunction TestFiles/Project8/FunctionCalls/FibonacciElement
    TestFiles/Project8/FunctionCalls/NestedCall TestFiles/Project8/FunctionCalls/StaticsTest TestFiles/Project10/MyTest
    TestFiles/Project10/ExpressionLessSquare TestFiles/Project10/Square TestFiles/Project10/ArrayTest
    TestFiles/Project11/Seven TestFiles/Project11/ConvertToBin TestFiles/Project11/Average TestFiles/Project11/Pong
    TestFiles/Project11/ComplexArrays)

  return testFilePaths
end

def getAsmFileName(path)
  writeName = false
  pathName = path.to_s
  asmFileName = ""
  for i in 0..pathName.size-1
    if pathName[i] == "/"
      asmFileName.clear
      writeName = true
    end

    if writeName
      asmFileName+= pathName[i]
    end
  end

  asmFileName = pathName+asmFileName+".asm"
  return asmFileName
end


def compileAndTranslate(path)
  asmFileName = getAsmFileName(path)
  compile(path)
  translateVmToHack(path, asmFileName)
end


#the main will translate all of the test cases from projects 7 and 8
# and compile the test cases from projects 9, 10, and 11
# and then translate them into asm code
def main(path)
  testFiles = getTestFiles
  for i in 0..testFiles.size-1
    compileAndTranslate(testFiles[i])
  end

  #compileAndTranslate(path)
end

path = ""
main(path)