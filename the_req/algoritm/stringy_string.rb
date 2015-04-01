# Find one string inside another in RubyTry Me!
# Write a function to implement strstr() 
# i.e. find the first occurrence of one string inside another string.

def strstr(string, substring)
	p string.match(substring)[0]
end


strstr("How much wood would a woodchuck chuck if a woodchuck could chuck wood?", "wood")