#!/usr/bin/env ruby
# ex05-a.rb
# 2013-12-26
# Calculate values for a function over a given range.
#
#f(x) = (x^4 + 17 x X^3 - 416 x X^2 - 612 x X + 2500) / 500
# Calculate and store 100,000 values for f(x) between x=-50 and x=50.
#

delta = 100.0 / 100000
puts delta
puts
beta = 0.01
# An array to store the results of f(x) calculations.
result = Array.new(100000)
# result array index
i = 0
num_zero = 0
for x in (-50.0..50.0).step(delta)
    result[i] = (x**4+17*x**3-416*x**2-612*x+2500)/500.0
    if result[i] > (0 - beta) and result[i] < (0 + beta)
	puts "f(x) = #{result[i]}, x = #{x.round(3)}"
	num_zero += 1
    end
    i += 1
    #puts x.round(3)
end
puts "Number of zero results: #{num_zero}"

