#Project 07 for Fundamentals of Computer Programming
# Yosef Schoen - 506429330
# Saul Rothman - 337923676


require_relative 'TranslatorIO'

#the main will translate all of the test cases from project 7 and 8
def main(directory, asmFileName)
  translateVmToHack(directory, asmFileName)
  return asmFileName
end


directory = "Project8/FunctionCalls/StaticsTest"
fileName = "StaticsTestasm"
puts main(directory, directory + "/" + fileName)