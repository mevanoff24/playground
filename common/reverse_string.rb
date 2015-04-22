

def reverse_string(string)
	word = ''
	chars = string.chars
	chars.length.times { word << chars.pop }
	word	
end

p reverse_string("Hello World")

def reverse_mult_string(string)
	string = string.split(' ')
	(string.length/2).times do |i|
		string[i], string[-1-i] = string[-1-i], string[i]
	end
	string
end
 p reverse_mult_string("Hello World")