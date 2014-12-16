# ex02.rb
#
# Monday 15 Dec 2014
#
# Given two Cartesian points (x 1 , y 1 ) and (x 2 , y 2 ), the slope of 
# the line segment connecting them is given by the formula 
# (y 2 - y 1 )/(x 2 - x 1 )
# Write a class that represents a Cartesian point. Define a method 
# find_slope that takes in a Cartesian point object and finds the slope 
# between the two points. 
#
# Test your class with the following:
# a. (0,0) (3,4)
# b. (2,3) (6,5)
# c. (2,2) (2,7)

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
  def get_x
    return @x
  end
  def set_x(x)
    @x = x
  end
  def get_y
    return @y
  end
  def set_y(y)
    @y = y
  end
  def set_xy(x, y)
    @x = x
    @y = y
  end
  def display
    puts "x: " + @x.to_s
    puts "y: " + @y.to_s
  end

end

def slope(point_a, point_b)
  puts "slope()"
#  puts "point_a: " + point_a.to_s
#  puts point_a.display
#  puts "point_b: " + point_b.to_s
#  puts point_b.display
  delta_y = point_b.get_y.to_f - point_a.get_y.to_f
  puts "delta_y: " + delta_y.to_s
  delta_x = point_b.get_x - point_a.get_x
  puts "delta_x: " + delta_x.to_s
  slope = delta_y / delta_x
  return slope
end

# main loop starts here

p1 = Point.new(0, 0)
p2 = Point.new(3, 4)

#puts "p1: " + p1.to_s
#p1.display

#puts "p2: " + p2.to_s
#p2.display

s = slope(p1, p2)
puts "slope s: " + s.to_s

p1.set_xy(2, 3)
p2.set_xy(6, 5)
s = slope(p1, p2)
puts "slope s: " + s.to_s


p1.set_xy(2, 2)
p2.set_xy(2, 7)
s = slope(p1, p2)
puts "slope s: " + s.to_s

p1.set_xy(2, 3)
p2.set_xy(5, 4)
s = slope(p1, p2)
puts "slope s: " + s.to_s
