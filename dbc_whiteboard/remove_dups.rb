
def remove_dups(string)
	string.chars.uniq.join()
end

p remove_dups("google") == 'gole'

def better_remove_dups(string)
	word_array = []
	counter = 0
	while counter < string.length
		word_array << string[counter]
		counter +=1
	end

	char_freq = Hash.new(0)
	word_array.select! do |letter|
		char_freq[letter] += 1
		char_freq[letter] == 1
	end

	word_no_dups = ''
	word_array.each do |letter|
		word_no_dups += letter
	end
	word_no_dups
end

p better_remove_dups("google")