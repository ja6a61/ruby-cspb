#
# ex04-04.rb
# Sunday 07 December 2014
# Meriton World Tower, Sydney
#
# Conditionals and loops
#
# If user enters an even numner, print out 'Even'
#

print "Enter a number: "
number = gets.to_i

print "The number '#{number}' is "
if (number % 2 == 0)
    puts "Even!"
else
    puts "Odd!!"
end

