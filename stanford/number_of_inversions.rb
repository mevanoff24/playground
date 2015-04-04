

# Pseudo Code

# count(array, array.length)
# if n == 1 return 0 and array
# else
# 	B, x = sort_and_count (first half of array, n/2)
# 	C, y = sort_and_count (second half of array, n/2)
# 	D, z = sort_and_count (split inversions of array, n)
	# split inversion only count when comes from array y second half, remaining count in first array
# 	then x + y + z

def sort_and_count(array)
	if array.length <= 1
		return [0 ,array]
	else
		middle_index = array.length/2
		left = sort_and_count(array[0..middle_index-1])
		right = sort_and_count(array[middle_index..array.length])
		p left[1]
		p right[1]
		merge_results = merge_and_count(left[1], right[1])
	end
end

def merge_and_count(left, right)
	inversions = 0
	output = []
	left_index,right_index = 0,0

	while left_index < left.length && right_index < right.length
		if left[left_index] < right[right_index]
			output << left[left_index]
			left_index +=1
		else
			output << right[right_index]
			right_index +=1
			inversions += left.length - left_index
		end
	end

	if left_index < left.length
		output += left[left_index..(left.length)]
	else
		output += right[right_index..(right.length)]
	end
	return [inversions, output]
end

result = sort_and_count [1,3,5,2,4,6] 
puts "number of inverstions: " + result[0].to_s
puts "ordered array: " + result[1].to_s





