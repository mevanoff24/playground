
def merge_and_count(array)
	if array.length <= 1
		return [0, array]
	end
	middle_index = array.length/2
	left = merge_and_count(array[0..middle_index-1])
	right = merge_and_count(array[middle_index..array.length])
	merge(left[1], right[1])
end

def merge(left, right)
	output = []
	inversions = 0
	left_index, right_index = 0,0
	while left.length > left_index && right.length > right_index
		if left[left_index] < right[right_index]
			output << left[left_index]
			left_index += 1
		else
			output << right[right_index]
			right_index += 1
			inversions += left.length - left_index
		end 
	end
	if left_index < left.length
		output += left[left_index..left.length]
	else
		output += right[right_index..right.length]
	end
	return [inversions, output]
end
p merge_and_count([2,5,2,5,7,2,8,5,9,6,3,2,4,6,7])