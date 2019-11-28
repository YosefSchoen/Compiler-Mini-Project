#Project 07 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676


require_relative 'IO'

#the main will translate all of the stage 1 and stage 2 test cases
def main()
  #our own little test file
  translateVmToHack("test.vm", "test.asm")
  #stage 1 is to test simple add and  stack test
  translateVmToHack("Stage1/SimpleAdd/SimpleAdd.vm", "Stage1/SimpleAdd/SimpleAdd.asm")
  translateVmToHack("Stage1/StackTest/StackTest.vm", "Stage1/StackTest/StackTest.asm")

  #stage 2 is to test a basic test with the extra segments (local, argument, this, and that)
  # then it will test the pointer segment, and finally the static segment
  translateVmToHack("Stage2/BasicTest/BasicTest.vm", "Stage2/BasicTest/BasicTest.asm")
  translateVmToHack("Stage2/PointerTest/PointerTest.vm", "Stage2/PointerTest/PointerTest.asm")
  translateVmToHack("Stage2/StaticTest/StaticTest.vm", "Stage2/StaticTest/StaticTest.asm")

end


main()