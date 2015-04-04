

def count_and_merge(array)
	if array.length <= 1
		return [0, array]
	end
		middle_index = array.length/2
		left = count_and_merge(array[0..middle_index-1])
		right = count_and_merge(array[middle_index..array.length])
		merge_results = merge(left[1], right[1])
end

def merge(left,right)
	inversions = 0
	result = []
	left_index, right_index = 0,0

	while left_index < left.length && right_index < right.length
		if left[left_index] < right[right_index]
			result << left[left_index]
			left_index += 1
		else
			result << right[right_index]
			right_index += 1
			inversions += left.length - left_index
		end
	end
	if left_index < left.length
		result += left[left_index..(left.length)]
	else
		result += right[right_index..(right.length)]
	end
		return [inversions, result]
end

p count_and_merge([1,3,5,2,4,6])
