

def reverse_string(string)
	word = ''
	char = string.chars
	char.length.times {word << char.pop}
	word
end

p reverse_string("Hello World") == "dlroW olleH"

def reverse_mult_string(string)
	string = string.split(' ')
	(string.length/2).times do |i|
		string[i], string[-1-i] = string[-1-i], string[i]
	end
	string.join(' ')
end
 p reverse_mult_string("Hello World") == "World Hello"