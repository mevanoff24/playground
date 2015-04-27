
def reverse_string(string)
	(string.length/2).times do |i|
		string[i], string[-1-i] = string[-1-i], string[i]
	end
	string
end

p reverse_string("hello world")