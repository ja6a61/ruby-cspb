#!/usr/bin/env ruby
# ex02.rb
# 2014-12-11
# Exercise 8-1. 
#
#Youareprogrammingpartofthesign-upprocedureforanonlinecomputergame.
#Write a program that prompts the user to enter his or her user ID and
#password and enforces the following restrictions:
# a. User IDs and passwords must be at least seven characters in length.
#
# b. Passwords must contain at least one of each of the following: uppercase 
#    character, lowercase character, number, and # symbol. 
# Hint: use the documentation for the string class.

# I need an array containing the alphabet to test characters
alphabet = "abcdefghijklmnopqrstuvwxyz"

for ch in (0..alphabet.length - 1)
    puts alphabet[ch] 
    puts alphabet[ch].upcase
end

print("Please enter a password: ")
pass_word = gets
puts("You entered: " + pass_word)

if (pass_word.length < 7)
    puts("Bad password, it's gotta be at least 7 characters long...")
end

have_lower = false
have_upper = false

for i in (0..pass_word.length - 1) 
    for ch in (0..alphabet.length)
	if ((pass_word[i].downcase <=> alphabet[ch]) == 0)
	    puts (pass_word[i] + " is alpha char.")
	    for test_lower in (0..alphabet.length)
		if ((pass_word[i] <=> alphabet[test_lower]) == 0)
		    have_lower = true
		    puts (pass_word[i] + " is lower-case.")
		    break
		elsif ((pass_word[i] <=> alphabet[test_lower].upcase) == 0)
		    have_upper = true
		    puts (pass_word[i] + " is upper-case.")
		    break
		 end
             end
	    break
	end
    end
end

