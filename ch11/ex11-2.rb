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
#puts "definitions.to_s: " + definitions.to_s

defs_file = FileReader.new(filename)
#line = defs_file.read_line
#puts "line: " + line

#puts "line.split(':'):"
#puts line.split(':')

# below creates an array [word, definition text]
#definition = line.split(':')

#puts "definition:"
#puts definition
#puts "definition.class: #{definition.class}"

definitions = get_defs(defs_file)
#puts "definitions array: " + definitions.to_s
definitions.each do |line|
  definition = line.split(':')
  puts "definition[0]: " + definition[0]
  puts "definition[1]: " + definition[1]
end

# create a set of indexes to definitions in a random order
rand_index = (0..definitions.size - 1).to_a.shuffle.take(definitions.size)

puts "rand_index: #{rand_index}"

rand_index.each do |word|
  current_word = definitions[word].split(':')
  puts "Whats word is this:"
  puts current_word[1]
  puts "correct answer: #{current_word[0]}"
end

