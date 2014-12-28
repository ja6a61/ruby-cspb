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

defs_file = FileReader.new(filename)

definitions = get_defs(defs_file)

# create a set of indexes to definitions in a random order
rand_index = (0..definitions.size - 1).to_a.shuffle.take(definitions.size)

rand_index.each do |word|
  current_word = definitions[word].split(':')
  puts "What word is this:"
  puts current_word[1]
  answer = gets.chomp
  if answer == current_word[0]
    puts "Correct! Well done you clever thing."
  else
    puts "No - that's not right. The correct answer is: #{current_word[0]}"
  end
  puts
end
defs_file.close
