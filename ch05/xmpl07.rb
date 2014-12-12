# xmpl7.rb
# program to find prime numbers
#

# Initialise our counter
i = 1

# i: [0, 100]
while (i <= 10000)
    # Initialise prime flag
    prime_flag = true
    j = 2
    # Test divisibility of i from [0, i/2]
    while (j <= i/2)
	 puts " i ==> " + i.to_s + " j ==> " + j.to_s
	if (i % j == 0)
	    prime_flag = false
	    puts j.to_s + " is a factor of " + i.to_s
	    puts i.to_s + " is not prime."
	    break
	end
	j = j + 1
    end
    # We found a prime!
    if prime_flag
	puts "Prime ==> " + i.to_s
    end
    # Increment the counter
    i += 1
end
