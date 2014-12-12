#!/usr/bin/env ruby
# ex01.rb
# 2013-12-30
# Exercise 7-1. Code for radix sort
# Radix sort, as presented, works for integers. Modify the algorithm in
# Example 7-4 to sort English names.
#

# Define some useful constants here
NUM_WORDS = 21
WORD_LENGTH = 10

words = Array.new(NUM_WORDS)
word = Array.new(WORD_LENGTH)

# Create an array containing all the letters of the alphabet
al = Array('A'..'Z')

# Create an array of random 'words'
for i in 0..NUM_WORDS - 1
    srand
    # Create a random 'word'
    for l in 0..rand(2...WORD_LENGTH)
        word[l] = al[rand(al.length)]
    end
    words[i] = word.join.to_s
    # Clear word
    for i in 0..WORD_LENGTH - 1
        word[i] = ""
    end
end

# Output randomly generated array
puts "Input array:"
#puts words.to_s
puts words

# Count the number of comparisons 
num_comparisons = 0

# Radix sort code starts here:
# Find the maximum word length in the generated array
max_length = 0
for i in 0..words.length - 1
    if words[i].length > max_length
        max_length = words[i].length
    end
end
puts "Max length ==> " + max_length.to_s
     
# Now let's use a radix sort. Go through each letter and 
# add each element to an array corresponding to the letters
for i in 0..max_length - 1
      # Clear out and reset the bucket
      buckets = Hash.new()
      for j in 'A'..'Z'
          buckets[j.to_s] = Array.new
      end
     
      # Add each number to its respective letter bucket
      for j in 0..(NUM_WORDS - 1)
	      num_comparisons += 1
	      wrd = words[j]
          if (max_length - i) < words[j].length 
	      ltr = wrd[max_length - i - 1]
          else
              ltr = wrd[wrd.length - 1]
	  end
	      buckets[ltr].push(wrd)
      end
      # Flatten the buckets into a one dimensional array
      words = buckets.values.flatten
#      puts "After flattening, words: " + words.to_s
end
# Radix sort code ends here

puts "Radix Sorted array:"
#puts words.to_s
puts words
puts
puts "Radix Sort Number of Comparisons ==> " + num_comparisons.to_s
