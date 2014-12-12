# ex02b.rb
# 2013-12-25
# sort some user entered numbers
#
puts "please enter a number between 5 and 10."
num = gets.to_i
case
when(num < 5)
    puts "'#{num}' is below range."
when (num <= 10)
    puts "'#{num}' is in range"
else
    puts "'#{num}' is above range."
end

