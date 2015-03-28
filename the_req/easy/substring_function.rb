# Write a substring function in RubyTry Me!
# Write a string to find a substring in a given string. 
# Do this in O(n) or better

def create_substring(string, low, high)
	string[low..high]
end

p create_substring("hello world", 1, 5)