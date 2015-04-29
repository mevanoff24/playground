
def mode(array)
	occurances = Hash.new(0)
	array.each do |number|
		occurances[number] +=1
	end
	return key if occurances.values.max
end

p mode([1,3,5,7,3,2])