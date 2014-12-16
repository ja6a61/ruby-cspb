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

board = Array.new(MAX_ROWS) {Array.new(MAX_COLS)}

puts board.to_s

board[5][5] = WHITE
board [10][2] = BLACK
puts board.to_s


