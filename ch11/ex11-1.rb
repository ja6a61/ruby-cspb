# ex11-1.rb
# wed 17 dec 2014
#
# The game of Go is often played online. Many users save their game data for 
# later analysis. The game is played by two players who take turns placing 
# stones (one player using black stones and the other using white stones) on X
# the intersections of a 19 × 19 board. Create a program to enter each move of 
# a game and save that information to a file.
#
require_relative "file_writer.rb"

MAX_ROWS = 19
MAX_COLS = 19
WHITE = "W"
BLACK = "B"

class Board
  MAX_ROWS = 19
  MAX_COLS = 19
  WHITE = "W"
  BLACK = "B"
  board = ""
  def initialize
    @board = Array.new(MAX_ROWS) {Array.new(MAX_COLS)}
  end

  def display
    puts @board.to_s
  end

  def store (row, col, colour)
    # validate input
    if row >= 0 and row < MAX_ROWS
      if col >= 0 and col < MAX_COLS
        if colour.upcase == "B" or colour.upcase == "W"
          @board[row][col] = colour
          return true
        else
          return false
        end
      end
    end
  end
end

def get_row
  input_good = false
  row_input = ""

  while input_good == false
    print "Enter row (1-19): "
    row_input = gets.to_i
    # validate int between 1 and 19
    if row_input >= 1 and row_input <= 19
      row_input -= 1
      input_good = true
    else
      puts "Row must be between 1 and 19. Try again."
    end
  end
  return row_input
end

def get_col
  input_good = false
  col_input = ""

  while input_good == false
    print "Enter column (1-19): "
    col_input = gets.to_i
    # validate int between 1 and 19
    if col_input >= 1 and col_input <= 19
      col_input -= 1
      input_good = true
      return col_input
    else
      puts "Column must be between 1 and 19. Try again."
    end
  end
end

def get_colour
  input_good = false
  colour_input = ""

  while input_good == false
    print "Enter colour (B/W): "
    colour_input = gets
    colour_input.chomp!
    # validate input either 'B' or 'W'
    if colour_input.upcase == "B" or colour_input.upcase == "W"
      input_good = true
      colour_input.upcase!
      return colour_input
    else
      puts "Colour must be either 'B' or 'W'."
    end
  end
  return colour_input
end

board = Array.new(MAX_ROWS) {Array.new(MAX_COLS)}
#puts board.to_s

my_board = Board.new()
puts "my_board:"
my_board.display

# Write code to ask users for game move data (input). 
# Place moves in to the array.
# Save the array representing the state of the board to a file.
#

continue = true
decision = ""
while continue == true
  r_ip = get_col
  c_ip = get_row
  clr_ip = get_colour
  my_board.store(r_ip, c_ip, clr_ip)
  while decision != "Y" and decision != "N"
    print "Enter another move? (y/n): "
    decision = gets.chomp.upcase
    if decision == "N"
      continue = false
    end
  end
  decision = ""
end

#puts "row_input: " + row_input.to_s
#puts "col_input: " + col_input.to_s
#puts "colour_input: " + colour_input
#puts "board[#{row_input}][#{col_input}]: " + board[row_input][col_input]
my_board.display


