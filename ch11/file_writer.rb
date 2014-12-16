# file_writer.rb
# wed 17 dec 2014
#
# write class example
#
# The class presented encapsulates writing a file.
#
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
