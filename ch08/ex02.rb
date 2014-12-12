#!/usr/bin/env ruby
# ex02.rb
# 2014-12-11
# Exercise 8-2. 
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

# Test a character to see if it's alphabetical
def isAlpha(char)
    alph = "abcdefghijklmnopqrstuvwxyz"
    for ch in (0..alph.length - 1)
	if ((char.downcase <=> alph[ch]) == 0)
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
is_alpha = false

is_alpha = isAlpha("A")
puts ("is_alpha: " + is_alpha.to_s)
is_alpha = isAlpha("1")
puts ("is_alpha: " + is_alpha.to_s)
is_upper = false
is_upper = isUpper("A")
puts ("is_upper: " + is_upper.to_s)
is_upper = isUpper("%")
puts ("is_upper: " + is_upper.to_s)
puts("isLower(\"a\"): " + isLower("a").to_s)
puts("isLower(\"A\"): " + isLower("A").to_s)


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
# Create functions: isAlpha, isUpper, isLower, isSpecialChar
# return true or false
#
