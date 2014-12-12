#!/usr/bin/env ruby
# words.rb
# 2013-12-31
# create an array full of randomly arranged letters as words
#

# Define some useful constants here
NUM_WORDS = 1000
WORD_LENGTH = 8

words = Array.new(NUM_WORDS)
word = Array.new(WORD_LENGTH)

# Create an array containing all the letters of the alphabet
al = Array('A'..'Z')

# Fill words[] 
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

puts words.to_s
