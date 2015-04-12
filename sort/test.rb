
def merge_sort(array)
	if array.length <= 1
		return [0, array]
	end
		middle_index = array.length/2
		left = merge_sort(array[0..middle_index-1])
		right = merge_sort(array[middle_index..array.length])
		merge(left[1], right[1])
end

def merge(left, right)
	output = []
	inversions = 0
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
		output += left[left_index..left.length]
	else
		output += right[right_index..right.length]
	end
	return [inversions, output]
end

p merge_sort([2,4,1,9,5,3,7,2,9,2])
