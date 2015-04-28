
def word_cloud(pharagraph)
	puncuation = %w(. , " ( ) ! ? - )
	puncuation.each do |punc|
		pharagraph = pharagraph.gsub(punc, "")
	end
	occurances = Hash.new(0)
	pharagraph.downcase.split(" ").each do |word|
		occurances[word] += 1
	end
	occurances
end

p word_cloud("Hello, hello. My name is Amelia.")
