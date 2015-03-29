# String Tokenization in RubyTry Me!
# Write a function, tokenize_string(input_string, delimiter_list) 
# that returns a list of strings that are separated by the delimiters.

# For example: tokenize_string("How now, Mrs. Brown Cow") 
# returns ['How', 'now', 'Mrs', 'Brown', 'Cow']

def tokenize_string(input_string, delimiter_list) 
	input_string.sub(",", "").sub(".", "").split(delimiter_list)
end


p tokenize_string("How now, Mrs. Brown Cow", " ") 