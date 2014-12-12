#!/usr/bin/env ruby
# xmpl12.rb
# 2013-12-26
# Swap two array elements
#
arr = [5, 22, 29, 39, 19,51, 78, 96, 84]
puts "Array before sorting:"
puts arr
puts
i = 0
while (i < arr.size-1 and arr[i] < arr[i+1])
    i += 1
end
# puts i
temp = arr[i]
arr[i] = arr[i+1]
arr[i+1] = temp
puts "Array after sorting:"
puts arr

