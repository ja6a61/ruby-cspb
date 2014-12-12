#!/usr/bin/env ruby
# xmpl02.rb
# 2013-12-27
# Example 7-2. Code for insertion sort
#

require "benchmark"

# Declare useful constants
NUM_STUDENTS = 10000
MAX_GRADE = 100
# Count the number of comparisons used for each sort method
num_compare_insert = 0
num_compare_select = 0
arr = Array.new(NUM_STUDENTS) 

# Randomly populate arr
for i in (0..NUM_STUDENTS - 1) 
    arr[i] = rand(MAX_GRADE + 1) 
end
arr_i = arr
arr_s = arr

# Output randomly generated array
#puts "Input array:"
#puts arr.to_s
#puts

# Time the loop duration
#start = Time.now
#puts(Benchmark.measure(label = "Insertion Sort:") {
Benchmark.bm(12) do |x|
    x.report("Insertion:") {
# Now let's use an insertion sort
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
}
#finish = Time.now
#duration_i = finish - start
#duration_i = finish.nsec - start.nsec
# Now output the insert sorted array
#puts "Insert sorted array:"
#puts arr_i.to_s
#puts

# Selection sort
# Time the loop duration
#start = Time.now
#puts(Benchmark.measure {
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
}
end
#finish = Time.now
#duration_s = finish.nsec - start.nsec
# Now output the selection sorted array
#puts "Selection sorted array:"
#puts arr_s.to_s
puts

puts "Insert Sort Number of Comparisons ==> " + num_compare_insert.to_s
#puts "Insert Sort loop duration: #{duration_i}"
puts "Selection Sort Number of Comparisons ==> " + num_compare_select.to_s
#puts "Selection Sort loop duration: #{duration_s}"


