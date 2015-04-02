
def mode(array)
	counter = Hash.new(0)
	array.each do |number|
		counter[number] += 1
	end

	result = []

	counter.each do |key, value|
		if value == counter.values.max
			result << key
		end
	end
	result
end

p mode([1,2,3,3,4,6])