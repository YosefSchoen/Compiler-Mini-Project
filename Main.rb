#Project 07 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676


require_relative 'IO'

#the main will translate all of the stage 1 and stage 2 test cases
def main()
  puts getFileName("Project7/Stage2/BasicTest/BasicTest.vm")
  #our own little test file
  translateVmToHack("test.vm", "test.asm")
  #stage 1 is to test simple add and  stack test
  translateVmToHack("Project7/Stage1/StackTest/StackTest.vm", "Project7/Stage1/StackTest/StackTest.asm")

  #stage 2 is to test a basic test with the extra segments (local, argument, this, and that)
  # then it will test the pointer segment, and finally the static segment
  translateVmToHack("Project7/Stage2/BasicTest/BasicTest.vm", "Project7/Stage2/BasicTest/BasicTest.asm")
  translateVmToHack("Project7/Stage2/PointerTest/PointerTest.vm", "Project7/Stage2/PointerTest/PointerTest.asm")
  translateVmToHack("Project7/Stage2/StaticTest/StaticTest.vm", "Project7/Stage2/StaticTest/StaticTest.asm")

  #Prgram Flow Test from project8
  translateVmToHack("Project8/ProgramFlow/BasicLoop/BasicLoop.vm", "Project8/ProgramFlow/BasicLoop/BasicLoop.asm")
  translateVmToHack("Project8/ProgramFlow/FibonacciSeries/FibonacciSeries.vm", "Project8/ProgramFlow/FibonacciSeries/FibonacciSeries.asm")
end


main()