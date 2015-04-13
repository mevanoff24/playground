
def remove_dups(string)
	arr = []
	counter = 0
	while counter < string.length
		arr << string[counter]
		counter+=1
	end

	hash = Hash.new(0)

	arr.select! do |letter|
		hash[letter] += 1
		hash[letter] == 1
	end

	string_no = ''

	arr.each do |letter|
		string_no += letter
	end
	string_no
end
p remove_dups("google")