#!/usr/bin/env ruby
# ex02.rb
# 2014-12-11
# Exercise 8-2. 
#
# You are programming part of the sign-up procedure for an online computer game.
# Write a program that prompts the user to enter their user ID and password and 
# enforces the following restrictions:
#
# a. User IDs and passwords must be at least seven characters in length.
#
# b. Passwords must contain at least one of each of the following: uppercase 
#    character, lowercase character, number, and # symbol. 
# Hint: use the documentation for the string class.

# I need an array containing the alphabet to test characters
# alphabet = "abcdefghijklmnopqrstuvwxyz"

# Test a character to see if it's alphabetical
def isAlpha(char)
    alph = "abcdefghijklmnopqrstuvwxyz"
    for ch in (0..alph.length - 1)
	if ((char.to_s.downcase <=> alph[ch]) == 0)
	    return true
	end
    end
    return false
end

# Test a character for being uppercase
def isUpper(char)
    alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    if isAlpha(char)
	if (char <=> char.upcase) == 0
	    return true
	end
    end
    return false
end

# Test a character for being lowercase
def isLower(char)
    alph = "abcdefghijklmnopqrstuvwxyz"
    if isAlpha(char)
	if (char <=> char.downcase) == 0
	    return true
	end
    end
    return false
end

# Test a character for being a number
def isNum(char)
    nums = "0123456789"
    for n in (0..nums.length - 1)
	if (char.to_s <=> nums[n]) == 0
	    return true
	end
    end
    return false
end

print("Please enter a password: ")
pass_word = gets
puts("You entered: " + pass_word)
#puts(pass_word + " length: " + pass_word.length.to_s)
# Remove the carriage return from the string
pass_word.chomp!
#puts(pass_word + ".chomp! length: " + pass_word.length.to_s)

have_length = false
have_lower = false
have_upper = false
have_num = false
have_hash = false
good_password = false

# Test for correct password length
if (pass_word.length >= 7)
    have_length = true
end
if (have_length == true)
# Loop for checking password correctness
for ch in (0..pass_word.length - 1)
    if have_upper == false
	if (isUpper(pass_word[ch]) == true)
	    have_upper = true
	end
    end
    if have_lower == false
	if (isLower(pass_word[ch]) == true)
	    have_lower = true
	end
    end
    if have_hash == false
	if (pass_word[ch] <=> "#") == 0
	    have_hash = true
	end
    end
    if have_num == false
	if (isNum(pass_word[ch]) == true)
	    have_num = true
	end
    end
    if have_lower and have_upper and have_hash and have_num
	good_password = true
	break
    end
end
puts("have_upper: " + have_upper.to_s)
puts("have_lower: " + have_lower.to_s)
puts("have_hash: " + have_hash.to_s)
puts("have_num: " + have_num.to_s)
end
puts("have_length: " + have_length.to_s)
puts("good_password: " + good_password.to_s)

