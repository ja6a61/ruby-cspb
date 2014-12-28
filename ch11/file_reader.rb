# file_reader.rb
# sat 27 dec 2014
#
# The class to encapsulate reading a file.
#
class FileReader

  def initialize(file_name)
    @file = File.open(file_name, "r")
  end

  def read_line
    # Hopefully this method returns the last line read
   @file.gets
  end

  def close
    @file.close
  end
end
