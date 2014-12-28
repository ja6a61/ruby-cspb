# ex11-2.rb
# sat 27 dec 2014
#
# Write a program that quizzes the user on her or his vocabulary. Make the 
# program read a set of words and definitions from a file; display definitions 
# one at a time, in random order; and prompt for the appropriate word.
#
# write a reader class for reading files
require_relative "file_reader.rb"

# Read definitions into an array from file.
#
def get_defs(file)
  defs = Array.new
  until ((line = file.read_line) == nil)
    if line == "\n"
      next
    else
      line.chomp!
      defs.push(line) 
    end
  end
  return defs
end

filename = "definitions.txt"
definitions = Array.new
puts "definitions.to_s: " + definitions.to_s

defs_file = FileReader.new(filename)
line = defs_file.read_line

puts "line: " + line

puts "line.split(':'):"
puts line.split(':')

definition = line.split(':')

puts "definition:"
puts definition
puts "definition.class: #{definition.class}"

definitions = get_defs(defs_file)
puts "definitions array: " + definitions.to_s

