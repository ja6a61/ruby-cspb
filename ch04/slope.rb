#
# slope.rb
#
# Sunday 07 December 2014, Meriton World Tower, Sydney
#
# Prompt user for a pair of 2d graph points
#
# Inform user whether line that connects points is:
#
# horizontal, vertical and whether the slope is positive or negative.
#

puts "Please enter two points of a line."

print "x1: "
x_1 = gets.to_f
print "y1: "
y_1 = gets.to_f
print "x2: "
x_2 = gets.to_f
print "y2: "
y_2 = gets.to_f

slope_m = 0 
m_vert = false

if ((x_2-x_1) != 0)
     slope_m = (y_2 - y_1) / (x_2 - x_1)
else
    m_vert = true
end

case
when (m_vert == true)
    puts "Line is vertical."
when (slope_m == 0)
    puts "Line is horizontal."
when (slope_m > 0)
    puts "Line has a positive slope of: '#{slope_m}'"
else (slope_m < 0)
    puts "Line has a negative slope of: '#{slope_m}'" end
