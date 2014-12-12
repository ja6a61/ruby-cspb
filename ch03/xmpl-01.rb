# xmpl-01.rb
# calculate the area of a rectangle given two of its sides.
# 2013-12-25
#

puts "This program calculates the area of a rectangle given"
puts "the length of two sides."
puts "Length of side 1: "
side_1_input = gets
puts "Length of side 2: "
side_2_input = gets
side_1 = side_1_input.to_i
side_2 = side_2_input.to_i
area = side_1 * side_2
puts "area = #{area}"

