# Separate a list of integers in RubyTry Me!
# Write a function to take the following list and return 
# one list of odd numbers and one list of even numbers:

# ints = [1,21,53,84,50,66,7,38,9]


def odd_and_even(numbers)
	p even_array = numbers.select {|number| number % 2 == 0 }
	p odd_array = numbers.select {|number| number % 2 == 1 }
end

odd_and_even([1,21,53,84,50,66,7,38,9])