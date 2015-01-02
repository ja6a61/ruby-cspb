# ex11-4.rb
# thu 01 jan 2015
#
# Write a program that reads the content of a file and outputs it to the screen.
#

# class for reading files
require_relative "file_reader.rb"

filename = "input.txt"

in_file = FileReader.new(filename)

until (line = in_file.read_line) == nil
  puts line
end

in_file.close
