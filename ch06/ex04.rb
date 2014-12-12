#!/usr/bin/env ruby
# ex04.rb
# 2013-12-26
# Determine the number of Red RGB values in a sample.
#

# For a pixel to be considered Red:
# a. The R value must be greater than 100.
# b. The G and B values must each be less than the R value divided by 4.

sample =
   [[[ 65, 67, 23], [234,176,  0], [143,  0,  0]],
    [[255, 30, 51], [156, 41, 38], [  3,243,176]],
    [[255,255,255], [  0,  0,  0], [133, 28, 13]],
    [[ 26, 43,255], [ 48,  2,  2], [ 57, 89,202]]]
puts "sample:"
puts sample.to_s

# Indexes for looping through sample values
i = 0
j = 0

# Index into RGB value array
R = 0
G = 1
B = 2

# Store the value of the Red value for further testing
rval = 0
while (i < sample.size)
    while (j < sample[i].size)
	# Check values of RGB element here. Is it red?
	if sample[i][j][R] > 100
	    rval = sample[i][j][R]/4
	    if (sample[i][j][G] < rval) and (sample[i][j][B] < rval) 
		puts "Pixel is Red"
		puts sample[i][j].to_s
	    end
	end
	j += 1
    end
    j = 0
    i += 1
end

