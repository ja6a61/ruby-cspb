#!/usr/bin/env ruby
# ex03-c.rb
# 2014-12-08 -- Ssydney
#
# Third atttempt at this problem.
#
# The method used to sort the arrays in ex03-b.rb seems overly complex.
# Trying to simplify here.
#
# Split an array in two. Each element of one array is smaller
# than the equivalent element of the other array.
#

original_array = [6, 45, 23, 65, 17, 48, 97, 32, 18, 9, 88, 12, 45, 32, 4, 32, 32, 8, 5, 999, 1, 0, 45, 37, 8, 90, -6, -120, 1000, -4, 27]
#original_array = [6, 45, 23, 65, 17, 48, 97, 32, 18, 9, 88, 12, 45, 32, 4, 32, 32, 8, 5, 999, 1, 0, 45, 37, 8, 90, -6, -120, 1000, -4, 27, -99, -98]
arr1 = Array.new(original_array.size/2)
arr2 = Array.new(original_array.size - arr1.size) 

i = 0

while (i < arr1.size)
    arr1[i] = original_array[i]
    i += 1
end

j = 0
while (j < arr2.size)
    arr2[j] = original_array[i]
    i += 1
    j += 1
end

puts "After splitting original_array, before sorting:"
puts "original_array:"
puts original_array.to_s
puts "arr1:"
puts arr1.to_s
puts "arr2:"
puts arr2.to_s

i = 0

while ((i < arr1.size) and (i < arr2.size))
    if arr1[i] > arr2[i]
	temp = arr2[i]
	arr2[i] = arr1[i]
	arr1[i] = temp
    end
    i += 1
end

puts "After sorting:"
puts arr1.to_s + " < " + arr2.to_s
