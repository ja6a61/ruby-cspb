#!/usr/bin/env ruby
# xmpl04.rb
# 2013-12-28
# Example 7-4. Code for radix sort
#

require "benchmark"


# Declare useful constants
NUM_STUDENTS = 100000
# Max grade of 100%
MAX_GRADE = 100
# Count the number of comparisons used for each sort method
num_compare_radix = 0
num_compare_bubble = 0
num_compare_insert = 0
num_compare_select = 0
arr = Array.new(NUM_STUDENTS)
# Setup an array for radix sorting
arr_r = arr.dup

# Randomly put some grades into the array
for i in (0..NUM_STUDENTS - 1) 
    arr[i] = rand(MAX_GRADE + 1)
end

# Copy arr elements into the array *as strings*
for i in (0..NUM_STUDENTS - 1) 
    arr_r[i] = arr[i].to_s
end

# Output randomly generated array
puts "Input array:"
#puts arr.to_s
puts "Input array for radix sort:"
#puts arr_r.to_s

# Copy randomly filled array for each of the sort types
arr_b = arr.dup
arr_i = arr.dup
arr_s = arr.dup

# Radix sort code starts here:
# Output array and find the maximum number of digits in the
# generated array
#puts "Input array: "
max_length = 0
for i in 0..NUM_STUDENTS - 1
    #puts "arr_r[" + i.to_s + "] ==> " + arr_r[i]
    if arr_r[i].length > max_length
        max_length = arr_r[i].length
    end
end
puts "Max length ==> " + max_length.to_s
     
# Add 0 padding based on the max length. This simplifies the
# sorting algorithm
for i in 0..NUM_STUDENTS - 1
    arr_r[i] = arr_r[i].rjust(max_length, "0")
end
    
Benchmark.bm(12) do |x|
x.report("Radix:") {
# Now let's use a radix sort. Go through each digit and 
# add each element to an array corresponding to the digits
for i in 0..max_length - 1
      # Clear out and reset the bucket
      buckets = Hash.new()
      for j in 0..9
          buckets[j.to_s] = Array.new
      end
     
      # Add each number to its respective digit bucket
      for j in 0..NUM_STUDENTS - 1
	  num_compare_radix += 1
          num = arr_r[j]
          digit = num[max_length - 1 - i]
          buckets[digit].push(num)
      end
      # Flatten the buckets into a one dimensional array
      arr_r = buckets.values.flatten
end
# Radix sort code ends here
} # end Radix Benchmark


# Now let's use bubble sort. Swap pairs iteratively as we loop through the 
# array from the beginning of the array to the second-to-last value
# Time the loop duration
x.report("Bubble:") {
for i in (0..NUM_STUDENTS - 2)
    # From arr_b[i + 1] to the end of the array
    for j in ((i + 1)..NUM_STUDENTS - 1)
	num_compare_bubble += 1
	# If the first value is greater than the second value, swap them 
	if arr_b[i] > arr_b[j]
	    temp = arr_b[j]
	    arr_b[j] = arr_b[i]
	    arr_b[i] = temp
	end
    end
end
} # end Bubble Benchmark

# Now output the sorted array
#puts "Bubble Sorted array:"
#puts arr_b.to_s

# Now let's use an insertion sort
# Time the loop duration
x.report("Insertion:") {
# Insert lowest number in the array at the right place in the array
for i in (0..NUM_STUDENTS - 1)
    # Now start at current bottom and move toward arr[i]
    j=i
    done = false
    while ((j > 0) and (! done))
	num_compare_insert = num_compare_insert + 1
	# If the bottom value is lower than values above it, swap it until it 
	# lands in a place where it is not lower than the next item above it 
	if (arr_i[j] < arr_i[j - 1])
	    temp = arr_i[j - 1]
	    arr_i[j - 1] = arr_i[j]
	    arr_i[j] = temp
	else
	    done = true
	end
	j=j-1
    end
end
} # end Insertion Benchmark

# Now let's use a selection sort
# Time the loop duration
x.report("Selection:") {
# We first find the lowest number in the array and 
# then we move it to the beginning of the list
for i in (0..NUM_STUDENTS - 2)
    min_pos = i
    for j in (i + 1)..(NUM_STUDENTS - 1)
	num_compare_select = num_compare_select + 1 
	if (arr_s[j] < arr_s[min_pos])
	    min_pos = j 
	end
    end
    # Knowing the min, swap with current first element (at position i)
    temp = arr_s[i]
    arr_s[i] = arr_s[min_pos]
    arr_s[min_pos] = temp
end
} # end Selection Benchmark
end # Overall Benchmark
puts
#puts "Bubble Sorted array:"
#puts arr_b.to_s
puts "Radix Sorted array:"
#puts arr_r.to_s
puts
puts "Radix Sort Number of Comparisons ==> " + num_compare_radix.to_s
puts "Bubble Sort Number of Comparisons ==> " + num_compare_bubble.to_s
puts "Insert Sort Number of Comparisons ==> " + num_compare_insert.to_s
puts "Selection Sort Number of Comparisons ==> " + num_compare_select.to_s

