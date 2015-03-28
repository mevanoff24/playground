# Reverse a String in RubyTry Me!
# Write an iterative function to reverse a string. 
# Do the same thing as a recursive function.

def reverse_string(string)
	reversed_string = ''
	characters = string.chars.to_a
	characters.length.times { reversed_string << characters.pop}
	reversed_string
end

p reverse_string("hello world")