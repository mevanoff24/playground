

# Pseudo Code

# count(array, array.length)
# if n == 1 return 0
# else
# 	B, x = sort_and_count (first half of array, n/2)
# 	C, y = sort_and_count (second half of array, n/2)
# 	D, z = sort_and_count (split inversions of array, n)
	# split inversion only count when comes from array y second half, remaining count in first array
# 	then x + y + z

def sort_and_count(array)
	if array.length <= 1
		return [0 ,array]
	end
		middle_index = array.length/2
		left = sort_and_count(array[0..middle_index-1])
		right = sort_and_count(array[middle_index..array.length])
		merge_results = merge_and_count(left[1], right[1])

		return [left[0] + right[0] + merge_results[0], merge_results[1]]
end

def merge_and_count(left, right)
	inversions = 0
	output = []
	i,j = 0,0

	while i < left.length && j < right.length
		if left[i] < right[j]
			output << left[i]
			i +=1
		else
			output << right[j]
			j +=1
			inversions += left.length - i
		end
	end

	if i < left.length
		output += left[i..(left.length - 1)]
	else
		output += right[j..(right.length - 1)]
	end
	return [inversions, output]
end

result = sort_and_count [1,3,5,2,4,6] 
puts "number of inverstions: " + result[0].to_s
puts "ordered array: " + result[1].to_s





