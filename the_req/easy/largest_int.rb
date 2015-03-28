# Find the largest integer in RubyTry Me!
# Write a program to find the largest integer in an array of integers.

def largest_int(numbers)
	numbers.sort!
	numbers[-1]
end

p largest_int([1,9,3,5,3])