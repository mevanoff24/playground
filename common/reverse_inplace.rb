
def revers_string_in_place(string)
	(string.length/2).times do |index|
		string[index], string[-1-index] = string[-1-index], string[index]		
	end
	string
end


p revers_string_in_place("algorithms")