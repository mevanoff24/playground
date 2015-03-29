# Next Palindrome in RubyTry Me!
# Write a function that takes an integer and returns the smallest number 
# that is greater than the given number which is a palendrome.

# For example, if the input was 111 the next palindromic number would be 121.

def next_palindrome(integer)
	integer = integer.to_s
	mid_index = (integer.length / 2)
	if integer.reverse == integer
		integer[mid_index] + 1
	end
	integer
end

p next_palindrome(565)