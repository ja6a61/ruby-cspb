#
# compare.rb
#
# Sunday 07 December 2014, Meriton World Tower, Sydney
#
# Prompt user for integer between 5 and 10 inclusive
#
# Inform user whether input is within set limits 
#

print "Please enter an integer between 5 and 10 inclusive: "

number = gets.to_i

case 
when (number < 5)
    puts "Number '#{number}' is below the requested range."
when (number > 10)
    puts "Number '#{number}' is above the requested range."
else
    puts "Number '#{number}' is within the requested range."
end

