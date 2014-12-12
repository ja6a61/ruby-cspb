#!/usr/bin/env ruby
# ex05.rb
# 2014-12-10
#
# Exercise 7-5. 
#
# Generate a 100-element list containing integers in the range 0–10.
# Sort the list with selection sort and with radix sort.
#

require "benchmark"

# Define some useful constants here
LIST_LENGTH = 100000
MAX_INT_VAL = 11

list = Array.new(LIST_LENGTH)

# Fill array with random integers
srand
for i in (0..LIST_LENGTH)
    list[i] = rand(MAX_INT_VAL)
end

puts list.to_s

# Selection sort code starts here
# First we must find the smallest value element, then place it into the
# first position. We then next start looking for the next smallest
# element starting from the secon element. And so on. Cool hey!
#
min_found = false
min_val_index = 0
i = 0
Benchmark.bm(12) do |x|
x.report("Insertion Sort:") {
for i in (0..LIST_LENGTH) 
    min_val_index = i
    for j in (i..LIST_LENGTH)
	if (list[j] < list[min_val_index]) 
	    min_val_index = j
	    min_found = true
	end
    end
    if (min_found == true)
	temp = list[i]
	list[i] = list[min_val_index]
	list[min_val_index] = temp
    end
    min_found = false
end # Insertion Sort code
} # End Insertion Sort Benchmark
end # Overall Benchmark
puts "We looped #{i} times!"
#puts "Our sorted list:"
#puts list.to_s
