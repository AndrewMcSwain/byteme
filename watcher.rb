

require 'ripper'
require 'pp'
require 'base64'

# argv :
# [tool(s), lines, file]


read = "x > 100 ? 'foo' : 'bar'"
pp Ripper.lex("x > 100 ? 'foo' : 'bar'")
pp Ripper.sexp("x > 100 ? 'foo' : 'bar'")

puts RubyVM::InstructionSequence.compile("x > 100 ? 'foo' : 'bar'").disassemble


