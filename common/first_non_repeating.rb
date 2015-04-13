
def first_non_repeated_character(string)
	string1 = string.split("")
	string2 = string.split("")
	string1.each do |let1|
		counter = 0
		string2.each do |let2|
			if let2 == let1
				counter += 1
			end
		end
		if counter == 1
			return let1
			break
		end
	end
end

p first_non_repeated_character('dont doddle in the forest') == 'l'