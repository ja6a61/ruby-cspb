#!/usr/bin/env ruby
#
# Code for binary search
#
NUM_STUDENTS = 200
MAX_GRADE = 100
arr = Array.new(NUM_STUDENTS)
# The value we are looking for
value_to_find = rand(MAX_GRADE + 1)
low = 0
high = NUM_STUDENTS - 1
middle = (low + high) / 2
found = false
num_comparisons = 0
     
# Randomly fill array with grades
for i in (0..NUM_STUDENTS - 1)
    arr[i] = rand(MAX_GRADE)
end

# Sort the list using Ruby's built-in sort
arr.sort!

print "Input List: "
puts arr.to_s
    
while ((low <= high) && (not found)) 
    num_comparisons += 1
     middle = (low + high) / 2
     # We found it :)
     if arr[middle] == value_to_find 
         puts "Found grade #{value_to_find}% at position #{middle}"
         puts "Found grade #{value_to_find}% at arr[#{middle}]"
	 val_offset = 1
	 puts "Searching backwards for duplicate values."
	 while ((middle - val_offset >= 0) and 
		(arr[middle - val_offset] == value_to_find))
		 print "Grade at arr[#{middle - val_offset}]: "
		 puts"#{arr[middle - val_offset]}"
		 val_offset += 1
	 end
	 print "Grade at arr[#{middle - val_offset}]: "
	 puts"#{arr[middle - val_offset]}"
	 val_offset = 1
	 puts "Searching forwards for duplicate values."
	 while ((middle + val_offset < NUM_STUDENTS) and 
		(arr[middle + val_offset] == value_to_find))
		 print "Grade at arr[#{middle + val_offset}]: "
		 puts"#{arr[middle + val_offset]}"
		 val_offset += 1
	 end
	 print "Grade at arr[#{middle + val_offset}]: "
	 puts"#{arr[middle + val_offset]}"

         found = true
     end
     
     # If the value should be lower than middle, 
     # search the lower half
     # otherwise, search the upper half
     if (arr[middle] < value_to_find)
        low = middle + 1
     else
         high = middle - 1
     end
end

if (not found)
    puts "There's no grade of #{value_to_find}% in the list."
end
puts "num_comparisons: #{num_comparisons}"
