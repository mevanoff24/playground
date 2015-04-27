# Sum integers in a file in RubyTry Me!
# Write a function that sums up integers from a text file that looks like the following:

# 1
# 3
# 27
# 2
# 2123


def sum_numbers(numbers)
	sum = 0
	for number in numbers
		sum += number
	end
	sum
end

p sum_numbers([1,3,27,2,2123])