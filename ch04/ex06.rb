# ex06.rb
# 2013-12-25
# sort some user entered numbers
#
puts "please enter 3 numbers."
puts "enter first number:"
x = gets.to_i

puts "enter second number:"
y = gets.to_i

puts "enter third number:"
z = gets.to_i

puts "Number of numbers entered greater than zero:"

if (x > 0)
    if (y>0)
	if (z>0)
	    puts "3"
	else
	    puts "2"
	end
    elsif (z>0)
	puts "2"
    else
	puts "1"
    end
elsif (y>0)
    if (z>0)
	puts "2"
    else
	puts "1"
    end
    elsif (z>0)
	puts "1"
    else
	puts "0"
    end



