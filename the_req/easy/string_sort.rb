# Sort an array of strings by the length of the string in RubyTry Me!
# Most languages have a built in sort method that will sort an array of strings alphabetically. 
# Demonstrate how to sort an array of strings by the length of each string, shortest strings first.

def sort_string(strings)
	# strings.sort {|a,b| a.length <=> b.length}
	strings.sort_by(&:length)

end

p sort_string(["mom", "hi"])