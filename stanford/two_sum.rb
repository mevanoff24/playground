
def two_sum(array, target_sum)
 result = {}
 hash = Hash[array.map {|i| [i,i]}]
 for number in array
 	result[number] = target_sum - number if hash[target_sum - number] # && !result[target_sum-number]
 end
 result
end

p two_sum([3,6,1,9,8,3], 17)