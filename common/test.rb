
def word_cloud(string)
	puncuation = %w(. , " ( ) ! ? - )
	puncuation.each do |punc|
		string = string.downcase.gsub(punc, "")
	end
	occurances = Hash.new(0)
	string = string.split(' ')
	string.each do |word|
		occurances[word] += 1
	end
	occurances
end

p word_cloud('After beating the eggs, Dana read the next step Add milk and eggs, then add flour and sugar.')