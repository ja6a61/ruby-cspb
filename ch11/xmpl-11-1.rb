# xmpl 11-1
#
myfile = File.open("foo.txt", "r")
whole_file = ""

while (input_line = myfile.gets)
  whole_file += input_line
end

puts "Contents of input file:"
puts whole_file
myfile.close


