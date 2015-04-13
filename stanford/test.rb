
def two_sums(array, target_sum)
	result = []
	hash = Hash[array.map{|i| [i, i ]}]
	for number in array
		result << target_sum - number if hash[target_sum - number]
	end
	result
end

p two_sums([2,4,6,2,8,9],)