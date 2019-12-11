#Project 07 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676


require_relative 'IO'

#the main will translate all of the test cases from project 7 and 8
def main()
  #our own little test file

  #project 7
  #stage 1 is to test simple add and  stack test
  translateVmToHack("Project7/Stage1/SimpleAdd", "Project7/Stage1/SimpleAdd/SimpleAdd.asm")
  translateVmToHack("Project7/Stage1/StackTest", "Project7/Stage1/StackTest/StackTest.asm")

  #stage 2 is to test a basic test with the extra segments (local, argument, this, and that)
  # then it will test the pointer segment, and finally the static segment
  translateVmToHack("Project7/Stage2/BasicTest", "Project7/Stage2/BasicTest/BasicTest.asm")
  translateVmToHack("Project7/Stage2/PointerTest", "Project7/Stage2/PointerTest/PointerTest.asm")
  translateVmToHack("Project7/Stage2/StaticTest", "Project7/Stage2/StaticTest/StaticTest.asm")

  #project8
  #Program Flow Test
  translateVmToHack("Project8/ProgramFlow/BasicLoop", "Project8/ProgramFlow/BasicLoop/BasicLoop.asm")
  translateVmToHack("Project8/ProgramFlow/FibonacciSeries", "Project8/ProgramFlow/FibonacciSeries/FibonacciSeries.asm")

  #function tests
  translateVmToHack("Project8/FunctionCalls/SimpleFunction", "Project8/FunctionCalls/SimpleFunction/SimpleFunction.asm")
  translateVmToHack("Project8/FunctionCalls/NestedCall", "Project8/FunctionCalls/NestedCall/NestedCall.asm")
  translateVmToHack("Project8/FunctionCalls/FibonacciElement", "Project8/FunctionCalls/FibonacciElement/FibonacciElement.asm")
  translateVmToHack("Project8/FunctionCalls/StaticsTest", "Project8/FunctionCalls/StaticsTest/StaticTests.asm")
end


main()