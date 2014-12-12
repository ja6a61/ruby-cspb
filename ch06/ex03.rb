#!/usr/bin/env ruby
# ex03.rb
# 2013-12-26
# Split an array in two. Each element of one array is smaller
# than the equivalent element of the other array.
#

original_array = [6, 45, 23, 65, 17, 48, 97, 32, 18, 9, 88]
arr1 = Array.new(original_array.size/2)
arr2 = Array.new(original_array.size-arr1.size) 

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
puts original_array
puts "arr1:"
puts arr1
puts "arr2:"
puts arr2

i = 0
while (i < arr1.size)
    if arr2[i] < arr1[i]
	temp = arr1[i]
	arr1[i] = arr2[i]
	arr2[i] = temp
    end
    i += 1
end

puts "After sorting:"
puts "arr1:"
puts arr1
puts "<"
puts "arr2:"
puts arr2

