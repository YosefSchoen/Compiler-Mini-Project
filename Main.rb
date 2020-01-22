#Project 07-11 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676

require_relative 'Translator/TranslatorIO'
require_relative 'Compiler/CompilerIO'

#the main will translate all of the test cases from projects 7 and 8
# and compile the test cases from projects 9, 10, and 11
def main

  #translateVmToHack("TestFiles/Project7/MyTest", "TestFiles/Project7/MyTest/test.asm")
  #translateVmToHack("TestFiles/Project7/Stage1/SimpleAdd", "TestFiles/Project7/Stage1/SimpleAdd/SimpleAdd.asm")
  #translateVmToHack("TestFiles/Project7/Stage1/StackTest", "TestFiles/Project7/Stage1/StackTest/StackTest.asm")

  #translateVmToHack("TestFiles/Project7/Stage2/BasicTest", "TestFiles/Project7/Stage2/BasicTest/BasicTest.asm")
  #translateVmToHack("TestFiles/Project7/Stage2/PointerTest", "TestFiles/Project7/Stage2/PointerTest/PointerTest.asm")
  #translateVmToHack("TestFiles/Project7/Stage2/StaticTest", "TestFiles/Project7/Stage2/StaticTest/StaticTest.asm")

  #translateVmToHack("TestFiles/Project8/ProgramFlow/BasicLoop", "TestFiles/Project8/ProgramFlow/BasicLoop/BasicLoop.asm")
  #translateVmToHack("TestFiles/Project8/ProgramFlow/FibonacciSeries", "TestFiles/Project8/ProgramFlow/FibonacciSeries/FibonacciSeries.asm")

  #translateVmToHack("TestFiles/Project8/FunctionCalls/SimpleFunction", "TestFiles/Project8/FunctionCalls/SimpleFunction/SimpleFunction.asm")
  #translateVmToHack("TestFiles/Project8/FunctionCalls/FibonacciElement", "TestFiles/Project8/FunctionCalls/FibonacciElement/FibonacciElement.asm")
  #translateVmToHack("TestFiles/Project8/FunctionCalls/NestedCall", "TestFiles/Project8/FunctionCalls/NestedCall/NestedCall.asm")
  #translateVmToHack("TestFiles/Project8/FunctionCalls/StaticsTest", "TestFiles/Project8/FunctionCalls/StaticsTest/StaticsTest.asm")


  #compile("TestFiles/Project9")
  #compile("TestFiles/Project10/MyTest")
  #compile("TestFiles/Project10/ExpressionLessSquare")
  #compile("TestFiles/Project10/Square")
  #compile("TestFiles/Project10/ArrayTest")

  compile("TestFiles/Project11/Seven")
  compile("TestFiles/Project11/ConvertToBin")
  #compile("TestFiles/Project11/Square")
  #compile("TestFiles/Project11/Average")
  #compile("TestFiles/Project11/Pong")
  #compile("TestFiles/Project11/ComplexArrays")


end


main