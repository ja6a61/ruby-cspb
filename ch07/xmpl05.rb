#!/usr/bin/ruby
#
# xmpl05.rb
#
NUM_STUDENTS = 35
MAX_GRADE = 100
arr = Array.new(NUM_STUDENTS)
value_to_find = 8
index = 0
found = false
     
# Randomly put some student grades into arr
for j in 0..NUM_STUDENTS - 1
    arr[j] = rand(MAX_GRADE + 1)
end
    
puts "Input List:"
puts arr.to_s
    
# Loop over the list until it ends, or we have found our value
while ((index < NUM_STUDENTS) && (not found))
    # We found it :)
    if (arr[index] == value_to_find) 
        puts "Found #{value_to_find} at position #{index} of the list."
        found = true
    end
        index = index + 1
end
     
# If we haven't found the value at this point, it doesn't 
# in our list
if (not found)
    puts "There is no " + value_to_find.to_s + " in the list."
end

