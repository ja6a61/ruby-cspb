# ex11-2.rb
# sat 27 dec 2014
#
# Write a program that quizzes the user on her or his vocabulary. Make the 
# program read a set of words and definitions from a file; display definitions 
# one at a time, in random order; and prompt for the appropriate word.
#
require_relative "file_reader.rb"
# write a reader class for reading files
# require_relative "file_reader.rb"
#
filename = "definitions.txt"

file = FileReader.new(filename)
line = file.read_line

puts "line: " + line

puts "line.split(':'):"
puts line.split(':')

definition = line.split(':')

puts "definition:"
puts definition
puts "definition.class: #{definition.class}"
