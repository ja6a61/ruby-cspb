# xmpl-11-3.rb
# tue 16 dec 2014
#
# File read/write example
#
# The class presented encapsulates reading and displaying a file.
#
class FileReader

  def initialize(file_name)
    @file = File.open(file_name, "r")
    @whole_file = ""
  end

  def read_file
#    puts
#    puts "FileReader.read_file()"

    # whole_file = ""
    while (input_line = @file.gets)
      @whole_file += input_line
    end
    return @whole_file
  end

  def display
#    puts
#    puts "FileReader.display()"
#    puts "Contents of @whole_file:"
    puts read_file
  end

  def close
    @file.close
  end
end

class FileWriter

  def initialize(file_name)
    @file = File.open(file_name, "w")
  end

  def write_line(output_line)
   @file.puts(output_line)
  end

  def close
    @file.close
  end
end

fr = FileReader.new("input.txt")
fw = FileWriter.new("output.txt")

input = fr.read_file
#puts "input: " 
puts "fr.display:"
fr.display

fw.write_line(input)

fw.close
fr.close

fr = FileReader.new("xmpl-11-3.rb")
fw = FileWriter.new("out-2.txt")

ip = fr.read_file
puts "fr.display:"
fr.display

fw.write_line(ip)

fw.close
fr.close



