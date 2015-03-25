

def reverse_string(string)
	word = ''
	chars = string.chars
	chars.length.times { word << chars.pop }
	word	
end

p reverse_string("Hello World")